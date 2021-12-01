/*:
 * @plugindesc	Save & restore fit mode setting.
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

	const ADV_System_initialize = ADV_System.prototype.initialize

	ADV_System.prototype.initialize = function()
	{
		ADV_System_initialize.apply(this, arguments)

		this.BS_BASE_X = Graphics.boxWidth / 2
		this.BS_BASE_Y = Graphics.boxHeight - 624/2	// this.boxHeight / 2
	}

	//=============================================================================
	// SceneManager
	//=============================================================================

	const SceneManager_initGraphics = SceneManager.initGraphics

	SceneManager.initGraphics = function()
	{
		SceneManager_initGraphics.apply(this, arguments)

		//if (!Graphics._isFullScreen)
		//if (!ConfigManager.startUpFullScreen)
		{
			Graphics.applyFitMode()
		}
	}

	//=============================================================================
	// Scene_Boot
	//=============================================================================
	/*
	const Scene_Boot_start = Scene_Boot.prototype.start

	Scene_Boot.prototype.start = function()
	{
		Scene_Boot_start.call(this)

		this.applyFitMode()

		switch (ConfigManager.fitMode)
		{
			case 0:
				//Graphics.restoreDefaultSize()
				break

			case 1:
				Graphics.fitToWidth()
				break

			case 2:
				Graphics.fitToHeight()
				break

			case 3:
				Graphics.fitToAll()
				break
		}
	}
	*/

	//=============================================================================
	// Graphics
	//=============================================================================

	Graphics.changeResolution = function(width, height)
	{
		this._width = width || 800
		this._height = height || 600
		this._boxWidth = this._width
		this._boxHeight = this._height

		this._scale = 1
		this._realScale = 1

		this._updateRealScale()
		this._updateAllElements()

		this.onResolutionChanged()
	}

	Graphics.onResolutionChanged = function()
	{
		if (typeof $advSystem !== "undefined"
			&& $advSystem)
		{
			$advSystem.BS_BASE_X = this.boxWidth / 2
			$advSystem.BS_BASE_Y = this.boxHeight - 624/2	// this.boxHeight / 2
		}
	}

	const Graphics_switchFullScreen = Graphics._switchFullScreen

	Graphics._switchFullScreen = function()
	{
		Graphics_switchFullScreen.apply(this, arguments)

		this.applyFitMode()
	}

	const Graphics_onWindowResize = Graphics._onWindowResize

	Graphics._onWindowResize = function()
	{
		Graphics_onWindowResize.apply(this, arguments)

		this.applyFitMode()
	}

	Graphics.restoreDefaultSize = function()
	{
		this.changeResolution(816, 624)

		//ConfigManager.windowWidth = 816
		//ConfigManager.windowHeight = 624
	}

	Graphics.fitToWidth = function()
	{
		const width = Math.min(window.innerWidth, 816*3)

		this.changeResolution(width, Graphics.height)
	}

	Graphics.fitToHeight = function()
	{
		const height = Math.min(window.innerHeight, 624*3)

		this.changeResolution(Graphics.width, height)
	}

	Graphics.fitToAll = function()
	{
		const width = Math.min(window.innerWidth, 816*3)
		const height = Math.min(window.innerHeight, 624*3)

		this.changeResolution(width, height)
	}

	Graphics.applyFitMode = function()
	{
		switch (ConfigManager.fitMode)
		{
			case 0:
				Graphics.restoreDefaultSize()
				break

			case 1:
				Graphics.fitToWidth()
				break

			case 2:
				Graphics.fitToHeight()
				break

			case 3:
				Graphics.fitToAll()
				break
		}
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_setConfigValue = Window_Options.prototype.setConfigValue

	Window_Options.prototype.setConfigValue = function(symbol, volume)
	{
		Window_Options_setConfigValue.apply(this, arguments)

		if (symbol === "fitMode")
		{
			if (ConfigManager.fitMode === 1)
			{
				Graphics.fitToWidth()
			}
			else if (ConfigManager.fitMode === 2)
			{
				Graphics.fitToHeight()
			}
		}
	}

	//=============================================================================
	// window
	//=============================================================================

	let isReloading = false

	// TODO: eh, it'd probably be a good idea to do this in some initialization methods...
	window.addEventListener("load", function(e)
	{
		isReloading = true
	})

	//=============================================================================
	// Scene_Boot
	//=============================================================================

	const Scene_Boot_start = Scene_Boot.prototype.start

	Scene_Boot.prototype.start = function()
	{
		Scene_Boot_start.apply(this, arguments)

		if (isReloading)
		{
			//if (!ConfigManager.startUpFullScreen)
			//if (ConfigManager.fitMode > 0)
			{
				Graphics.applyFitMode()
			}

			isReloading = false
		}
	}
}

})()
