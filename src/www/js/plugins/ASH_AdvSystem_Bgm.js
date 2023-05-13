/*:
 * @plugindesc	Add macro commands to save & resume BGM.
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

{
	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_macroRun = ADV_System.prototype.macroRun

	ADV_System.prototype.macroRun = function(macro)
	{
		if (macro === "@bgm_save")
		{
			$gameSystem.saveBgm()
		}
		else if (macro === "@bgm_resume")
		{
			$gameSystem.replayBgm()
		}
		else
		{
			ADV_System_macroRun.call(this, macro)
		}
	}
}

})()
