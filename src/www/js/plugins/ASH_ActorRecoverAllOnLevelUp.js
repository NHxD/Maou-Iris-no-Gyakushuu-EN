/*:
 * @plugindesc	make actors recover all HP, MP, and TP
 *				when they level up.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Actor
	//=============================================================================

	const Game_Actor_levelUp = Game_Actor.prototype.levelUp

	Game_Actor.prototype.levelUp = function()
	{
		Game_Actor_levelUp.apply(this, arguments)
		
		if (ConfigManager.recoverAllOnLevelUp)
		{
			this.recoverAll()
		}
	}
}

})()
