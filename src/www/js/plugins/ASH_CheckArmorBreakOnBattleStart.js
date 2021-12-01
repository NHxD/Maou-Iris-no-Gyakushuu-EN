/*:
 * @plugindesc	apply armor breaking upon entering a battle if necessary.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Spriteset_Battle
	//=============================================================================

	const Spriteset_Battle_changeStand = Spriteset_Battle.prototype.changeStand

	Spriteset_Battle.prototype.changeStand = function(name)
	{
		Spriteset_Battle_changeStand.apply(this, arguments)

		if ($gameParty.inBattle())
		{
			$gameParty.aliveMembers().forEach(function(member)
			{
				member.gainHp(0)
				//SceneManager._scene._spriteset.standBreak(member.name(true))
			})
		}
	}
}

})()
