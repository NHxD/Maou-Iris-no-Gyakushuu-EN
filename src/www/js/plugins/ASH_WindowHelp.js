/*:
 * @plugindesc	Add line wrapping to the item window.
 *
 * @author		ash
 *
 * @require
 */

(function() {
	"use strict"

	//=============================================================================
	// Window_Help
	//=============================================================================

	const Window_Help_setText = Window_Help.prototype.setText
	
	Window_Help.prototype.setText = function(text)
	{
		text = TextUtils.convertEscapeCharacters(text, false)
		text = TextUtils.wrapText(text, this.helpMaxCharsPerLine(), 2)

		Window_Help_setText.call(this, text)
	}

	Window_Help.prototype.helpMaxCharsPerLine = function()
	{
		return this.maxCharsPerLine() + 4
	}

	Window_Help.prototype.spaceChar = function()
	{
		return '　'
		//return (ConfigManager.langSelect === 1) ? ' ' : '　'
	}

	Window_Help.prototype.maxCharsPerLine = function()
	{
		const windowWidth = this.contentsWidth()
		const largestGlyphWidth = this.textWidth(this.spaceChar())
		const result = Math.floor(windowWidth / largestGlyphWidth)

		// the issue is that in english, the margin is still the JA whitespace.
		if (ConfigManager.langSelect === 1)
		{
			return result * 2
		}
		else
		{
			return result
		}
	}
})()
