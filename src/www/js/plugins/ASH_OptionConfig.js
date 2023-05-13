/*:
 * @plugindesc	Advanced configurable options.
 *
 * @author		ash
 *
 * @require
 */

(function() {
	"use strict"

	const pluginName = "ASH_OptionConfig"

// Localize general options.
{
	//=============================================================================
	// Window_Options
	//=============================================================================

	Window_Options.prototype.addGeneralOptions = function()
	{
	    this.addCommand(TS_Function.getLanguage("alwaysDash"), 'alwaysDash')
	    this.addCommand(TS_Function.getLanguage("commandRemember"), 'commandRemember')
	}
}

// Localize volume options.
{
	//=============================================================================
	// Window_Options
	//=============================================================================

	Window_Options.prototype.addVolumeOptions = function()
	{
		this.addCommand(TS_Function.getLanguage("bgmVolume"), "bgmVolume")
		this.addCommand(TS_Function.getLanguage("bgsVolume"), "bgsVolume")
		this.addCommand(TS_Function.getLanguage("meVolume"), "meVolume")
		this.addCommand(TS_Function.getLanguage("seVolume"), "seVolume")
	}
}

// Custom drawing for separators.
{
	//=============================================================================
	// Window_Command
	//=============================================================================

	Window_Command.prototype.isCommandSeparator = function(index)
	{
		return this._list[index].name === "---"
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_drawItem = Window_Options.prototype.drawItem

	Window_Options.prototype.drawItem = function(index)
	{
		if (this.isCommandSeparator(index))
		{
			return
		}

		Window_Options_drawItem.call(this, index)
	}
}

// Make it possible to refresh the whole menu when a command item change requires it.
{
	const forceRefreshSymbols = [ "langSelect"/*, "fitMode"*/ ]

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_changeValue = Window_Options.prototype.changeValue

	Window_Options.prototype.changeValue = function(symbol, value)
	{
		const lastValue = this.getConfigValue(symbol)

		Window_Options_changeValue.call(this, symbol, value)

		if (lastValue !== value
			&& forceRefreshSymbols.contains(symbol))
		{
		    this.refresh()
		}
	}
}

// Make it impossible to change values of disabled command items.
{
	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_processOk = Window_Options.prototype.processOk

	Window_Options.prototype.processOk = function()
	{
	    const index = this.index()

	    if (!this.isCommandEnabled(index))
	    {
	    	return
	    }

	    Window_Options_processOk.call(this)
	}

	const Window_Options_cursorRight = Window_Options.prototype.cursorRight

	Window_Options.prototype.cursorRight = function(wrap)
	{
	    const index = this.index()

	    if (!this.isCommandEnabled(index))
	    {
	    	return
	    }

		Window_Options_cursorRight.call(this, wrap)
	}

	const Window_Options_cursorLeft = Window_Options.prototype.cursorLeft

	Window_Options.prototype.cursorLeft = function(wrap)
	{
	    const index = this.index()

	    if (!this.isCommandEnabled(index))
	    {
	    	return
	    }

		Window_Options_cursorLeft.call(this, wrap)
	}
}

// Display some command items as being not available when disabled. 
{
	const naSymbols = [ "useEndureSystem" ]

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_statusText = Window_Options.prototype.statusText

	Window_Options.prototype.statusText = function(index)
	{
	    const symbol = this.commandSymbol(index)
	    const enabled = this.isCommandEnabled(index)
	    const value = this.getConfigValue(symbol)

	    if (!enabled
	    	&& naSymbols.contains(symbol))
	    {
	    	return this.notAvailableStatusText()
	    }

		return Window_Options_statusText.call(this, index)
	}

	Window_Options.prototype.notAvailableStatusText = function()
	{
	    return TS_Function.getLanguage("NotAvailable")
	}
}

// Add custom options.
{
	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager.showAdultContent = true
	ConfigManager.startGameNaked = true
	ConfigManager.useEndureSystem = true
	ConfigManager.showBlackFrames = true
	ConfigManager.showStandZoomTransitions = true
	ConfigManager.autoAdvanceMessage = false
	ConfigManager.useOriginalNames = true
	ConfigManager.showDimOverlay = true
	ConfigManager.allowContinueAfterDefeat = false
	ConfigManager.recoverAllOnContinue = false
	ConfigManager.recoverAllOnLevelUp = false
	ConfigManager.playBalloonSE = false

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.call(this, config)

		if (config.hasOwnProperty("showAdultContent"))
		{
			this.showAdultContent = this.readFlag(config, "showAdultContent")
		}

		if (config.hasOwnProperty("startGameNaked"))
		{
			this.startGameNaked = this.readFlag(config, "startGameNaked")
		}

		if (config.hasOwnProperty("useEndureSystem"))
		{
			this.useEndureSystem = this.readFlag(config, "useEndureSystem")
		}

		if (config.hasOwnProperty("showBlackFrames"))
		{
			this.showBlackFrames = this.readFlag(config, "showBlackFrames")
		}

		if (config.hasOwnProperty("showStandZoomTransitions"))
		{
			this.showStandZoomTransitions = this.readFlag(config, "showStandZoomTransitions")
		}

		if (config.hasOwnProperty("autoAdvanceMessage"))
		{
			this.autoAdvanceMessage = this.readFlag(config, "autoAdvanceMessage")
		}

		if (config.hasOwnProperty("useOriginalNames"))
		{
			this.useOriginalNames = this.readFlag(config, "useOriginalNames")
		}

		if (config.hasOwnProperty("showDimOverlay"))
		{
			this.showDimOverlay = this.readFlag(config, "showDimOverlay")
		}

		if (config.hasOwnProperty("allowContinueAfterDefeat"))
		{
			this.allowContinueAfterDefeat = this.readFlag(config, "allowContinueAfterDefeat")
		}

		if (config.hasOwnProperty("recoverAllOnContinue"))
		{
			this.recoverAllOnContinue = this.readFlag(config, "recoverAllOnContinue")
		}

		if (config.hasOwnProperty("recoverAllOnLevelUp"))
		{
			this.recoverAllOnLevelUp = this.readFlag(config, "recoverAllOnLevelUp")
		}

		if (config.hasOwnProperty("playBalloonSE"))
		{
			this.playBalloonSE = this.readFlag(config, "playBalloonSE")
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.call(this)

		config.showAdultContent = this.showAdultContent
		config.startGameNaked = this.startGameNaked
		config.useEndureSystem = this.useEndureSystem
		config.showBlackFrames = this.showBlackFrames
		config.showStandZoomTransitions = this.showStandZoomTransitions
		config.autoAdvanceMessage = this.autoAdvanceMessage
		config.useOriginalNames = this.useOriginalNames
		config.showDimOverlay = this.showDimOverlay
		config.allowContinueAfterDefeat = this.allowContinueAfterDefeat
		config.recoverAllOnContinue = this.recoverAllOnContinue
		config.recoverAllOnLevelUp = this.recoverAllOnLevelUp
		config.playBalloonSE = this.playBalloonSE

		return config
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_addGeneralOptions = Window_Options.prototype.addGeneralOptions

	Window_Options.prototype.addGeneralOptions = function()
	{
		Window_Options_addGeneralOptions.apply(this, arguments)

		this.addCommand(TS_Function.getLanguage("ShowAdultContent"), "showAdultContent", this.isShowAdultContentEnabled())
		this.addCommand(TS_Function.getLanguage("StartGameNaked"), "startGameNaked", this.isStartGameNakedEnabled())
		this.addCommand(TS_Function.getLanguage("UseEndureSystem"), "useEndureSystem", this.isEndureSystemEnabled())
		this.addCommand(TS_Function.getLanguage("ShowBlackFrames"), "showBlackFrames", this.isShowBlackFramesEnabled())
		this.addCommand(TS_Function.getLanguage("ShowStandZoomTransitions"), "showStandZoomTransitions", true)
		this.addCommand(TS_Function.getLanguage("AutoAdvanceMessage"), "autoAdvanceMessage", true)
		this.addCommand(TS_Function.getLanguage("UseOriginalNames"), "useOriginalNames", true)
		this.addCommand(TS_Function.getLanguage("ShowDimOverlay"), "showDimOverlay", this.isShowDimOverlayEnabled())
		this.addCommand(TS_Function.getLanguage("AllowContinueAfterDefeat"), "allowContinueAfterDefeat", this.isAllowContinueAfterDefeatEnabled())
		this.addCommand(TS_Function.getLanguage("RecoverAllOnContinue"), "recoverAllOnContinue", this.isRecoverAllOnContinueEnabled())
		this.addCommand(TS_Function.getLanguage("RecoverAllOnLevelUp"), "recoverAllOnLevelUp", this.isRecoverAllOnLevelUpEnabled())
		this.addCommand(TS_Function.getLanguage("PlayBalloonSE"), "playBalloonSE", true)
	}

	Window_Options.prototype.isShowAdultContentEnabled = function()
	{
		return true
	}

	Window_Options.prototype.isStartGameNakedEnabled = function()
	{
		// NOTE: this is meaningful only before a game is started so forbid changes mid-game.
		return SceneManager.isPreviousScene(Scene_Title)
	}

	Window_Options.prototype.isEndureSystemEnabled = function()
	{
		return true
	}
	
	Window_Options.prototype.isShowBlackFramesEnabled = function()
	{
		return true
	}

	Window_Options.prototype.isShowDimOverlayEnabled = function()
	{
		// NOTE: it's too troublesome to handle changes at run-time.
		return SceneManager.isPreviousScene(Scene_Title)
	}

	Window_Options.prototype.isAllowContinueAfterDefeatEnabled = function()
	{
		return true
	}

	Window_Options.prototype.isRecoverAllOnContinueEnabled = function()
	{
		return true
	}

	Window_Options.prototype.isRecoverAllOnLevelUpEnabled = function()
	{
		return true
	}
}

// Add some more core options.
{
	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager.stretchMode = true

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.call(this, config)

		if (config.hasOwnProperty("stretchMode"))
		{
			this.stretchMode = this.readFlag(config, "stretchMode")
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.call(this)

		config.stretchMode = this.stretchMode

		return config
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_addGeneralOptions = Window_Options.prototype.addGeneralOptions

	Window_Options.prototype.addGeneralOptions = function()
	{
		Window_Options_addGeneralOptions.apply(this, arguments)

		this.addCommand(TS_Function.getLanguage("stretchMode"), "stretchMode", this.isStretchModeEnabled())
	}

	Window_Options.prototype.isStretchModeEnabled = function()
	{
		return true
	}

	const Graphics_switchStretchMode = Graphics._switchStretchMode

	Graphics._switchStretchMode = function()
	{
		Graphics_switchStretchMode.call(this)

		if (typeof SceneManager._scene._optionsWindow !== "undefined")
		{
			SceneManager._scene._optionsWindow.changeValue("stretchMode", this._stretchEnabled)
		}
	}

	const Graphics_switchFullScreen = Graphics._switchFullScreen

	Graphics._switchFullScreen = function()
	{
		Graphics_switchFullScreen.call(this)

		if (typeof SceneManager._scene._optionsWindow !== "undefined")
		{
			// FIXME: doesn't work.
			//setTimeout((function() { SceneManager._scene._optionsWindow.changeValue("startUpFullScreen", this._isFullScreen()); }).bind(this), 1000)
		}
	}
}

// Add some more core options.
{
	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager.fitMode = 0

	ConfigManager.SymbolSpecialVal["fitMode"] = 3

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.call(this, config)

		if (config.hasOwnProperty("fitMode"))
		{
			this.fitMode = this.readEnum(config, "fitMode", { none: 0, width: 1, height: 2 })
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.call(this)

		config.fitMode = this.fitMode

		return config
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_addGeneralOptions = Window_Options.prototype.addGeneralOptions

	Window_Options.prototype.addGeneralOptions = function()
	{
		Window_Options_addGeneralOptions.apply(this, arguments)

		this.addCommand(TS_Function.getLanguage("fitMode"), "fitMode", this.isFitModeEnabled())
	}

	Window_Options.prototype.isFitModeEnabled = function()
	{
		return true
	}

	ConfigManager.readEnum = function(config, name, pairs)
	{
		const value = config[name]

		if (value !== undefined)
		{
			return Number(value)
		}
		else
		{
			return 0
		}
	}

	const Window_Options_statusText = Window_Options.prototype.statusText

	Window_Options.prototype.statusText = function(index)
	{
		const symbol = this.commandSymbol(index)
		const value = this.getConfigValue(symbol)

		if (this.isEnumSymbol(symbol))
		{
			return this.enumStatusText(value)
		}

		return Window_Options_statusText.call(this, index)
	}

	Window_Options.prototype.isEnumSymbol = function(symbol)
	{
		return symbol === "fitMode"
		//return symbol.contains('Enum[')
	}

	Window_Options.prototype.enumStatusText = function(value)
	{
		return TS_Function.getLanguage("fitMode_Value"
			+ (value === 1 ? "Width"
			: value === 2 ? "Height"
			: value === 3 ? "All"
			: "None"))
	}

	const Window_Options_processOk = Window_Options.prototype.processOk

	Window_Options.prototype.processOk = function()
	{
	    const index = this.index()
	    const symbol = this.commandSymbol(index)

	    if (this.isEnumSymbol(symbol))
	    {
		    let value = this.getConfigValue(symbol)

	        value += this.enumOffset(symbol, value)

	        if (value > 3)
	        {
	            value = 0
	        }

	        value = value.clamp(0, 3)

	        this.changeValue(symbol, value)

	        return
	    }

	    Window_Options_processOk.call(this)
	}

	const Window_Options_cursorRight = Window_Options.prototype.cursorRight

	Window_Options.prototype.cursorRight = function(wrap)
	{
	    const index = this.index()
	    const symbol = this.commandSymbol(index)

	    if (this.isEnumSymbol(symbol))
	    {
		    let value = this.getConfigValue(symbol)

	        value += this.enumOffset(symbol, value)

	        value = value.clamp(0, 3)

	        this.changeValue(symbol, value)

	        return
	    }

	    Window_Options_cursorRight.call(this, wrap)
	}

	const Window_Options_cursorLeft = Window_Options.prototype.cursorLeft

	Window_Options.prototype.cursorLeft = function(wrap)
	{
	    const index = this.index()
	    const symbol = this.commandSymbol(index)

	    if (this.isEnumSymbol(symbol))
	    {
		    let value = this.getConfigValue(symbol)

	        value -= this.enumOffset(symbol, value)

	        value = value.clamp(0, 3)

	        this.changeValue(symbol, value)

	        return
	    }

	    Window_Options_cursorLeft.call(this, wrap)
	}

	Window_Options.prototype.enumOffset = function(symbol)
	{
	    return 1
	}
}

// Add command grouping.
{
	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_makeCommandList = Window_Options.prototype.makeCommandList

	Window_Options.prototype.makeCommandList = function()
	{
		Window_Options_makeCommandList.call(this)

		this.makeCommandListGroups()
	}

	Window_Options.prototype.makeCommandListGroups = function()
	{
		this.addGroup(TS_Function.getLanguage("Display"), "*display")
		this.addGroup(TS_Function.getLanguage("Audio"), "*audio")
		this.addGroup(TS_Function.getLanguage("System"), "*system")
		this.addGroup(TS_Function.getLanguage("Game"), "*game")
		//this.addGroup(TS_Function.getLanguage("Debug"), "*debug")

		this._sortedList = []

		this.moveCommandToGroup("*display", [ "langSelect", "stretchMode", "fitMode", "startUpFullScreen", "showBlackFrames", "showStandZoomTransitions", "coloredItemNames", "showAdultContent", "showMorale", "useOriginalNames", "playBalloonSE" ])
		this.moveCommandToGroup("*audio", [ "bgmVolume", "bgsVolume", "meVolume", "seVolume" ])
		this.moveCommandToGroup("*system", [ "precacheImages" ])
		this.moveCommandToGroup("*game", [ "alwaysDash", "commandRemember", "startGameNaked", "showDimOverlay", "useEndureSystem", "allowContinueAfterDefeat", "recoverAllOnContinue", "recoverAllOnLevelUp" ])	//"autoAdvanceMessage"
		//this.moveCommandToGroup("*debug", [ "testCommonEvent", "transferPlayer" ])

		if (this._sortedList.length > 0)
		{
			this._list = this._sortedList
		}

		//this._selectDirection = 0
	}

	Window_Options.prototype.addGroup = function(displayName, symbol)
	{
		this.addCommand(displayName, symbol)
	}

	Window_Options.prototype.moveCommandToGroup = function(groupName, commands)
	{
		{
			const groupIndex = this.findSymbol(groupName)

			if (groupIndex === -1)
			{
				console.warn("invalid group name", groupName)
				return
			}

			this._sortedList.push(this._list[groupIndex])
		}

		if (typeof commands === "string")
		{
			commands = [ commands ]
		}
		else if (!Array.isArray(commands))
		{
			console.warn("Window_Options.moveCommandToGroup: <commands> must be an array. Got", typeof commands)
			return
		}

		commands.forEach(function(element, index)
		{
			const commandIndex = this.findSymbol(element)

			if (commandIndex === -1)
			{
				console.warn("invalid symbol name", element, "at", index)
				return
			}

			this._sortedList.push(this._list[commandIndex])
		}, this)
	}

	const Window_Options_drawItem = Window_Options.prototype.drawItem

	Window_Options.prototype.drawItem = function(index)
	{
		if (this.isCommandGroup(index))
		{
			this.drawGroupItem(index)
			return
		}

		Window_Options_drawItem.call(this, index)
	}

	Window_Options.prototype.drawGroupItem = function(index)
	{
		const rect = this.itemRectForText(index)

		this.changeTextColor(this.systemColor())
		this.changePaintOpacity(true)
		this.drawText(this.commandName(index), rect.x, rect.y, rect.width, "left")
	}
	// not working correctly...
	/*
	const Window_Options_select = Window_Options.prototype.select

	Window_Options.prototype.select = function(index)
	{
		if (this._selectDirection
			&& index >= 0
			&& index <= this._list.length - 1
			&& this.isCommandGroup(index))
		{
			if (this._selectDirection === 1
				&& index === this._list.length - 1)
			{
				this._index = 0
				this._stayCount = 0
				this.ensureCursorVisible()
				this.updateCursor()
				this.callUpdateHelp()

				this.select(1)
			}
			else if (this._selectDirection === -1
					&& index === 0)
			{
				this.select(this._list.length - 1)
			}
			else
			{
				this.select(index + 1 * this._selectDirection)
			}

			return
		}

		this._selectDirection = 1

		Window_Options_select.call(this, index)
	}

	const Window_Selectable_cursorDown = Window_Selectable.prototype.cursorDown

	Window_Selectable.prototype.cursorDown = function(wrap)
	{
		this._selectDirection = 1
		Window_Selectable_cursorDown.call(this, wrap)
	}

	const Window_Selectable_cursorUp = Window_Selectable.prototype.cursorUp

	Window_Selectable.prototype.cursorUp = function(wrap)
	{
		this._selectDirection = -1
		Window_Selectable_cursorUp.call(this, wrap)
	}

	const Window_Selectable_cursorRight = Window_Selectable.prototype.cursorRight

	Window_Selectable.prototype.cursorRight = function(wrap)
	{
		this._selectDirection = 1
		Window_Selectable_cursorRight.call(this, wrap)
	}

	const Window_Selectable_cursorLeft = Window_Selectable.prototype.cursorLeft

	Window_Selectable.prototype.cursorLeft = function(wrap)
	{
		this._selectDirection = -1
		Window_Selectable_cursorLeft.call(this, wrap)
	}

	const Window_Selectable_cursorPagedown = Window_Selectable.prototype.cursorPagedown

	Window_Selectable.prototype.cursorPagedown = function()
	{
		this._selectDirection = 1
		Window_Selectable_cursorPagedown.call(this)
	}

	const Window_Selectable_cursorPageup = Window_Selectable.prototype.cursorPageup

	Window_Selectable.prototype.cursorPageup = function()
	{
		this._selectDirection = -1
		Window_Selectable_cursorPageup.call(this)
	}
	*/
	//=============================================================================
	// Window_Command
	//=============================================================================

	Window_Command.prototype.isCommandGroup = function(index)
	{
		return this.commandSymbol(index).startsWith("*")
	}
}

// Remember window settings.
{
	//=============================================================================
	// ConfigManager
	//=============================================================================

	Object.defineProperty(ConfigManager, "windowWidth",
	{
	    get: function()
	    {
	        return require('nw.gui').Window.get().width
	    },
	    set: function(value)
	    {
	    	if (!ConfigManager.startUpFullScreen)
	    	{
		    	const guiWindow = require('nw.gui').Window.get()

		    	if (guiWindow.width != value)
		    	{
		    		guiWindow.width = value
		    	}
		    }
	    },
	    configurable: true
	})

	Object.defineProperty(ConfigManager, "windowHeight",
	{
	    get: function()
	    {
	        return require('nw.gui').Window.get().height
	    },
	    set: function(value)
	    {
	    	if (!ConfigManager.startUpFullScreen)
	    	{
		    	const guiWindow = require('nw.gui').Window.get()

		    	if (guiWindow.height != value)
		    	{
		    		guiWindow.height = value
		    	}
		    }
	    },
	    configurable: true
	})

	Object.defineProperty(ConfigManager, "windowX",
	{
	    get: function()
	    {
	        return require('nw.gui').Window.get().x
	    },
	    set: function(value)
	    {
	    	if (!ConfigManager.startUpFullScreen)
	    	{
		    	const guiWindow = require('nw.gui').Window.get()

		    	if (guiWindow.x != value)
		    	{
		    		guiWindow.x = value
		    	}
		    }
	    },
	    configurable: true
	})

	Object.defineProperty(ConfigManager, "windowY",
	{
	    get: function()
	    {
	        return require('nw.gui').Window.get().y
	    },
	    set: function(value)
	    {
	    	if (!ConfigManager.startUpFullScreen)
	    	{
		    	const guiWindow = require('nw.gui').Window.get()

		    	if (guiWindow.y != value)
		    	{
		    		guiWindow.y = value
		    	}
	    	}
	    },
	    configurable: true
	})

	ConfigManager.readInt = function(config, name, defaultValue)
	{
	    const value = config[name]

	    if (value !== undefined)
	    {
	        return Number(value)
	    }
	    else
	    {
	        return defaultValue
	    }
	}

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.call(this, config)

		if (ConfigManager.fitMode > 0)
		{
			if (config.hasOwnProperty("windowWidth"))
			{
				this.windowWidth = this.readInt(config, "windowWidth", 800)
			}

			if (config.hasOwnProperty("windowHeight"))
			{
				this.windowHeight = this.readInt(config, "windowHeight", 600)
			}
		}

		if (config.hasOwnProperty("windowX"))
		{
			this.windowX = this.readInt(config, "windowX", 0)
		}

		if (config.hasOwnProperty("windowY"))
		{
			this.windowY = this.readInt(config, "windowY", 0)
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.call(this)

		config.windowWidth = this.windowWidth
		config.windowHeight = this.windowHeight
		config.windowX = this.windowX
		config.windowY = this.windowY

		return config
	}
}

// restore japanese language option.
{
	const Window_Options_processOk = Window_Options.prototype.processOk

	Window_Options.prototype.processOk = function()
	{
		const index = this.index()
		const symbol = this.commandSymbol(index)
		let value = this.getConfigValue(symbol)

		if (this.isVolumeSymbol(symbol))
		{
			value += this.volumeOffset()

			if (value > 100)
			{
				value = 0
			}

			value = value.clamp(0, 100)

			this.changeValue(symbol, value)
		}
		else if (this.isOpacitySymbol(symbol))
		{
			value += this.opacityOffset()

			if (value > 100)
			{
				value = 0
			}

			value = value.clamp(0, 100)

			this.changeValue(symbol, value)
		}
		else if (this.isSymbolCheck(symbol))
		{
			value += 1

			if (value > ConfigManager.SymbolSpecialVal[symbol])
			{
				value = 0
			}

			this.changeValue(symbol, value)
		}
		else
		{
			Window_Options_processOk.apply(this, arguments)
		}
	}
	
	Window_Options.prototype.cursorRight = function(wrap)
	{
		const index = this.index()
		const symbol = this.commandSymbol(index)
		let value = this.getConfigValue(symbol)

		if (this.isVolumeSymbol(symbol))
		{
			value += this.volumeOffset()

			if (value > 100)
			{
				value = 0
			}

			value = value.clamp(0, 100)

			this.changeValue(symbol, value)
		}
		else if (this.isOpacitySymbol(symbol))
		{
			value += this.opacityOffset()

			if (value > 100)
			{
				value = 0
			}

			value = value.clamp(0, 100)

			this.changeValue(symbol, value)
		}
		else if (this.isSymbolCheck(symbol))
		{
			value += 1

			if (value > ConfigManager.SymbolSpecialVal[symbol])
			{
				value = 0
			}

			this.changeValue(symbol, value)
		}
		else
		{
			this.changeValue(symbol, true)
		}
	}
	
	Window_Options.prototype.cursorLeft = function(wrap)
	{
		const index = this.index()
		const symbol = this.commandSymbol(index)
		let value = this.getConfigValue(symbol)

		if (this.isVolumeSymbol(symbol))
		{
			value -= this.volumeOffset()

			if (value < 0)
			{
				value = 100
			}

			value = value.clamp(0, 100)

			this.changeValue(symbol, value)
		}
		else if (this.isOpacitySymbol(symbol))
		{
			value -= this.opacityOffset()

			if (value < 0)
			{
				value = 100
			}

			value = value.clamp(0, 100)

			this.changeValue(symbol, value)
		}
		else if (this.isSymbolCheck(symbol))
		{
			value -= 1

			if (value < 0)
			{
				value = ConfigManager.SymbolSpecialVal[symbol]
			}

			this.changeValue(symbol, value)
		}
		else
		{
			this.changeValue(symbol, false)
		}
	}
}

})()
