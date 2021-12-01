/*:
 * @plugindesc	plugin command and macro to save & restore actor equipment.
 *				(used to restore equipment after forcing a change during the story - e.g., auto-equipping the black armor vs the giant squid.)
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

// TODO? a plugin command to store inventory to a variable which can then be restored.
// (would be used to save the inventory when choosing NEW GAME+, then restored upon opening the chest in the demon castle)
{
	const ActorEquipStorageVariableId = 199

	const findInArray = function(that, callbackFn, thisArg)
	{
		if (typeof callbackFn !== "function")
		{
			throw new TypeError("Array.find: argument <callbackFn> must be of type 'function'.")
		}

		// NOTE: not going to support case of callbackFn mutating elements.

		for (let index = 0, length = that.length; index < length; ++index)
		{
			const element = that[index]

			if (callbackFn.apply(thisArg, [ element, index, thisArg ]))
			{
				return element
			}
		}

		return undefined
	}

	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

	Game_Interpreter.prototype.pluginCommand = function (command, args)
	{
		if (command === "SaveActorEquip")
		{
			this.saveActorEquip(args)
		}
		else if (command === "RestoreActorEquip")
		{
			this.restoreActorEquip(args)
		}

		Game_Interpreter_pluginCommand.call(this, command, args)
	}

	Game_Interpreter.prototype.saveActorEquip = function(args)
	{
		const variableId = Number(args[0]) || ActorEquipStorageVariableId
		const actor = $gameActors.actor(args[1])
		const equips = actor.equips().filter(function(item)
			{
				return item != null// && item.isEquipItem()
			}).map(function(item)
			{
				return { etypeId: item.etypeId, id: item.id }
			})

		$gameVariables.setValue(variableId, JSON.stringify(equips))
	}

	Game_Interpreter.prototype.restoreActorEquip = function(args)
	{
		const variableId = Number(args[0]) || ActorEquipStorageVariableId
		const actor = $gameActors.actor(args[1])
		const equipsVar = $gameVariables.value(variableId)

		if (!equipsVar)
		{
			console.warn("equipment variable is null or empty")
			return
		}

		const equips = JSON.parse(equipsVar)

		if (!equips)
		{
			console.warn("couldn't parse equipment variable", equipsVar)
			return
		}

		// NOTE: for this game, etypeId has a different meaning (see StandChange.js)
		const equipSlots = actor.equipSlots()

		if (args.length >= 3 && !Number.isNaN(args[2]))
		{
			const etypeId = parseInt(args[2])
			const foundItem = findInArray(equips, function(item) { return item != null && item.etypeId === etypeId; })

			if (!foundItem)
			{
				//console.log("NOT found:")
				//console.dir(foundItem)
				return
			}

			actor.changeEquipById(equipSlots.indexOf(foundItem.etypeId) + 1, foundItem.id)
		}
		else
		{
			equips.forEach(function(item)
			{
				actor.changeEquipById(equipSlots.indexOf(item.etypeId) + 1, item.id)
			})
		}
	}

	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_macroRun = ADV_System.prototype.macroRun

	ADV_System.prototype.macroRun = function(macro)
	{
		let argument = {}

		if (macro.startsWith("@equip_save "))
		{
			argument = this.makeArg(macro, { id: 1, var: ActorEquipStorageVariableId }, [ "id", "var" ])
			
			argument["id"] = Number(argument["id"])
			argument["var"] = Number(argument["var"])

			$gameMap._interpreter.saveActorEquip([ argument["var"], argument["id"] ])

			/*
			const actor = this.getCharacter(argument['id'])

			if (actor)
			{
				$gameMap._interpreter.saveActorEquip([ actor.actorId() ])
			}
			*/
		}
		else if (macro.startsWith("@equip_restore "))
		{
			argument = this.makeArg(macro, { id: 1, var: ActorEquipStorageVariableId, etypeid: -1 }, [ "id", "var", "etypeid" ])
			
			argument["id"] = Number(argument["id"])
			argument["var"] = Number(argument["var"])
			argument["etypeid"] = Number(argument["etypeid"])

			//const actor = this.getCharacter(argument['id'])
			//$gameMap._interpreter.restoreActorEquip([ actor ? actor.actorId() : Number(argument["id"]), argument.etypeid ])
			$gameMap._interpreter.restoreActorEquip([ argument["var"], argument["id"], argument["etypeid"] ])

			//$gamePlayer.refresh()
		}

		ADV_System_macroRun.call(this, macro)
	}
}

})()
