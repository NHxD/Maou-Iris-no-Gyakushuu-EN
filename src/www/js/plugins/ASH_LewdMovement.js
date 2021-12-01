/*:
 * @plugindesc	bypass movement restrictions based on the currently equipped armor.
 *
 * @author		ash
 *
 * @require		ASH_HasActorNote
 * @require		ASH_ConditionalDash
 */

(function() {
	"use strict"

{
	const lewdBaseArmors =
	{
		hadaka: { check: function(actor) { return !$gameMap.isLadder(actor._x, actor._y); } },
		mizugi: { check: function(actor) { return !$gameMap.isLadder(actor._x, actor._y); } },
		sitagi: { check: function(actor) { return !$gameMap.isLadder(actor._x, actor._y); } },
	}

	//=============================================================================
	// Game_Actor
	//=============================================================================

	const Game_Player_canDash = Game_Player.prototype.canDash

	Game_Player.prototype.canDash = function()
	{
		const actor = $gameParty.leader()

		if (actor != null)
		{
			for (const key in lewdBaseArmors)
			{
				if (lewdBaseArmors.hasOwnProperty(key))
				{
					if (actor.hasNote(2, "BODY contains " + key))
					{
						return lewdBaseArmors[key].check(this)
					}
				}
			}
		}

		return Game_Player_canDash.apply(this, arguments)
	}
}

})()
