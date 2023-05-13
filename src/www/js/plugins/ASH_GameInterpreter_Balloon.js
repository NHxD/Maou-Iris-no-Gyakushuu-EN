/*:
 * @plugindesc	Add optional sound effects when requesting a balloon
 *				from the game interpreter.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_command213 = Game_Interpreter.prototype.command213

	// Show Balloon Icon
	Game_Interpreter.prototype.command213 = function()
	{
		if (ConfigManager.playBalloonSE)
		{
			const b = this._params[1]
			const se = { name: "huki_" + (b < 10 ? '0' : '') + b.toString(), pan:0, pitch:100, volume:90 }

			AudioManager.playSe(se)
		}

		return Game_Interpreter_command213.call(this)
	}
}

})()
