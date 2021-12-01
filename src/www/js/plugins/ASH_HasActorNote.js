/*:
 * @plugindesc	plugin command to check for actor notes.
 *				(used to make shorter conditional checks for mob banters - e.g., it makes it possible to group [sitagi], [sitagi-kubiwa], [mizugi], and [mizugi-kubiwa], all in a single check.)
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	// NOTE: reuse temporary variable.
	const ActorNoteResultVariableId = 201

	// <([^<>:]+)(:?)([^>]*)>/g
	const noteTagRegex = /<([^\:]*):(.*)>/i
	const noteTagAltRegex = /([^\(]*)\((.*)\)/i

	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

	Game_Interpreter.prototype.pluginCommand = function (command, args)
	{
		if (command === "HasActorNote")
		{
			this.storeActorNote(args, true)
		}
		else if (command === "HasNotActorNote")
		{
			this.storeActorNote(args, false)
		}

		Game_Interpreter_pluginCommand.call(this, command, args)
	}

	// hasActorNote <variableId> <actorId> <itemType> <itemSubTypeId> <noteTag> <noteValue>
	// itemType: 1=weapon, 2=armor
	Game_Interpreter.prototype.storeActorNote = function(args, positiveSearch)
	{
		const variableId = Number(args[0]) || ActorNoteResultVariableId
		const actor = $gameActors.actor(args[1])
		const itemType = Number(args[2])
		const value = actor.hasNote(itemType, args.slice(3), positiveSearch)

		$gameVariables.setValue(variableId, value ? 1 : 0)
	}

	//=============================================================================
	// Game_Actor
	//=============================================================================

	Game_Actor.prototype.hasNote = function(itemType, args, positiveSearch)
	{
		if (typeof args === "string") { args = args.split(/\s+/); }
		if (arguments.length < 3 || positiveSearch == undefined) { positiveSearch = true; }

		let result = -1

		for (let i = 0; i < args.length; )
		{
			const key = args[i++]
			const compareOp = args[i++]
			const value = args[i++]
			const compareValue = function(x)
			{
				const uc1 = x.toUpperCase()
				const uc2 = value.toUpperCase()

				switch (compareOp.toUpperCase())
				{
					case "=":
					case "==":
					case "IS":
					case "EQUALS":
						return uc1 === uc2

					case "STARTSWITH":
						return uc1.startsWith(uc2)

					case "ENDSWITH":
						return uc1.endsWith(uc2)

					case "CONTAINS":
						return uc1.indexOf(uc2) !== -1

					default:
						console.warn("unknown compare operator:", compareOp)
						return false
				}
			}

			// simpler but a lot slower because of 'hasArmor'.
			/*
			let database = null
			let func = null

			switch (itemType)
			{
				// weapon
				case 1:
				{
					database = $dataWeapons
					func = function (actor, item) { return actor.hasWeapon(item); }
				} break

				// armor
				case 2:
				{
					database = $dataArmors
					func = function (actor, item) { return actor.hasArmor(item); }
				} break

				// skill (UNUSED)
				case 3:
				{
					database = $dataSkils
					func = function (actor, item) { return actor.hasSkill(item.id); }
				} break

				// actor (UNUSED)
				case 4:
				{
					database = $dataActors
					func = function (actor, item) { return true; }
				} break

				// enemy (UNUSED)
				case 5:
				{
					database = $dataEnemies
					func = function (actor, item) { return true; }
				} break

				// class (UNUSED)
				case 6:
				{
					database = $dataClasses
					func = function (actor, item) { return actor.isClass(item); }
				} break
			}

			if (!database)
			{
				return
			}

			const filteredItems = database
								.filter(function(x) { return x && x.note && x.note.split('\n').some(function(y) { const m = y.match(noteTagRegex) || y.match(noteTagAltRegex); return m != null && m[1].toUpperCase() === key.toUpperCase() && compareValue(m[2]); })})

			result = positiveSearch && filteredItems.some(function(x) { return func(this, x); }, this)
			*/
			let found = false

			for (let i = 0; i < this._equips.length; ++i)
			{
				const equip = this._equips[i]
				let item = null

				if (itemType === 1 && equip._dataClass === "weapon")
				{
					item = $dataWeapons[equip._itemId]
				}
				else if (itemType === 2 && equip._dataClass === "armor")
				{
					item = $dataArmors[equip._itemId]
				}

				if (item != null
					&& item.note
					&& item.note.split('\n').some(function(y)
						{
							const m = y.match(noteTagRegex) || y.match(noteTagAltRegex)

							return m != null && m[1].toUpperCase() === key.toUpperCase() && compareValue(m[2])
						})
					)
				{
					found = true
					break
				}
			}

			result = positiveSearch && found

			if (i < args.length - 1)
			{
				let op = args[i++].toUpperCase()

				switch (op)
				{
					case '&':
					case '&&':
					case 'AND':
						op = '&'
						break
					case '|':
					case '||':
					case 'OR':
						op = '|'
						break
					default:
						console.warn("hasActorNote: invalid operator", op)
						return -1
				}

				if (op === '|' && result)
				{
					return result
				}
				else if (op === '&' && !result)
				{
					return result
				}
			}
		}

		return result
	}
}

})()
