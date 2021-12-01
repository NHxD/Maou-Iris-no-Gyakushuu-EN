/*:
 * @plugindesc	Add line breaks as appropriate in the message window.
 *
 * @author		ash
 *
 * @require		Adv_System
 * @require		ASH_TextUtils
 */

(function() {
	"use strict"

{
	const pluginName = "ASH_AdvSystem"

	const paramMargin = PluginManager.parameters(pluginName)["margin"] || "　"
	const paramMaxLines = Number(PluginManager.parameters(pluginName)["maxLines"] || "4")
	const paramMaxCharsPerLine = Number(PluginManager.parameters(pluginName)["maxCharsPerLine"] || "55")

	const speakerRegExp = /^\[([^\]]*)](.*)/
	const speakerSpeechRegExp = /^\[([^\]]*)]\s*\「(.*)\」/
	const speakerThoughtRegExp = /^\[([^\]]*)]\s*\((.*)\)/
	const speakerThoughtJaRegExp = /^\[([^\]]*)]\s*\（(.*)\）/
	const speakerQuoteJaRegExp = /^\[([^\]]*)]\s*\『(.*)\』/

	// NOTE: sakuragame fucked up and sometimes mixed up delimiters.
	//const buggySpeakerRegExp = /^(?:[\[\「])([^\]\」]*)(?:[\]\」])(.*)/
	//const buggySpeakerSpeechRegExp = /^(?:[\[\「])([^\]\」]*)(?:[\]\」])\s*(?:[\[\「])([^\]\」]*)(?:[\]\」])/
	//const buggySpeakerThoughtRegExp = /^(?:[\[\「])([^\]\」]*)(?:[\]\」])\s*(?:[\(\（])([^\)\）]*)(?:[\)\）])/

	const verticalAlignThresholds =
	[
		[ 1, 1 ],
		[ 2, 1 ],
		[ 3, 1 ],
		[ 4, 0 ]
	]

	// format: [name/voice]body
	// (where "/voice" and body are optional.)
	const nameRegExp = /^\[([^\]\」]*)(?:[\]\」])(.*)/
	const nameAndVoiceRegExp = /^\[(.*)\/([^\]\」]+)?(?:[\]\」])(.*)/

	//=============================================================================
	// Game_Message
	//=============================================================================

	Game_Message.prototype.fileName = function()
	{
		return this._fileName
	}

	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_initialize = ADV_System.prototype.initialize

	ADV_System.prototype.initialize = function()
	{
		ADV_System_initialize.apply(this, arguments)

		this.MAX_LINES = paramMaxLines
		this.MARGIN = paramMargin

		this.SPEAKER_MARGIN = this.MARGIN
		this.FIRST_LINE_MARGIN_QUOTE = this.MARGIN
		this.FIRST_LINE_MARGIN = this.MARGIN + ' '
		this.LINE_MARGIN = this.MARGIN + this.MARGIN

		this.BS_L_DEFAULT = this.BS_L
		this.BS_C_DEFAULT = this.BS_C
		this.BS_R_DEFAULT = this.BS_R
		this.BS_OFFSET_SCALE = 1
	}

	Object.defineProperty(ADV_System.prototype, "BS_OFFSET_SCALE",
	{
	    get: function()
	    {
	        return this._BS_OFFSET_SCALE
	    },
	    set: function(value)
	    {
	        if (this._BS_OFFSET_SCALE !== value)
	        {
	            this._BS_OFFSET_SCALE = value

	            this.BS_L = this.BS_L_DEFAULT * this._BS_OFFSET_SCALE
	            //this.BS_C = this.BS_C_DEFAULT * this._BS_OFFSET_SCALE
	            this.BS_R = this.BS_R_DEFAULT * this._BS_OFFSET_SCALE
	        }
	    },
	    configurable: true
	})

	ADV_System.prototype.spaceChar = function()
	{
		return '　'
		//return (ConfigManager.langSelect === 1) ? ' ' : '　'
	}

	ADV_System.prototype.maxFullWidthCharsPerLine = function()
	{
		return this.maxDialogueCharsPerLine() + 4
	}

	ADV_System.prototype.maxDialogueCharsPerLine = function()
	{
		const windowWidth = SceneManager._scene._messageWindow.windowWidth()
		const largestGlyphWidth = SceneManager._scene._messageWindow.textWidth(this.spaceChar())
		const result = Math.max(4, Math.floor(windowWidth / largestGlyphWidth) - 4)

		// the issue is that in english, the margin is still the JA whitespace.
		if (ConfigManager.langSelect === 1)
		{
			return result * 2
		}
		else
		{
			return result
		}
	}

	const ADV_System_nameVoiceCut = ADV_System.prototype.nameVoiceCut

	// override to take care of sakuragame's fuck ups.
	ADV_System.prototype.nameVoiceCut = function(text, voiceMatch)
	{
		if (voiceMatch === undefined)
		{
			ADV_System_nameVoiceCut.apply(this, arguments)
			return 
		}

		return '[' + voiceMatch[1] + ']' + voiceMatch[3]
	}

	ADV_System.prototype.start = function(filename, reset)
	{
		$gameMessage._fileName = filename

		if (reset == undefined) reset = true
		if (reset) this.resetStack()

		const file_data = this.fileLoad(filename)
		const s_list = file_data.split(/\r\n|\n/)
		const new_stack = this.parse(s_list, true)

		new_stack.forEach(function(element)
			{
				this.mStack.push(element)
			}, this)

		if (reset)
		{
			this.mRun = true

			$gameMap._interpreter.setAdvRun(true)

			this.stackRun()
		}
	}

	ADV_System.prototype.parse = function(s_list, processText)
	{
		const new_stack = []

		for(let i = 0, len = s_list.length; i < len; ++i)
		{
			const text = this.chomp(s_list[i]).trim()

			if (!text)
			{
				continue
			}

			let add_stack

			if (text.charAt(0) === ';')
			{
				add_stack = this.parseComment(text)

				if (!add_stack || !add_stack.length)
				{
					continue
				}
			}
			else if (text.charAt(0) === '@')
			{
				add_stack = this.parseMacro(text)
			}
			else if (text.charAt(0) === '*')
			{
				add_stack = this.parseLabel(text)
			}
			else
			{
				add_stack = this.parseDialogueLine(text, processText)
			}

			add_stack.forEach(function(element)
				{
					new_stack.push(element)
				}, this)
		}

		return new_stack
	}

	ADV_System.prototype.parseComment = function(text)
	{
		return null
	}

	ADV_System.prototype.parseMacro = function(text)
	{
		return this.macroChange(this.chomp(text))
	}

	ADV_System.prototype.parseLabel = function(text)
	{
		return this.macroChange(this.chomp(text))
	}

	ADV_System.prototype.parseDialogueLine = function(text, processText)
	{
		const add_stack = []
		/*
		if (!(voiceMatch && voiceMatch.length > 2
			&& voiceMatch[2] && voiceMatch[2].length > 1)
			&& !(nameMatch && nameMatch.length > 1))
			*/
		// auto fix fuckups from sakura game.
		// [name」「text」 => [name]「text」
		// [name 「text」 => [name ]「text」
		{
			if (text.startsWith('['))
			{
				const index = text.indexOf(']')
				const m = (/([\[\(\「\『\〖\（])/g).exec(text.substr(1))

				if (m != null)
				{
					const mIndex = m.index || m.lastIndex

					if ((index === -1 || index > mIndex))
					{
						// add missing name end delimiter
						text = text.substring(0, mIndex + 1) + ']' + text.substring(mIndex + 1)
					}

					// 「text] => 「text」
					// (text」 => (text)

					// 「text => 「text」
					// (text => (text)
					// 『text => 『text』
					// 〖text => 〖text〗
					// （text => （text）
					// always substitute correct end delimiter based on the open delimiter.
					{
						// unused: <{〈《〘〚〔【
						// unused: >}〉》〙〛〕】
						const openDelimiters  = "[(「『〖（"
						const closeDelimiters = "])」』〗）"
						const openDelimiterIndex = openDelimiters.indexOf(m[1])

						if (openDelimiterIndex !== -1)
						{
							const closeDelimiter = closeDelimiters[openDelimiterIndex]
							const trimmedText = text.trimRight()
							const foundDelimiter = trimmedText.substr(-1)

							if (closeDelimiter !== foundDelimiter)
							{
								if (closeDelimiters.indexOf(foundDelimiter) !== -1)
								{
									// replace wrong end delimiter
									text = trimmedText.substr(0, trimmedText.length - 1) + closeDelimiter
								}
								else
								{
									// add missing end delimiter
									text += closeDelimiter
								}
							}
						}
/*
						const end = (/([\]\)\」\』\〗\）])/g).exec(text.substr(mIndex + 1))

						if (end == null)
						{
							text += "」"
						}
*/
					}
				}
			}
		}

		const voiceMatch = text.match(nameAndVoiceRegExp)
		const nameMatch = text.match(nameRegExp)
		let add_text = text

		if (voiceMatch && voiceMatch.length > 2
			&& voiceMatch[2] && voiceMatch[2].length > 1)
		{
			if (processText)
				this.preprocessMessage(voiceMatch[3], voiceMatch[1], voiceMatch[2])

			add_stack.push("@voice f=" + voiceMatch[2].trim())

			//add_text = this.nameVoiceCut(add_text, voiceMatch)
			add_text = '[' + voiceMatch[1].trim() + ']' + voiceMatch[3]
		}
		else if (nameMatch && nameMatch.length > 1)
		{
			if (processText)
				this.preprocessMessage(nameMatch[2], nameMatch[1], null)

			add_text = '[' + nameMatch[1].trim() + ']' + nameMatch[2]
		}
		else
		{
			if (processText)
				this.preprocessMessage(text, null, null)
		}

		if (processText)
		{
			add_text = this.viewMesAdjust(add_text)

			add_stack.push(add_text)
		}

		return add_stack
	}

	ADV_System.prototype.preprocessMessage = function(message, speaker, voiceClip)
	{
	}

	const ADV_System_viewMesAdjust = ADV_System.prototype.viewMesAdjust

	ADV_System.prototype.viewMesAdjust = function(text)
	{
		const state = { header: "", message: "", type: "" }

		state.headerMargin = this.SPEAKER_MARGIN
		state.speakerRegExp = speakerRegExp
		state.speakerSpeechRegExp = speakerSpeechRegExp
		state.speakerThoughtRegExp = speakerThoughtRegExp
		state.speakerThoughtJaRegExp = speakerThoughtJaRegExp
		state.speakerQuoteJaRegExp = speakerQuoteJaRegExp
		//state.buggySpeakerRegExp = buggySpeakerRegExp
		//state.buggySpeakerSpeechRegExp = buggySpeakerSpeechRegExp
		//state.buggySpeakerThoughtRegExp = buggySpeakerThoughtRegExp
		//state.macroRegExp = macroRegExp

		state.speakerMatch = text.match(state.speakerRegExp)
		//state.buggySpeakerMatch = text.match(state.buggySpeakerMatch)

		if (state.speakerMatch && state.speakerMatch.length > 0)
		{
			this.processMessageWithHeader(state, text)
		}
		/*else if (state.buggySpeakerMatch && state.buggySpeakerMatch.length > 0)
		{
			this.processMessageWithHeader(state, text)
		}*/
		else
		{
			this.processMessageWithoutHeader(state, text)
		}

		let maxCharsPerLine

		if (state.message.trimLeft().startsWith("\\fw:"))
		{
			state.message = state.message.trimLeft().substring("\\fw:".length)
			maxCharsPerLine = this.maxFullWidthCharsPerLine()
		}
		else
		{
			maxCharsPerLine = this.maxDialogueCharsPerLine()
		}

		state.message = TextUtils.convertEscapeCharacters(state.message, false)
		if (ConfigManager.langSelect === 1)
		{
			state.message = TextUtils.englify(state.message)
		}
		// TODO: 'localize' custom words (i.e., have one storage for each language)
		state.message = TextUtils.replace(state.message, ConfigManager.customWords)
		state.message = TextUtils.wrapText(state.message, maxCharsPerLine, 3)
		state.message = TextUtils.addMargin(state.message, (state.type === "quote") ? this.FIRST_LINE_MARGIN_QUOTE : this.FIRST_LINE_MARGIN, this.LINE_MARGIN, maxCharsPerLine)

		state.header = TextUtils.replace(state.header, ConfigManager.customWords)

		if (state.speakerMatch && state.speakerMatch.length > 0)
		{
			return state.header + '\n' + state.message
		}
		/*else if (state.buggySpeakerMatch && state.buggySpeakerMatch.length > 0)
		{
			return state.header + '\n' + state.message
		}*/
		else
		{
			state.message = TextUtils.verticalAlign(state.message, this.MAX_LINES, verticalAlignThresholds)

			return state.message
		}
	}

	ADV_System.prototype.processMessageWithHeader = function(state, text)
	{
		if (text.match(state.speakerSpeechRegExp))
		{
			this.quoteMessage(state, text, state.speakerSpeechRegExp, '\"', '\"')
			state.type = "speech"
		}
		else if (text.match(state.speakerThoughtRegExp))
		{
			this.quoteMessage(state, text, state.speakerThoughtRegExp, '(', ')')
			state.type = "thought"
		}
		else if (text.match(state.speakerThoughtJaRegExp))
		{
			this.quoteMessage(state, text, state.speakerThoughtJaRegExp, '(', ')')
			state.type = "thought"
		}
		else if (text.match(state.speakerQuoteJaRegExp))
		{
			this.quoteMessage(state, text, state.speakerQuoteJaRegExp, '『', '』')
			state.type = "quote"
		}
		/*else if (text.match(state.buggySpeakerSpeechRegExp))
		{
			state.message = text.replace(state.buggySpeakerSpeechRegExp, "\"$2\"")
				.replace(/\\n/, ' ')
				.trim()
			state.type = "speech"
		}
		else if (text.match(state.buggySpeakerThoughtRegExp))
		{
			state.message = text.replace(state.buggySpeakerThoughtRegExp, "($2)")
				.replace(/\\n/, ' ')
				.trim()
			state.type = "thought"
		}*/
		else
		{
			//this.quoteMessage(state, text, state.speakerRegExp, ' ', '')
			state.message = text.replace(state.speakerRegExp, " $2")
			state.type = "narration"
		}

		if (state.speakerMatch[1])
		{
			state.header = state.headerMargin + "\\>\\C[21]【" + state.speakerMatch[1] + "】\\C[0]\\<"
		}
		else
		{
			state.header = ""
		}
	}

	ADV_System.prototype.quoteMessage = function(state, text, regExp, openingMark, closingMark)
	{
		state.message = openingMark + text.replace(regExp, "$2").trim() + closingMark
	}

	ADV_System.prototype.processMessageWithoutHeader = function(state, text)
	{
		state.header = ""
		state.message = ' ' + text
		state.type = "narration"
	}
}

})()
