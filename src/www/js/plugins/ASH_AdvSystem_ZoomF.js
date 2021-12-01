/*:
 * @plugindesc	add zoom macro.
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
		
		if (macro.indexOf("@zoom_f") !== -1)
		{
			const argument = this.makeArg(macro, { f:"", src:"", t:300 },
				[ "f", "src", "t", "in", "out", "body" ])

			if (!argument["f"])
			{
				console.warn("missing required parameter 'f' in macro", macro)
				return c_macro
			}

			if (!argument.hasOwnProperty("out")
				&& !argument.hasOwnProperty("in"))
			{
				console.warn("missing required parameter 'in' or 'out' in macro", macro)
				return c_macro
			}

			argument["t"] = Number(argument["t"])

			if (!argument["src"])
			{
				// TODO: get this value automatically from the current face bound to this actor.
			}

			let body = ""

			if (argument.hasOwnProperty("body"))
			{
				body = " body=" + argument["body"]
			}

			if (argument.hasOwnProperty("in"))
			{
				if (ConfigManager.showStandZoomTransitions)
				{
					c_macro.push("@move_f f=" +argument["src"]+ " out=" +(argument["in"]==="l"?"r":"l")+ " t=" +(argument["t"]/2) + body)
					c_macro.push("@move_f f=" +argument["f"]+ " body_op=z in=c t=" +(argument["t"]/2) + body)
				}
				else
				{
					c_macro.push("@bs f=" +argument["f"]+ " body_op=z" + body)
				}
			}
			else if (argument.hasOwnProperty("out"))
			{
				if (ConfigManager.showStandZoomTransitions)
				{
					c_macro.push("@move_f f=" +argument["src"]+ " out=" +argument["out"]+ " body_op=z t=" +(argument["t"]/2) + body)
					c_macro.push("@move_f f=" +argument["f"]+ " in=" +argument["out"]+ " t=" +(argument["t"]/2) + body)
				}
				else
				{
					c_macro.push("@bs f=" +argument["f"] + body)
				}
			}

			return c_macro
		}

		return ADV_System_macroChange.apply(this, arguments)
	}
}

})()
