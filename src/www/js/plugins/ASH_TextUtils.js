/*:
 * @plugindesc	Common text manipulation functions.
 *
 * @author		ash
 *
 * @require		
 */

//(function() {
	"use strict"

	//=============================================================================
	// TextUtils
	//=============================================================================

	function TextUtils()
	{
		throw new Error("This is a static class")
	}

	TextUtils.whitespaceRegExp = /(\s)/g
	TextUtils.numberRegExp = /(\d+)/g
	TextUtils.macroRegExp = /\x1b(\$?)(\W*)(\w+)\[([^\]]+)\]/gi
	TextUtils.punctuationRegExp = new RegExp(escapeRegExp(
		".…" +
		"%),:;]}｡｣ﾞﾟ。，、．：；゛゜ヽヾゝ" + 
		"ゞ々’”）〕］｝〉》」』】°′″℃￠％‰"))

	TextUtils.replace = function(text, replaceList)
	{
		if (ConfigManager.useOriginalNames)
		{
			if (replaceList && replaceList.length)
			{
				replaceList.forEach(function(element)
					{
						text = text.replace(element.key, element.value)
					})
			}
		}
		/*
		if (replaceList && replaceList.length)
		{
			const items = replaceList.split(',')

			for (let i = 0; i < items.length; ++i)
			{
				const item = items[i].split('=')

				if (item.length < 2)
				{
					console.warn("missing value in:", items[i])
					continue
				}

				const key = item[0]
				const value = item[1]

// TODO? should probably put non-word checks around the key to make sure it's not part of an actual word.
				text = text.replace(new RegExp(escapeRegExp(key), "g"), value)
			}
		}
		*/

		return text
	}

	TextUtils.englify = function(text)
	{
		//text = text.replace(/(…)(\.|\!|…|！)/g, "...$2")
		//text = text.replace(/(?=\w)(（)/g, " $1")
		//text = text.replace(/(？|！|…|、|,|，）)(?=\w|（)/g, "$1 ")
		//text = text.replace(/(？|！|…|、|,|，）)(?=\w|（)/g, "$1 ")

		// replace 6 dots with 3 dots
		text = text.replace(/……/g, "...")
		text = text.replace(/⋯⋯/g, "...")

		text = text.replace(/./g,
			function(match, value, offset, context)
			{
				switch (match)
				{
					case '　': return " "
					case '、': return ", "
					case '。': return ". "

					case '・': return " "		//"."

					case ' ': return " "

					case '…':
					case '⋯':
						return "..."

					case '「': return '‘'
					case '」': return '’'
					case '『': return ' “'	// HACK...
					case '』': return '”'
 					//case '《':
 					//case '》':
 					//case '〈':
 					//case '〉':
	 					//return '"'
 					case '（': return '('
					case '）': return ')'
					case '’': return '\''
					case '！': return '!'
					case '．': return '.'
					case '，': return ', '
					case '：': return ': '
					case '；': return '; '
					case '？': return '?'
					case '［': return '['
					case '］': return ']'
					case '｀': return '\''
					//case '～': return '~'
					default: return match
				}
			})

		// force whitespace after punctuations
		// FIXME: this replaces everything blindly (unaware of escape codes)
		//text = text.replace(/(\?|\!|\.|\)|\]|\,)(?=\w|\(|\[)/g, "$1 ")
		text = text.replace(/(\?|\!|\.|\)|\,)(?=[a-zA-Z]|\()/g, "$1 ")

		// force whitespace before punctuations
		// FIXME: this replaces everything blindly (unaware of escape codes)
		//text = text.replace(/(?!^)(?=\w|\d)(\[|\()/g, " $1")
		text = text.replace(/(?!^)(?=\w)(\()/g, " $1")

		// strip whitespaces before punctuations
		text = text.replace(/(\s+)(\?|\!|\.)/g, "$2")

		// strip consecutive whitespaces (if not leading)
		text = text.replace(/(?!^)(\s{2,})/g, " ")

		return text
	}

	TextUtils.wrapText = function(text, view_text_num, iconSize/*, punctuationRegExp, macroRegExp*/)
	{
		const state = { count: 0, index: 0, text: text, maxCharsPerLine: view_text_num, iconsSize: iconSize, punctuationRegExp: this.punctuationRegExp, output: ""/*, macroRegExp: macroRegExp*/ }

		state.length = text.length

		for (state.index = 0; state.index < state.length; ++state.index)
		{
			const c = state.text[state.index]

			if (c === '\x1b' && state.index < state.length - 1)
			{
				if (!this.processEscapeCharacter(state))
				{
					continue
				}
			}
			else if (c === '\n')
			{
				if (!this.processNewLine(state, c))
				{
					continue
				}
			}
			else if (c === ' ')
			{
				if (!this.processWhiteSpace(state, c))
				{
					continue
				}
			}
			else
			{
				if (!this.processNonWhiteSpace(state, c))
				{
					continue
				}
			}

			//++state.count
		}

		return state.output
	}

	TextUtils.processWhiteSpace = function(state, c)
	{
		state.output += c
		state.count += 1

		return true
	}

	TextUtils.processNonWhiteSpace = function(state, c)
	{
		const breakIndex = this.getBreakIndex(state, c)

		// HACK: handle english separately because the breaking conditions below aren't correct.

		if (ConfigManager.langSelect === 1)
		{
			if (breakIndex >= 0)
			{
				this.processNewLine(state, c)

				state.output += c
				state.count += 1
			}
			else
			{
				state.output += c
				state.count += 1
			}
		}
		else
		{
			if (breakIndex === -1)
			{
				state.output += c
				state.count += 1
			}
			// FIXME: this is probably wrong.
			else if ((breakIndex - state.index) >= state.maxCharsPerLine - state.count)
			{
				const text = state.text.substr(state.index, state.maxCharsPerLine - state.count)

				state.index += state.maxCharsPerLine - state.count - 1
				state.output += text
				//state.count += text.length

				this.processNewLine(state, c)
			}
			else
			{
				this.processNewLine(state, c)

				state.output += c
				state.count += 1
			}
		}

		return true
	}

	TextUtils.processNewLine = function(state, c)
	{
		state.output += '\n'
		state.count = 0

		return true
	}

	// FIXME: it doesn't seem to correctly skip counting escape codes:
	// EXAMPLE: "The \$ENEMY[Red Orc] has set up camp in the \C[12]Oak Forest\C[0], east of this village."
	// incorrectly breaks after "Oak", if using color codes;
	// but correctly breaks after "Forest", if not using color codes.
	// probably because this function ignores escapes...

	// FIXME: this assumes english-oriented rules. (japanese/chinese is different)

	TextUtils.getBreakIndex = function(state, c)
	{
		const whitespaceRegExp = new RegExp(this.whitespaceRegExp.source, this.whitespaceRegExp.flags)
		const punctuationRegExp = new RegExp(state.punctuationRegExp.source, state.punctuationRegExp.flags)
		let wasPunctuation = punctuationRegExp.test(c)
		//let wasPunctuation = c.match(punctuationRegExp) != null
		const tempState = Object.assign({}, state)
		const originalIndex = tempState.index

		for (; tempState.index < tempState.length; ++tempState.index)
		{
			//const c = tempState.text[state.index]

			if (tempState.text[tempState.index] === '\n'
				|| (tempState.index < tempState.length - 1 && tempState.text[tempState.index] === '\\' && tempState.text[tempState.index + 1] === 'n'))
			{
				break
			}
			// FIXME: hmm, this doesn't seem to be working.
			else if (tempState.text[tempState.index] === '\x1b'
				&& tempState.index < tempState.length - 1)
				//&& ('\\' + tempState.text.substr(j + 1)).search(state.macroRegExp) === 0)
			{
				this.processEscapeCharacter(tempState)
			}
			else if (
				tempState.index === tempState.length - 1
				|| whitespaceRegExp.test(tempState.text[tempState.index])
				|| (wasPunctuation && !punctuationRegExp.test(tempState.text[tempState.index]))
				)
			{
				if (tempState.count + tempState.index - originalIndex >= tempState.maxCharsPerLine)
				{
					return tempState.index
				}

				break
			}

			if (punctuationRegExp.test(tempState.text[tempState.index]))
			{
				wasPunctuation = true
			}
		}

		return -1
	}

	//TextUtils.alignEscapeCodeRegExp = /^[M]$/
	//TextUtils.replacementEscapeCodeRegExp = /^[CIVNPG]$/
	//TextUtils.controlEscapeCodeRegExp = /^[\{\}\$\.\|\!\<\>\^]$/

	TextUtils.processEscapeCharacter = function(state)
	{
		const escapeCode = state.text[state.index + 1]
		const escapeString = state.text.substr(state.index + 1)

		// alignment
		if (escapeString.startsWith('l[')
			|| escapeString.startsWith('m[')
			|| escapeString.startsWith('r['))
		{
			const endOfEscapeSequence = state.text.indexOf(']', state.index + 1)

			if (endOfEscapeSequence !== -1)
			{
				const sequence = state.text.substring(state.index, endOfEscapeSequence + 1)
				
				state.output += sequence
				state.index = endOfEscapeSequence

				return false
			}
			// malformed escape sequence.
			else
			{
				state.output += '\\' + escapeCode
				++state.index
			}
		}
		// alignment
		else if (//escapeCode === 'l' ||
			escapeCode === 'm'
			|| escapeCode === 'r')
		{
			state.output += '\\' + escapeCode
			++state.index
		}
		else

		// new line
		if (escapeCode === 'n')
		{
			state.output += '\n'
			state.count = 0
			++state.index
		}
		// form
		else if (state.escapeCode === 'f')
		{
			state.output += '\f'
			state.count = 0
			++state.index
		}
		// escaped backslash
	 	else if (escapeCode === '\\')
		{
			state.output += '\\'
			++state.index
		}
		// replacement tokens
		else if (escapeCode === 'C' || escapeCode === 'I'
			|| escapeCode === 'V'
			|| escapeCode === 'N'
			|| escapeCode === 'P'
			|| escapeCode === 'G'
			//'\x1b'
			//|| (('\\' + escapeString).search(state.macroRegExp) === 0)
			)
		{
			const endOfEscapeSequence = state.text.indexOf(']', state.index + 1)

			if (endOfEscapeSequence !== -1)
			{
				const sequence = state.text.substring(state.index, endOfEscapeSequence + 1)
				
				state.output += sequence
				state.index = endOfEscapeSequence

				if (escapeCode === 'I')
				{
					state.count += state.iconSize
				}
				/*
				else
				{
					const escapeOutput = TextUtils.convertEscapeCharacters('\\' + sequence, true)

					if (escapeOutput)
					{
						state.count += escapeOutput.length
					}

					for (let i = 0; i < escapeString.length; ++i)
					{
						if (escapeString[i].match(/[a-z]/i))
						{
							break
						}

						if (escapeString[i] === '@')
						{
							state.count += state.iconSize
						}
					}
				}
				*/
				return false
			}
			// malformed escape sequence.
			else
			{
				state.output += '\\' + escapeCode
				++state.index
			}
		}
		// control tokens
		else if (escapeCode === '{'
			|| escapeCode === '}'
			|| escapeCode === '$'
			|| escapeCode === '.'
			|| escapeCode === '|'
			|| escapeCode === '!'
			|| escapeCode === '<'
			|| escapeCode === '>'
			|| escapeCode === '^'
			)
		{
			state.output += '\\' + escapeCode
			++state.index

			return false
		}
/*
		else if (escapeCode === 'u'
			|| escapeCode === 'U'
			|| escapeCode === 'x'
			|| escapeCode === 'X'
			)
		{
			state.output += '\\' + escapeCode
			++state.index

			return false
		}
*/
		// lazy hack?
		state.count += 1

		return true
	}

	TextUtils.backslashRegExp = /\\/g
	TextUtils.escapeRegExp = /\x1b\x1b/g
	TextUtils.variableRegExp = /\x1bV\[(\d+)\]/gi
	TextUtils.currencyRegExp = /\x1bG/gi
	TextUtils.codePointRegExp = /\x1b(u)([0-9A-F]{1,2})/g
	TextUtils.charCodeRegExp = /\x1b(x)([0-9A-F]{1,2})/g

	TextUtils.toUpperCase = function(string, enable)
	{
		return enable ? string.toUpperCase() : string
	}

	TextUtils.convertEscapeCharacters = function(text, raw)
	{
		raw = raw || false

		text = text.replace(this.backslashRegExp, '\x1b')

		text = text.replace(this.escapeRegExp, '\\')

		text = text.replace(this.unicodeCodePointRegExp, function(match, p1, p2, offset, string)
		{
			return TextUtils.toUpperCase(String.fromCodePoint(p2), p1 === "U")
		}.bind(this))

		text = text.replace(this.hexCharRegExp, function(match, p1, p2, offset, string)
		{
			return TextUtils.toUpperCase(String.fromCharCode(p2), p1 === "X")
		}.bind(this))

		text = text.replace(this.variableRegExp, function(match, p1, string)
		{
			return $gameVariables.value(parseInt(p1))
		}.bind(this))

		text = text.replace(this.variableRegExp, function(match, p1, string)
		{
			return $gameVariables.value(parseInt(p1))
		}.bind(this))
/*
		text = text.replace(/\x1bN\[(\d+)\]/gi, function()
		{
		return this.actorName(parseInt(arguments[1]))
		}.bind(this))

		text = text.replace(/\x1bP\[(\d+)\]/gi, function()
		{
		return this.partyMemberName(parseInt(arguments[1]))
		}.bind(this))
*/
	    text = text.replace(this.currencyRegExp, TextManager.currencyUnit)

		text = text.replace(this.macroRegExp, function(match, colorize, options, token, value, offset, context)
			{
				if (raw)
				{
					colorize = ""
					options = ""
				}

				switch (token)
				{
					case "P":
						return this.parsePartyMember(match, colorize, options, token, value, offset, context)
					case "N":
					case "ACTOR":
						return this.parseActor(match, colorize, options, token, value, offset, context)
					case "ENEMY":
						return this.parseEnemy(match, colorize, options, token, value, offset, context)
					case "SKILL":
						return this.parseSkill(match, colorize, options, token, value, offset, context)
					case "ITEM":
						return this.parseItem(match, colorize, options, token, value, offset, context)
					case "ACCESSORY":
						return this.parseAccessory(match, colorize, options, token, value, offset, context)
					case "ARMOR":
						return this.parseArmor(match, colorize, options, token, value, offset, context)
					case "WEAPON":
						return this.parseWeapon(match, colorize, options, token, value, offset, context)
					case "LOCATION":
						return this.parseLocation(match, colorize, options, token, value, offset, context)
					case "CURRENCY":
						return this.parseCurrency(match, colorize, options, token, value, offset, context)
					case "POSITIVE":
						return this.parsePositive(match, colorize, options, token, value, offset, context)
					case "NEGATIVE":
						return this.parseNegative(match, colorize, options, token, value, offset, context)
					case "ATTRIB":
					case "ATTRIBUTE":
						return this.parseAttribute(match, colorize, options, token, value, offset, context)
					default:
						return match
				}

				// malformed syntax / unsupported format.
				//return "\x1bC[18]" + match + "\x1bC[0]"
			}
			.bind(this))

	    //text = text.replace(/\x1bn/g, '\n')

	    return text
	}

	TextUtils.parsePartyMember = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.partyMemberName.bind(this), null, "#", 1, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseActor = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.actorName.bind(this), null, "#", 14, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseEnemy = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.enemyName.bind(this), null, "#", 10, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseSkill = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.skillName.bind(this), this.skillIcon.bind(this), "@#", 6, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseItem = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.itemName.bind(this), this.itemIcon.bind(this), "@#", 3, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseArmor = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.armorName.bind(this), this.armorIcon.bind(this), "@#", 1, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseAccessory = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.accessoryName.bind(this), this.accessoryIcon.bind(this), "@#", 31, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseWeapon = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(this.weaponName.bind(this), this.weaponIcon.bind(this), "@#", 2, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseLocation = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(null, null, "", 24, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseCurrency = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(null, null, "?", 17, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseAttribute = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(null, null, "", 23, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parsePositive = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(null, null, "", 29, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseNegative = function(match, colorize, options, token, value, offset, context)
	{
		return this.parseMacro(null, null, "", 18, match, colorize, options, token, value, offset, context)
	}

	TextUtils.parseMacro = function(nameDelegate, iconDelegate, defaultFormat, colorIndex, match, colorize, options, token, value, offset, context)
	{
		let result = ""

		options = options || defaultFormat

		if (!isNaN(value))
		{
			const n = parseInt(value)

			for (let k = 0; k < options.length; ++k)
			{
				switch (options[k])
				{
					case '?':
						result += n.toLocaleString()
						break

					case '#':
						if (nameDelegate)
							result += nameDelegate(n)
						break

					case '@':
						if (iconDelegate)
							result += iconDelegate(n).iconify()
						break
				} 
			}

			if (!result)
			{
				if (nameDelegate)
				{
					result = nameDelegate(n)
				}
				else
				{
					result = n.toString()
				}
			}
		}
		else
		{
			for (let k = 0; k < options.length; ++k)
			{
				switch (options[k])
				{
					case '?':
						result += value.replace(this.numberRegExp, function(_match, _number, _offset, _context) { return parseInt(_number).toLocaleString(); })
						break

					case '<':
						result += value.toUpperCase()
						break

					case '>':
						result += value.toLowerCase()
						break
				} 
			}

			if (!result)
			{
				result = value
			}
		}

		if (colorize.indexOf('$') !== -1)
		{
			result = result.colorize(colorIndex)
		}

		return result
	}

	TextUtils.skillIcon = function(n)
	{
		const actor = n >= 1 ? $dataSkills[n] : null

		return actor && DataManager.isSkill(actor) ? actor.iconIndex : ''
	}

	TextUtils.itemIcon = function(n)
	{
		const actor = n >= 1 ? $dataItems[n] : null

		return actor && DataManager.isItem(actor) ? actor.iconIndex : ''
	}

	TextUtils.armorIcon = function(n)
	{
		const actor = n >= 1 ? $dataArmors[n] : null

		return actor && DataManager.isArmor(actor) ? actor.iconIndex : ''
	}

	TextUtils.accessoryIcon = function(n)
	{
		return this.armorIcon(n)
	}

	TextUtils.weaponIcon = function(n)
	{
		const actor = n >= 1 ? $dataWeapons[n] : null

		return actor && DataManager.isWeapon(actor) ? actor.iconIndex : ''
	}

	TextUtils.skillName = function(n)
	{
		const actor = n >= 1 ? $dataSkills[n] : null

		return actor && DataManager.isSkill(actor) ? actor.name : ''
	}

	TextUtils.itemName = function(n)
	{
		const actor = n >= 1 ? $dataItems[n] : null

		return actor && DataManager.isItem(actor) ? actor.name : ''
	}

	TextUtils.armorName = function(n)
	{
		const actor = n >= 1 ? $dataArmors[n] : null

		return actor && DataManager.isArmor(actor) ? actor.name : ''
	}

	TextUtils.accessoryName = function(n)
	{
		return this.armorName(n)
	}

	TextUtils.weaponName = function(n)
	{
		const actor = n >= 1 ? $dataWeapons[n] : null

		return actor && DataManager.isWeapon(actor) ? actor.name : ''
	}

	TextUtils.enemyName = function(n)
	{
		const actor = n >= 1 ? $dataEnemies[n] : null

		return actor ? actor.name : ''
	}

	TextUtils.actorName = function(n)
	{
		const actor = n >= 1 ? $gameActors.actor(n) : null

		return actor ? actor.name() : ''
	}

	TextUtils.addMargin = function(text, firstLineMargin, lineMargin, maxCharsPerLine)
	{
		let lines = text.split('\n')

		if (!lines || !lines.length)
		{
			return ""
		}

		lines[0] = this.processLine(lines[0], firstLineMargin, maxCharsPerLine)

		for (let i = 1; i < lines.length; ++i)
		{
			lines[i] = this.processLine(lines[i], lineMargin, maxCharsPerLine)
		}

		return lines.join('\n')
	}

	TextUtils.marginChar = ' '
	TextUtils.marginRegex = /^\\(l|m|r)\[(-?\d+)\]/

	TextUtils.processLine = function(line, margin, maxCharsPerLine, currentAlignment)
	{
		// TODO:	add and use a method <measurePlainText> to count
		//			the number of actual displayable characters
		//			(skipping escape and control characters)

		const trimmedLine = line.trimLeft()
		let marginCount = 0

		const match = trimmedLine.match(this.marginRegex)

		if (match && match.length === 3)
		{
			line = trimmedLine.substring(match[0].length)
			const marginOffset = Number.parseInt(match[2])

			switch (match[1])
			{
				case 'l':
					marginCount = marginOffset
					break
				case 'm':
					marginCount = (maxCharsPerLine / 2) + marginOffset
					break
				case 'r':
					marginCount = maxCharsPerLine - line.length + marginOffset
					break
			}
		}

		if (marginCount === 0)
		{
			if (trimmedLine.startsWith("\\m"))
			{
				line = trimmedLine.substring("\\m".length)
				marginCount = (maxCharsPerLine - line.length) / 2
			}
			else if (trimmedLine.startsWith("\\r"))
			{
				line = trimmedLine.substring("\\r".length)
				marginCount = maxCharsPerLine - line.length
			}
		}

		if (marginCount > 0)
		{
			margin = this.marginChar.repeat(marginCount)
		}

		return margin + line
	}

	TextUtils.verticalAlign = function(line, maxLines, thresholds)
	{
		const lines = line.split('\n')
		const val = lines.length
		let output = 0

		for (let i = thresholds.length; i > 0; --i)
		{
			const threshold = thresholds[i - 1]

			if (val >= threshold[0])
			{
				output = threshold[1]
				break
			}
		}

		return '\n'.repeat(output) + line
	}

	//=============================================================================
	// Number
	//=============================================================================

	Number.prototype.iconify = function()
	{
		return "\x1bI[" + this + "]"
	}

	//=============================================================================
	// String
	//=============================================================================

	String.prototype.colorize = function(colorIndex)
	{
		return "\x1bC[" + colorIndex + "]" + this + "\x1bC[" + 0 + "]"
	}

	String.prototype.formatExPrefix = "%{"
	String.prototype.formatExSuffix = "}"

	String.prototype.formatEx = function(args)
	{
		let result = this

		for (let prop in args)
		{
			if (!args.hasOwnProperty(prop))
			{
				continue
			}

			const arg = args[prop]

			result = result.replace(new RegExp(escapeRegExp(this.formatExPrefix) + "(" + escapeRegExp(prop) + ")" + escapeRegExp(this.formatExSuffix), "g"), function(match, symbol, index, context)
			{
				return arg
			})
		}

		return result
	}

	//=============================================================================
	// Globals
	//=============================================================================

	function escapeRegExp(string)
	{
		return string.replace(/[-\/\\^$*+?.()|[\]{}]/g, "\\$&")
	}
//})()
