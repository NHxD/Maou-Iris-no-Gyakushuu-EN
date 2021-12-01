/*:
 * @plugindesc	Automatically change the character images
 *				according to their currently equipped armors.
 *				(Mainly used to dress up event characters
 *				who aren't in the party.)
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

// TODO: make this opt-in only (or at least add an opt-out switch somewhere)
//		 because (the event) zexy appears in the hall of prostitution even though she shouldn't (it's an event you can't interact with)
// TODO: add support for <hasStrippableActors> notetags in maps.
// probably make this opt-in since:
// - this could cause slowdowns on maps with a very large number of events.
// - most maps don't have such actors anyway
{
	const strippableActors =
	[
		// TODO: find the actorId dynamically.
		//{ name: "iris", actorId: 1 },
		{ name: "sonia", actorId: 3 },
		{ name: "zexy", actorId: 4 },
		{ name: "sakuya", actorId: 5 }
	]

	//=============================================================================
	// Game_Map
	//=============================================================================

	const Game_Map_setup = Game_Map.prototype.setup

	Game_Map.prototype.setup = function(mapId)
	{
		Game_Map_setup.apply(this, arguments)

		// TODO? uh, could I just use $gameActors.actor(n).setCharacterImage(name, index)

		//if (!$gameMap.hasStrippableActors())
		{
			for (let i = 0; i < strippableActors.length; ++i)
			{
				const strippableActor = strippableActors[i]

				if (setEventImage(strippableActor.actorId))
				{
					// TODO: add support for <characterImage>, <faceImage>, <battlerImage> notetags in items.
					// check if item has <characterImage> note, if so, apply images.
					// (used for iris oiran, kubiwa, etc. display)
				}
			}
		}
	}


	//=============================================================================
	// Scene_Equip
	//=============================================================================

	const Scene_Equip_onItemOk = Scene_Equip.prototype.onItemOk

	Scene_Equip.prototype.onItemOk = function()
	{
		Scene_Equip_onItemOk.apply(this, arguments)

		const actor = this.actor()

		setEventImage(actor.actorId())
	}


	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_command319 = Game_Interpreter.prototype.command319

	Game_Interpreter.prototype.command319 = function()
	{
		const result = Game_Interpreter_command319.apply(this, arguments)
		const actorId = this._params[0]
		//const itemType = this._params[1]
		//const itemId = this._params[2]

		if (!setEventImage(actorId))
		{
			// TODO: add support for <characterImage>, <faceImage>, <battlerImage> notes in items.
			// check if item has <characterImage> note, if so, apply images.

			//actor.setCharacterImage(item.meta().value("characterName") || actor.characterName(), item.meta().value("characterIndex") || actor.characterIndex)
			//actor.setFaceImage(item.meta().value("faceName") || actor.faceName(), item.meta().value("faceIndex") || actor.faceIndex)
			//actor.setBattlerImage(item.meta().value("battlerName") || actor.battlerName())
		}

		return result
	}

	function setEventImage(actorId)
	{
		let result = false
		
		//if (!$gameMap.hasStrippableActors())
		{
			let strippableActor = null

			for (let i = 0; i < strippableActors.length; ++i)
			{
				strippableActor = strippableActors[i]

				if (actorId === Number(strippableActor.actorId))
				{
					break
				}
			}

			if (!strippableActor)
			{
				return
			}

			//for (const ev in $gameMap._events)
			for (let k = 0; k < $gameMap._events.length; ++k)
			{
				const ev = $gameMap._events[k]

				if (!ev
					|| !ev._characterName)
				{
					continue
				}

				if (ev._characterName.startsWith(strippableActor.name))
				{
					const actor = $gameActors.actor(strippableActor.actorId)

					if (!actor)
					{
						continue
					}

					const characterName = actor.characterName()
					const characterIndex = actor.characterIndex()

					//$gameMap.event(ev.actorId)
					ev.setImage(characterName, characterIndex)

					result = true
					//return true
				}
			}
		}

		return result
	}
}

})()
