/*:
 * @plugindesc	macro to choose automatically the best direction to display a stand picture.
 *				(used when speaking to an NPC that has a stand picture, such as sonia or zexy.)
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

{
	const autoMacroRegex = /(\s+)(in|out)=(auto|rel|rev)/g

	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_macroRun = ADV_System.prototype.macroRun

	ADV_System.prototype.macroRun = function(macro)
	{
		if (macro.startsWith("@move_f ") !== -1)
		{
			const match = macro.match(autoMacroRegex)

			if (match)
			{
				const playerDirection = $gamePlayer.direction()
				let dir = ""

				if (playerDirection === 4)
				{
					dir = match[3] === "rev" ? " $2=r" : " $2=l"
				}
				else if (playerDirection === 6)
				{
					dir = match[3] === "rev" ? " $2=l" : " $2=r"
				}
				else
				{
					dir = " $2=m"
				}

				macro = macro.replace(autoMacroRegex, dir)
			}
		}

		ADV_System_macroRun.call(this, macro)
	}
}

})()
