/*:
 * @plugindesc	Add macro commands to clear everything
 *				except the screen state.
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

	const ADV_System_macroChange = ADV_System.prototype.macroChange

	ADV_System.prototype.macroChange = function(macro)
	{
		const c_macro = []
		
		if (macro.indexOf("@clear") !== -1)
		{
			c_macro.push("@se")
			c_macro.push("@bgs")
			c_macro.push("@bgv")
			c_macro.push("@bgm")
			c_macro.push("@bs")
			c_macro.push("@ev")

			return c_macro
		}
		else
		{
			return ADV_System_macroChange.apply(this, arguments)
		}
	}
}

})()
