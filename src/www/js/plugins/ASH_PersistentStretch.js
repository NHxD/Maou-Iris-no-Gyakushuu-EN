/*:
 * @plugindesc	Save & restore stretch mode setting.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Scene_Boot
	//=============================================================================

    const Scene_Boot_start = Scene_Boot.prototype.start

    Scene_Boot.prototype.start = function()
    {
        Scene_Boot_start.apply(this, arguments)

		if (ConfigManager.stretchMode)
		{
			Graphics.enableStretchMode()
		}
		else
		{
			Graphics.disableStretchMode()
		}
    }

	//=============================================================================
	// Graphics
	//=============================================================================

	const Graphics_switchStretchMode = Graphics._switchStretchMode

	Graphics._switchStretchMode = function()
	{
		Graphics_switchStretchMode.apply(this, arguments)
		
		ConfigManager.stretchMode = this._stretchEnabled
	}

	Graphics.enableStretchMode = function()
	{
		this._stretchEnabled = true
		this._updateAllElements()
	}

	Graphics.disableStretchMode = function()
	{
		this._stretchEnabled = false
		this._updateAllElements()
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_setConfigValue = Window_Options.prototype.setConfigValue

	Window_Options.prototype.setConfigValue = function(symbol, volume)
	{
		Window_Options_setConfigValue.apply(this, arguments)

		if (symbol === "stretchMode")
		{
			if (ConfigManager.stretchMode)
			{
				Graphics.enableStretchMode()
			}
			else
			{
				Graphics.disableStretchMode()
			}
		}
	}
}

})()
