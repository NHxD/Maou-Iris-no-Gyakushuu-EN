/*:
 * @plugindesc	Save & restore fullscreen setting.
 *
 * @author		ash
 *
 * @require		StartUpFullScreen
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Graphics
	//=============================================================================

	const Graphics_requestFullScreen = Graphics._requestFullScreen

	Graphics._requestFullScreen = function()
	{
		Graphics_requestFullScreen.apply(this, arguments)

		ConfigManager.startUpFullScreen = true
	}

	const Graphics_cancelFullScreen = Graphics._cancelFullScreen

	Graphics._cancelFullScreen = function()
	{
		Graphics_cancelFullScreen.apply(this, arguments)

		ConfigManager.startUpFullScreen = false
	}

	Graphics.requestFullScreen = function()
	{
		this._requestFullScreen()
	}

	Graphics.cancelFullScreen = function()
	{
		this._cancelFullScreen()
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_setConfigValue = Window_Options.prototype.setConfigValue

	Window_Options.prototype.setConfigValue = function(symbol, volume)
	{
		Window_Options_setConfigValue.apply(this, arguments)

		if (symbol === "startUpFullScreen")
		{
			if (ConfigManager.startUpFullScreen)
			{
				Graphics.requestFullScreen()
			}
			else
			{
				Graphics.cancelFullScreen()
			}
		}
	}
}

})()
