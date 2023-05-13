/*:
 * @plugindesc	Override @huki command to add support for sound effect.
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
		if (macro.indexOf('@huki ') !== -1)
		{
			const argument = this.makeArg(macro, { id:-1, wt:0, se:1 }, [ "b", "wt", "id", "wt", "se" ])

			if (argument['b'] == null)
			{
				return
			}

			if (ConfigManager.playBalloonSE)
			{
				argument['se'] = Number(argument['se'])

				if (argument['se'])
				{
					const se = this.makeArg("@se", { pan:0, pitch:100, vol:90 }, [ "name", "pitch", "vol" ])

					se['name'] = 'huki_' + (argument['b'] < 10 ? '0' : '') + argument['b'].toString()
					se['pitch'] = Number(se['pitch'])
					se['volume'] = Number(se['vol'])

					AudioManager.playSe(se)
				}
			}
		}

		ADV_System_macroRun.call(this, macro)
	}
}

})()
