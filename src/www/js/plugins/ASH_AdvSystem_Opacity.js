/*:
 * @plugindesc	add change opacity route commands to the adv system.
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
		if (macro.startsWith("@opacity "))
		{
			const argument = this.makeArg(macro, { id:-1, start:255, end:null, step:1, t:1000, wt:1 }, [ "id", "start", "end", "step", "t", "wt" ])

			if (argument["end"] == null)
			{
				argument["end"] = argument["start"]
			}

			argument["start"] = Number(argument["start"])
			argument["end"] = Number(argument["end"])
			argument["step"] = Number(argument["step"])
			argument["t"] = Number(argument["t"])

			if (argument["step"] < 1)
			{
				argument["step"] = 1
			}

			argument["t"] = this.secToFrame(argument["t"])

			const route =
			{
				list:
				[
					this.makeRoute(42, [ argument["start"] ])
				],
				repeat: false,
				skippable: false,
				wait: Boolean(argument["wt"])
			}

			if (argument["start"] < argument["end"])
			{
				const duration = Math.round(argument["t"] / ((argument["end"] - argument["start"]) / argument["step"]))

				for (let i = argument["start"] + argument["step"]; i < argument["end"]; i += argument["step"])
				{
					route.list.push(this.makeRoute(15, [ duration ]))
					route.list.push(this.makeRoute(42, [ i.clamp(0, 255) ]))
				}
			}
			else if (argument["start"] > argument["end"])
			{
				const duration = Math.round(argument["t"] / ((argument["start"] - argument["end"]) / argument["step"]))

				for (let i = argument["start"] - argument["step"]; i > argument["end"]; i -= argument["step"])
				{
					route.list.push(this.makeRoute(15, [ duration ]))
					route.list.push(this.makeRoute(42, [ i.clamp(0, 255) ]))
				}
			}

			route.list.push(this.makeRoute(0))
			
			this.mWaitData = this.getCharacter(argument["id"])
			this.mWaitData.forceMoveRoute(route)
			
			if (route.wait)
			{
				this.mWaitMode = "route"
			}
		}
		else
		{
			ADV_System_macroRun.apply(this, arguments)
		}
	}
}

})()
