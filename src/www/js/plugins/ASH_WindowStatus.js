/*:
 * @plugindesc	Fix the bug where changing an actor's cloth to nude
				or underwear would change the portrait to nothing.
				The reason being that neither graphics seem to be preloaded.
 *
 * @note 		There might probably be a more proper way to do this since
 				every other portrait (i.e., normal, armor, maid, prostitute)
 				display correctly, but only nude and underwear fail to display.
 *
 * @todo		Fix the current behaviour of moving the mouse
 *				over the actor's name in the window status
 *				changes the cursor to "input edit".
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Window_Base
	//=============================================================================

	Window_Base.prototype.drawFace = function(faceName, faceIndex, x, y, width, height)
	{
		width = width || Window_Base._faceWidth
		height = height || Window_Base._faceHeight
		
		const bitmap = ImageManager.loadFace(faceName)
		const pw = Window_Base._faceWidth
		const ph = Window_Base._faceHeight
		const sw = Math.min(width, pw)
		const sh = Math.min(height, ph)
		const dx = Math.floor(x + Math.max(width - pw, 0) / 2)
		const dy = Math.floor(y + Math.max(height - ph, 0) / 2)
		const sx = faceIndex % 4 * pw + (pw - sw) / 2
		const sy = Math.floor(faceIndex / 4) * ph + (ph - sh) / 2

		if (!bitmap.isReady())
		{
			bitmap.addLoadListener(
				function ()
				{
					this.contents.blt(bitmap, sx, sy, sw, sh, dx, dy)
				}.bind(this))
		}
		else
		{
			this.contents.blt(bitmap, sx, sy, sw, sh, dx, dy)
		}
	}

	//=============================================================================
	// Scene_Status_update
	//=============================================================================

	const Scene_Status_update = Scene_Status.prototype.update

	// override to add page navigation with touch input
	Scene_Status.prototype.update = function()
	{
		this._statusWindow.processTouchInput()
		
		Scene_Status_update.call(this)
	}

	//=============================================================================
	// Window_Status
	//=============================================================================

	// add page navigation with touch input
	Window_Status.prototype.processTouchInput = function()
	{
		if (TouchInput.isTriggered())
		{
			this.inputTriggered()
		}
	}
	
	Window_Status.prototype.inputTriggered = function()
	{
		const x = TouchInput.x

		if (x < this.windowMargin())
		{
			SoundManager.playCursor()
			this.movePage(-1)
		}
		else if (x > this.windowWidth() - this.windowMargin())
		{
			SoundManager.playCursor()
			this.movePage(1)
		}
	}

	Window_Status.prototype.windowWidth = function()
	{
		return Graphics.boxWidth
	}

	Window_Status.prototype.windowHeight = function()
	{
		return Graphics.boxHeight
	}

	Window_Status.prototype.windowMargin = function()
	{
		return 20
	}

	// add extended formatting to actor profile

	Window_Status.prototype.drawProfile = function(x, y)
	{
		this.drawTextEx(this.profileText(), x, y)
	}

	Window_Status.prototype.profileText = function()
	{
		let text = this._actor.profile()

		text = TextUtils.convertEscapeCharacters(text, false)
		text = TextUtils.wrapText(text, this.profileMaxCharsPerLine(), this.profileMaxLines())

		return text
	}

	Window_Status.prototype.profileMaxCharsPerLine = function()
	{
		return this.maxCharsPerLine() + 4
	}

	Window_Status.prototype.profileMaxLines = function()
	{
		return 2
	}

	Window_Status.prototype.spaceChar = function()
	{
		return '　'
		//return (ConfigManager.langSelect === 1) ? ' ' : '　'
	}

	Window_Status.prototype.maxCharsPerLine = function()
	{
		const windowWidth = this.windowWidth()
		const largestGlyphWidth = this.textWidth(this.spaceChar())
		const result = Math.max(4, Math.floor(windowWidth / largestGlyphWidth) - 4)

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
