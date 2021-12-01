/*:
 * @plugindesc	
 *
 * @author		ash
 *
 * @require		Adv_System
 */

(function() {
	"use strict"

{
	// WORKAROUND: some dialogues happen in parallel events, precaching doesn't work in those instances.
	const blackListedPrecacheFileNames =
	[
		"M-069-001"
	]

	const loadEventCallback = function(fileName, bodyName, bodyOp)
	{
		if (fileName === "null")
		{
			return
		}

		//console.log("preload event:", fileName)

		ImageManager.requestPicture(fileName)
	}

	const loadStandCallback = function(fileName, bodyName, bodyOp)
	{
		//console.log("loadStandCallback", fileName, bodyName, bodyOp)

		if (!fileName || fileName === "null")
		{
			//console.log("	SKIP: f is null")
			return
		}

		const name = fileName.split('@')[0]
		const check_name = name + '@'

		if (!bodyName)
		{
			const pict_data = $advSystem.findPicture(check_name)

			if (pict_data)
			{
				const body_name = pict_data.list.BODY._name

				bodyName = body_name.split('_')[1]

				//console.log("	bodyName found:", bodyName)
			}
			else
			{
				bodyName = $advSystem.getBodyCos(name,true)

				//console.log("	bodyName computed:", bodyName)
			}
		}

		if (bodyOp)
		{
			const result = $advSystem.changeBodyCos(bodyName, bodyOp)

			bodyName = result.cos

			//console.log("	bodyName (w/ op):", bodyName)
		}

		{
			if ($advSystem.CHANGE_FACE[name]
				&& bodyName
				&& $advSystem.CHANGE_FACE[name].indexOf(bodyName) !== -1)
			{
				fileName = fileName.replace('@', '@' + bodyName + '_')

				//console.log("	new fileName:", fileName, name)
			}
		}

		if (!$advSystem.reserveStandCache.hasOwnProperty(name))
		{
			$advSystem.reserveStandCache[name] = []//{ f: "", body: "", z: false, op2: "" }
		}

		//console.log("preload face:", "not implemented!")
		//ImageManager.requestFace(fileName)

		// facial expression
		if (!$advSystem.reserveStandCache[name].some(function(element) { return element.f === fileName; }))
		{
			//console.log("	preload stand face:", fileName)
			ImageManager.requestPicture(fileName)
		}

		// body
		const bodyFileName = name + '_' + bodyName + (fileName.endsWith("_z") ? "_z" : "")

		if (!$advSystem.reserveStandCache[name].some(function(element) { return element.body === bodyFileName; }))
		{
			//console.log("	preload stand body:", bodyFileName)
			ImageManager.requestPicture(bodyFileName)
		}

		$advSystem.reserveStandCache[name].push(
		{
			f: fileName,
			body: bodyFileName,
			z: false,
			op2: ""
		})
	}

	const loadCharacterCallback = function(fileName, bodyName, bodyOp)
	{
		//console.log("loadCharacterCallback:", fileName, bodyName, bodyOp)

		if (fileName === "null")
		{
			//console.log("SKIP: f is null")
			return
		}

		if (fileName.indexOf("_nowBody") !== -1)
		{
			//console.log("RESET: now body")

			const name = fileName.split('_')[0]

			fileName = name + '_' + $advSystem.getBodyCos(name, true)

			//console.log(name, fileName)
		}

		//console.log("preload character:", fileName)

		ImageManager.requestCharacter(fileName)
	}

	const loadAnimationCallback = function(num)
	{
		// NOTE: I don't look up id's, just assume it's correctly set.

		const animation = $dataAnimations[num]

		if (animation == null)
		{
			return
		}

		if (animation.animation1Name)
		{
			//console.log("preload animation 1:", animation.animation1Name)
			ImageManager.reserveAnimation(animation.animation1Name, animation.animation1Hue)
		}

		if (animation.animation2Name)
		{
			//console.log("preload animation 2:", animation.animation1Name)
			ImageManager.reserveAnimation(animation.animation2Name, animation.animation2Hue)
		}
	}

	const bodyOpRegex = /body_op=([^\s$]+)/g
	const bodyNameRegex = /body=([^\s$]+)/g
	const commandAndResourceFileRegex = /@([\w_]+)\s+.*f=([^\s$]+)/
	const knownCommandWithResourceFiles =
	{
		ev: loadEventCallback,
		bs: loadStandCallback,
		move: loadStandCallback,
		move_f: loadStandCallback,
		//zoom_f: loadStandCallback,
		change: loadCharacterCallback
	}
	const commandAndNumRegex = /@([\w_]+)\s+.*num=([^\s$]+)/
	const knownCommandWithNumFiles =
	{
		anime: loadAnimationCallback
	}

	//=============================================================================
	// TS_Localize
	//=============================================================================

	//TS_Localize.LanguageList.PrecacheImages = []

	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager.precacheImages = true

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.apply(this, arguments)

		if (config.hasOwnProperty("precacheImages"))
		{
			this.precacheImages = this.readFlag(config, "precacheImages")
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.apply(this, arguments)

		config.precacheImages = this.precacheImages

		return config
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_addGeneralOptions = Window_Options.prototype.addGeneralOptions

	Window_Options.prototype.addGeneralOptions = function()
	{
		Window_Options_addGeneralOptions.apply(this, arguments)

		this.addCommand(TS_Function.getLanguage("PrecacheImages"), "precacheImages", this.isPrecacheImagesEnabled())
	}

	Window_Options.prototype.isPrecacheImagesEnabled = function()
	{
		return true
	}

	//=============================================================================
	// ADV_System
	//=============================================================================

	ADV_System.prototype.findAndPrecacheAll = function(filename)
	{
		if (blackListedPrecacheFileNames.contains(filename.toUpperCase()))
		{
			return
		}

		//console.log("findAndPrecacheAll", filename)
		//console.time("	fileLoad")
		const file_data = this.fileLoad(filename)
		//console.timeEnd("	fileLoad")
		const s_list = file_data.split(/\r\n|\n/)

		//console.time("	parse")
		this.mStack = this.parse(s_list, false)
		//console.timeEnd("	parse")

		this.initPrecache()
		this.findAndPrecacheResourceFiles()
		this.findAndPrecacheNumFiles()
		this.resetStack()
		this.releasePrecache()
	}

	ADV_System.prototype.initPrecache = function()
	{
		this.reserveStandCache = {}
	}

	ADV_System.prototype.releasePrecache = function()
	{
		this.reserveStandCache = {}
	}

	ADV_System.prototype.findAndPrecacheResourceFiles = function()
	{
		//console.log("precache resources for", $gameMessage._fileName)
		//console.dir(this.mStack)

		for (let i = 0; i < this.mStack.length; ++i)
		{
			const command = this.mStack[i]
			const match = command.match(commandAndResourceFileRegex)

			if (match == null)
			{
				continue
			}

			if (knownCommandWithResourceFiles.hasOwnProperty(match[1]))
			{
				const callback = knownCommandWithResourceFiles[match[1]]
				const bodyMatch = command.match(bodyNameRegex)
				const bodyOpMatch = command.match(bodyOpRegex)

				//console.log(command)

				callback(match[2], bodyMatch ? bodyMatch[1] : null, bodyOpMatch ? bodyOpMatch[1] : null)
			}
		}
	}

	ADV_System.prototype.findAndPrecacheNumFiles = function()
	{
		for (let i = 0; i < this.mStack.length; ++i)
		{
			const command = this.mStack[i]
			const match = command.match(commandAndNumRegex)

			if (match == null)
			{
				continue
			}

			if (knownCommandWithNumFiles.hasOwnProperty(match[1]))
			{
				const callback = knownCommandWithNumFiles[match[1]]

				//console.log(command)

				callback(match[2])
			}
		}
	}

	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_requestImages = Game_Interpreter.requestImages

	// override to precache images used in adv files.
	Game_Interpreter.requestImages = function(list, commonList)
	{
		Game_Interpreter_requestImages.apply(this, arguments)

		if (!ConfigManager.precacheImages)
		{
			return
		}
		
		if (!list)
		{
			return
		}

		list.forEach(function(command)
		{
			const params = command.parameters

			switch(command.code)
			{
				// Plugin Command
				case 356:
				{
					const args = params[0].split(' ')

					if (args.length >= 2
						&& args[0] === "AdvLoad")
					{
						if (args[1] === "macro"
							|| args[1] === "exec")
						{
							return
						}

						$advSystem.findAndPrecacheAll(args[1])
					}
				}
				break
			}
		})
	}
}

})()
