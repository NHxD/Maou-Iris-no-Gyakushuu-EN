/*:
 * @plugindesc	
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

// DO NOT USE (use ASHED_AdvSystem instead)
{
	const ADV_System_getCharacter = ADV_System.prototype.getCharacter

	ADV_System.prototype.getCharacter = function(id)
	{
		const result = ADV_System_getCharacter.apply(this, arguments)

		if (result == null)
		{
			console.error("invalid character id", id)
		}

		return result
	}

	ADV_System.prototype.makeArg = function(macro,init,knownProperties)
	{
		const output = {}
		const list = macro.split(' ')
		
		list.shift()
		
		for (let i = 0, len = list.length; i < len; ++i)
		{
			let arg = list[i].split('=')
			const key = arg.shift()

			if (!key)
			{
				console.warn(`${list[i]} has an empty key.`)
			}

			arg = arg.join('=')

			if (!arg)
			{
				console.warn(`${list[i]} has an empty value.`)
			}

			output[key] = arg
		}
		
		for(const key in init)
		{
			if (output[key] == null)
			{
				output[key] = init[key]
			}
		}

		if (arguments.length >= 3
			&& knownProperties
			&& knownProperties.length > 0)
		{
			this.assertArguments(macro, output, knownProperties)
		}

		return output
	}

	ADV_System.prototype.assertArguments = function(caller, argument, knownArguments)
	{
		for (const propertyName in argument)
		{
			if (knownArguments.contains(propertyName))
			{
				console.warn(`${propertyName} is not a valid argument in \"${caller}\".`)
			}
		}
	}
}

})()
