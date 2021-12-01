/*:
 * @plugindesc	Display the message filename on-screen.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Window_MessageId
	//=============================================================================

	function Window_MessageId()
	{
	    this.initialize.apply(this, arguments)
	}

	Window_MessageId.prototype = Object.create(Window_Gold.prototype);
	Window_MessageId.prototype.constructor = Window_MessageId;

	Window_MessageId.prototype.initialize = function(x, y)
	{
	    Window_Gold.prototype.initialize.call(this, x, y)
	    this.refresh()
	}

	Window_MessageId.prototype.refresh = function()
	{
		const value = this.value()
	    const x = this.textPadding()
	    const width = this.contents.width - this.textPadding() * 2

	    this.contents.clear()
		if (value)
		{
		    this.drawText(value, x, 0, width)
		}
	}

	Window_MessageId.prototype.value = function()
	{
		if (typeof $gameMessage.fileName === "function")
		{
			return $gameMessage.fileName()
		}
		else
		{
			return null
		}
	}

	//=============================================================================
	// Window_Message
	//=============================================================================

	const Window_Message_subWindows = Window_Message.prototype.subWindows

	Window_Message.prototype.subWindows = function()
	{
		const baseSubWindows = Window_Message_subWindows.call(this)

		return baseSubWindows.concat([ this._messageIdWindow ])
	}

	const Window_Message_createSubWindows = Window_Message.prototype.createSubWindows

	Window_Message.prototype.createSubWindows = function()
	{
		Window_Message_createSubWindows.call(this)

		this._messageIdWindow = new Window_MessageId(0, 0)
		this._messageIdWindow.x = Graphics.boxWidth - this._messageIdWindow.width
		this._messageIdWindow.openness = 0
	}

	const Window_Message_startMessage = Window_Message.prototype.startMessage

	Window_Message.prototype.startMessage = function()
	{
		Window_Message_startMessage.call(this)

		if (this._messageIdWindow.value())
		{
			this._messageIdWindow.open()
		}
	}

	const Window_Message_updatePlacement = Window_Message.prototype.updatePlacement

	Window_Message.prototype.updatePlacement = function()
	{
		Window_Message_updatePlacement.call(this)

		this._messageIdWindow.y = this.y > 0 ? 0 : Graphics.boxHeight - this._messageIdWindow.height
	}

	const Window_Message_terminateMessage = Window_Message.prototype.terminateMessage

	Window_Message.prototype.terminateMessage = function()
	{
		Window_Message_terminateMessage.call(this)

		this._messageIdWindow.close()

		//$gameMessage._fileName = ""
	}
}

})()
