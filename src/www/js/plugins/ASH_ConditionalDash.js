/*:
 * @plugindesc	forcibly and temporarly disable dashing while climbing a ladder or walking over bushes.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Player
	//=============================================================================

	const Game_Player_isDashing = Game_Player.prototype.isDashing

	Game_Player.prototype.isDashing = function()
	{
		if (!this.canDash())
		{
			return false
		}

		return Game_Player_isDashing.apply(this, arguments)
	}

	Game_Player.prototype.canDash = function()
	{
		return !$gameMap.isLadder(this._x, this._y)
			// COMMENTED: too annoying because bushes are placed in odd places in some maps, including towns.
			//&& !$gameMap.isBush(this._x, this._y)
	}
}

})()
