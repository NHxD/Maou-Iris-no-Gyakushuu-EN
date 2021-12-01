/*:
 * @plugindesc	Add formatted scrolling text data.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

// FIXME: text isn't correctly center aligned when playing in japanese.
{
	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	Game_Interpreter.prototype.command105 = function()
	{
	    if (!$gameMessage.isBusy())
	    {
	        $gameMessage.setScroll(this._params[0], this._params[1])

	        while (this.nextEventCode() === 405)
	        {
	            ++this._index

	            $gameMessage.addFormat(this.currentCommand().parameters[0])
	        }

	        ++this._index
	        this.setWaitMode('message')
	    }

	    return false
	}

	//=============================================================================
	// Game_Message
	//=============================================================================

	Game_Message.prototype.addFormat = function(text)
	{
		//text = TextUtils.convertEscapeCharacters(text, false)
		if (ConfigManager.langSelect === 1)
		{
			text = TextUtils.englify(text)
		}
		text = TextUtils.replace(text, ConfigManager.customWords)
		text = TextUtils.processLine(text, this.marginChar(), this.maxScrollTextCharsPerLine(), "left")

		this._texts.push(text)
	}

	Game_Message.prototype.marginChar = function()
	{
		return '　'
	}

	Game_Message.prototype.spaceChar = function()
	{
		return '　'
		//return (ConfigManager.langSelect === 1) ? ' ' : '　'
	}

	Game_Message.prototype.maxScrollTextCharsPerLine = function()
	{
		const windowWidth = SceneManager._scene._scrollTextWindow.width
		const largestGlyphWidth = SceneManager._scene._scrollTextWindow.textWidth(this.spaceChar())
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
}

})()
