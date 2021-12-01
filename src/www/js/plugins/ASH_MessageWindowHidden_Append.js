/*:
 * @plugindesc    
 *
 * @author        ash
 *
 * @require        
 */

(function () {
	"use strict"

{
	const pluginName = "MessageWindowHidden"

	const getParamString = function(paramNames)
	{
		const value = getParamOther(paramNames)

		return value == null ? '' : value
	}

	const getParamOther = function(paramNames)
	{
		if (!Array.isArray(paramNames)) paramNames = [paramNames]

		for (let i = 0; i < paramNames.length; ++i)
		{
			const name = PluginManager.parameters(pluginName)[paramNames[i]]

			if (name)
			{
				return name
			}
		}

		return null
	}

	const getParamArrayString = function(paramNames, defaultValue)
	{
		const values = getParamString(paramNames)

		return (values || (defaultValue || "")).split(',')
	}

	// there is an issue that ok input isn't cancelled,
	// thus when the window is shown,
	// it'll then proceed to immediately skip to the next message.
/*
	Window_Message.prototype.updateWait = function()
	{
		let show = null

		if (!this.isClosed())
		{
			if (this.isTriggeredHidden())
			{
				show = !this.visible
			}
			else if (this.isTriggeredShow())
			{
				if (!this.visible)
				{
					show = true
				}
			}
		}

		if (show === true)
		{
			this.show()
			this.subWindows().forEach(function(subWindow)
			{
				if (subWindow.prevVisible) subWindow.show()
				subWindow.prevVisible = undefined
			})
		}
		else if (show === false)
		{
			this.hide()
			this.subWindows().forEach(function(subWindow)
			{
				subWindow.prevVisible = subWindow.visible
				subWindow.hide()
			})
		}

		return _Window_Message_updateWait.call(this)
	}

	Window_Message.prototype.isTriggeredShow = function() {
		"use strict"

		return 
			TouchInput.isLongPressed()
			|| Input.isTriggered("ok")
			|| Input.isTriggered("escape")
			|| Input.isTriggered("control")
	}
*/
	Window_Message.prototype.isTriggeredHidden = function()
	{
		const buttonNames = getParamArrayString(["ボタン名称", "TriggerButton"], "right_click,alt")

		for (let i = 0; i < buttonNames.length; ++i)
		{
			const buttonName = buttonNames[i].toLowerCase()

			switch (buttonName)
			{
				case "":
				case "右クリック":
				case "light_click":
				case "right_click":
					if (TouchInput.isCancelled())
					{
						return true
					}
					break

				case "ok":
					return false
					break

				default:
					if (Input.isTriggered(buttonName))
					{
						return true
					}
					break
			}
		}
		
		return false
	}
}

})()
