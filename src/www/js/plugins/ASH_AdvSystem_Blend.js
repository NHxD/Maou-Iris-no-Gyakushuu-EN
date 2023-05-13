/*:
 * @plugindesc	add change blend mode route commands to the adv system.
 *
 * @author		ash
 *
 * @require		
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
		if (macro.startsWith("@blend "))
		{
			const argument = this.makeArg(macro, { id:-1, num:0 }, [ "num", "id" ])

			switch (argument["num"].toLowerCase())
			{
				case "normal":
					argument["num"] = 0
					break

				case "add":
					argument["num"] = 1
					break

				case "sub":
					argument["num"] = 2
					break
			}

			argument["num"] = Number(argument["num"])
			
			const route =
			{
				list:
				[
					this.makeRoute(43, [ argument["num"] ]),
					this.makeRoute(0)
				],
				repeat: false,
				skippable: false,
				wait: true
			}
			
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
