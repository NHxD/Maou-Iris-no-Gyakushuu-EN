/*:
 * @plugindesc	increase lewdness level by walking with less clothing.
 *
 * @author		ash
 *
 * @require		ASH_HasActorNote
 */

(function() {
	"use strict"

// TODO? multiply value when closer to npc's?
{
	const lewdSteps =
	{
		hadaka: { interval: 100, lewd: 0.3, vaginalDevelopment: 0 },
		mizugi: { interval: 150, lewd: 0.2, vaginalDevelopment: 0 },
		sitagi: { interval: 200, lewd: 0.1, vaginalDevelopment: 0 }
	}

	//=============================================================================
	// Game_Actor
	//=============================================================================

	Game_Actor.prototype.stepsForLewdTurn = function()
	{
		for (const key in lewdSteps)
		{
			if (lewdSteps.hasOwnProperty(key))
			{
				if (this.hasNote(2, "BODY contains " + key))
				{
					return lewdSteps[key]
				}
			}
		}
		
		return null
	}

	const Game_Actor_turnEndOnMap = Game_Actor.prototype.turnEndOnMap

	Game_Actor.prototype.turnEndOnMap = function()
	{
		Game_Actor_turnEndOnMap.apply(this, arguments)

		if (this === $gameParty.leader())
		{
			$gameParty.allMembers().forEach(function(actor)
			{
				if (actor == null)
				{
					return
				}

				const lewdStep = actor.stepsForLewdTurn()

				if (lewdStep == null)
				{
					return
				}

				if (($gameParty.steps() % lewdStep.interval) === 0)
				{
					actor._mLewd += lewdStep.lewd
					actor._mDevelop += lewdStep.vaginalDevelopment
				}
			})
		}
	}
}

})()
