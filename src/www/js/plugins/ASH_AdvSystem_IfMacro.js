/*:
 * @plugindesc	Add macro commands to execute macro when conditions are met.
 *
 * @obsolete
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

// DO NOT USE
{
	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_macroChange = ADV_System.prototype.macroChange

	ADV_System.prototype.macroChange = function(macro)
	{
		const c_macro = []
		
		if (macro.indexOf('@if') != -1)
		{
			const argument = this.makeArg(macro, {})

			if (argument['eval'] == null)
				return

			if (argument['ok'] == null && argument['bad'] == null)
				return
			
			argument['eval'] = argument['eval']
				.replace('s(','$gameSwitches.value(')
				.replace('v(','$gameVariables.value(')
			
			let result = null

			if (eval(argument['eval']))
			{
				result = argument['ok']
			}
			else
			{
				result = argument['bad']
			}
			
			if (result)
			{
				const r_data = result.split(':')
				/*
				if( r_data[0] == 'calc' )
				{
					r_data[1] = r_data[1]
						.replace("set_s(", "$gameSwitches.setValue(")
						.replace("set_v(", "$gameVariables.setValue(")
						.replace("s(", "$gameSwitches.value(")
						.replace("v(", "$gameVariables.value(")

					eval(r_data[1])
				}
				else if( r_data[0] == "jump" )
				{
					this.jumpLabel(r_data[1])
				}
				*/
				if (r_data[0] == "macro")
				{
					const macros = r_data[1].split('|')

					macros.forEach(function(macro) {
						c_macro.push(macro)
					})

					return c_macro
				}
			}
		}

		return ADV_System_macroChange.apply(this, arguments)
	}
}

})()
