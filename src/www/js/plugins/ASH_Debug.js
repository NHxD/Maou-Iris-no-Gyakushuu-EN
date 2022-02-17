/*:
 * @plugindesc	Stuff to make debugging easier.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	// WORKAROUND: (CHEAT) in case important items were mistakenly removed, allow the player to get them back by pressing a special key during any dialogue.
	if (false)
	{
		// k key
		Input.keyMapper[75] = "hotfix2"

		//=============================================================================
		// Window_Message
		//=============================================================================

		const Window_Message_updateInput = Window_Message.prototype.updateInput

		Window_Message.prototype.updateInput = function()
		{
			if (this.isAnySubWindowActive())
			{
				return true
			}

			if (Input.isTriggered("hotfix2"))
			{
				$gameParty.ensureHasCoreEquipment()

				return true
			}

			return Window_Message_updateInput.apply(this, arguments)
		}

		//=============================================================================
		// Game_Party
		//=============================================================================

		Game_Party.prototype.ensureHasCoreEquipment = function()
		{
			this.coreItems().forEach(function(item, index, array) {
				if (!this.hasItem(item, true))
				{
					this.gainItem(item, 1)
				}
			}, this)
		}

		Game_Party.prototype.coreItems = function()
		{
			return [
				$dataArmors[4],	// black gown
				$dataArmors[8],	// underwear
				$dataArmors[10]	// naked
			]
		}
	}

	// log scenario loading.
	if (false)
	{
		const ADV_System_start = ADV_System.prototype.start

		ADV_System.prototype.start = function(filename, reset)
		{
			const date = new Date()
			const date_str =
			[
				date.getFullYear(),
				date.getMonth() + 1,
				date.getDate()
			].join('/') + ' ' +
			[
				('0' + date.getHours()).slice(-2),
				('0' + date.getMinutes()).slice(-2),
				('0' + date.getSeconds()).slice(-2)
			].join(':')

			console.log("scenario load", date_str, filename)

			ADV_System_start.apply(this, arguments)
		}
	}

	// log macros.
	if (false)
	{
		const ADV_System_macroRun = ADV_System.prototype.macroRun

		ADV_System.prototype.macroRun = function(macro)
		{
			console.log("macro", macro)

			ADV_System_macroRun.apply(this, arguments)
		}
	}

	// log key strokes.
	if (false)
	{
		window.addEventListener("keydown", function (event)
		{
			console.log(event)
		}, true)
	}

	// add plugin commands to output to the developer console.
	if (false)
	{
		const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

		Game_Interpreter.prototype.pluginCommand = function (command, args)
		{
			//new Function(`"use strict"; return (${e.replace(/__/g, ' ')});`).bind(this)()

			if (command === "ConsoleLog")
			{
				console.log(args.map(function(e) { return typeof e === "string" ? e.replace(/__/g, ' ') : e; }))
			}
			else if (command === "ConsoleWarn")
			{
				console.warn(args.map(function(e) { return typeof e === "string" ? e.replace(/__/g, ' ') : e; }))
			}

			Game_Interpreter_pluginCommand.call(this, command, args)
		}
	}

	// temp debug override to log the last executed command.
	if (false)
	{
		Game_Interpreter.prototype.executeCommand = function()
		{
			const command = this.currentCommand()

			if (command)
			{
				console.log(command.code)
				console.dir(command)
				
				this._params = command.parameters
				this._indent = command.indent

				const methodName = 'command' + command.code

				if (typeof this[methodName] === 'function')
				{
					if (!this[methodName]())
					{
						return false
					}
				}

				++this._index
			}
			else
			{
				this.terminate()
			}

			return true
		}

	}

	// log events.
	if (false)
	{
		const Game_Event_start = Game_Event.prototype.start

		Game_Event.prototype.start = function()
		{
			console.log("event:", this.eventId())
			console.dir(this)

			Game_Event_start.call(this)
		}
	}

	// debug utility functions
	if (false)
	{
		StorageManager.saveToLocalRawFile = function(savefileId, json)
		{
			const fs = require('fs')
			const data = this.loadFromLocalFile(savefileId)
			const filePath = this.localFilePath(savefileId) + ".json"

			fs.writeFileSync(filePath, data)
		}

		StorageManager.compressLocalRawFile = function(savefileId)
		{
			const fs = require('fs')
			const inputFilePath = this.localFilePath(savefileId) + ".json"

			if (!fs.existsSync(inputFilePath))
			{
				return
			}

			const data = fs.readFileSync(inputFilePath, { encoding: 'utf8' })
			const outputFilePath = this.localFilePath(savefileId)

			fs.writeFileSync(outputFilePath, data)
		}

		const CommonSave_DataManager_createGameObjects = DataManager.createGameObjects

		DataManager.createGameObjects = function()
		{
			CommonSave_DataManager_createGameObjects.call(this)

			$CommonSave.saveAsRaw = function()
			{
				const json = JSON.stringify($CommonSave._mData)
				const fs = require('fs')
				const dirPath = StorageManager.localFileDirectoryPath()
				const filePath = dirPath + "Common" + ".json"

				if (!fs.existsSync(dirPath))
				{
					fs.mkdirSync(dirPath)
				}

				fs.writeFileSync(filePath, json)
			}
		}
	}
}

})()
