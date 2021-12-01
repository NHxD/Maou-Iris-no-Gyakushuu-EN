/*:
 * @plugindesc	Add formatting to window base class.
 *
 * @author		ash
 *
 * @require		ASH_TextUtils
 */

(function() {
	"use strict"

{
	const partyCommandWindowWidth = 192 + 32

	//=============================================================================
	// Window_Base
	//=============================================================================

	Window_Base.prototype.convertEscapeCharacters = function(text)
	{
		return TextUtils.convertEscapeCharacters(text, false)
	}

	//=============================================================================
	// Window_Command
	//=============================================================================

	Window_Command.prototype.drawItem = function(index)
	{
		const rect = this.itemRectForText(index)
		const text = this.formatText(this.commandName(index))
		//const align = this.itemTextAlign()

		this.resetTextColor()
		this.changePaintOpacity(this.isCommandEnabled(index))
		//this.drawText(text, rect.x, rect.y, rect.width, align)
		this.drawTextEx(text, rect.x, rect.y)
	}

	Window_Command.prototype.formatText = function(text)
	{
		return TextUtils.convertEscapeCharacters(text, false)
	}

	// uncomment to align the window with the rest.
	/*
	Scene_Battle.prototype.createActorWindow = function()
	{
		this._actorWindow = new Window_BattleActor(0, this._statusWindow.y)
		this._actorWindow.x = Graphics.boxWidth - this._actorWindow.width
		this._actorWindow.setHandler('ok',     this.onActorOk.bind(this))
		this._actorWindow.setHandler('cancel', this.onActorCancel.bind(this))
		this.addWindow(this._actorWindow)
	}
	*/

	//=============================================================================
	// Window_PartyCommand
	//=============================================================================

	Window_PartyCommand.prototype.windowWidth = function()
	{
	    return partyCommandWindowWidth
	}

	//=============================================================================
	// Window_ActorCommand
	//=============================================================================

	Window_ActorCommand.prototype.windowWidth = function()
	{
	    return partyCommandWindowWidth
	}

	//=============================================================================
	// Window_BattleStatus
	//=============================================================================

	Window_BattleStatus.prototype.windowWidth = function()
	{
	    return Graphics.boxWidth - partyCommandWindowWidth
	}

	//=============================================================================
	// Window_BattleEnemy
	//=============================================================================

	Window_BattleEnemy.prototype.windowWidth = function()
	{
	    return Graphics.boxWidth - partyCommandWindowWidth
	}
}

})()
