/*:
 * @plugindesc	Add formatting to window choice list.
 *
 * @author		ash
 *
 * @require		ASH_TextUtils
 */

(function() {
	"use strict"

	//=============================================================================
	// Window_ChoiceList
	//=============================================================================

	Window_ChoiceList.prototype.drawItem = function(index)
	{
		const rect = this.itemRectForText(index)
		const text = this.formatText(this.commandName(index))
		//const align = this.itemTextAlign()

		this.resetTextColor()
		this.changePaintOpacity(this.isCommandEnabled(index))
		//this.drawText(text, rect.x, rect.y, rect.width, align)
		this.drawTextEx(text, rect.x, rect.y)
	}

	Window_ChoiceList.prototype.formatText = function(text)
	{
		return TextUtils.convertEscapeCharacters(text, false)
	}
})()
