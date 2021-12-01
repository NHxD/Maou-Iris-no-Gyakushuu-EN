/*:
 * @plugindesc	show black frames around a specified region.
 *				(used for widescreen mode.)
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Screen
	//=============================================================================

	Game_Screen.prototype.showBlackFrameFit = function(frameIndex, name, x, y, scaleX, scaleY, width, height, opacity, blendMode)
	{
		this.showBlackFrame(frameIndex, name, Graphics.boxWidth / 2 + x, Graphics.boxHeight / 2 + y, scaleX, scaleY, width, height, opacity, blendMode)
	}

	Game_Screen.prototype.showBlackFramesFit = function(name, x, y, scaleX, scaleY, width, height, opacity, blendMode)
	{
		this.showBlackFrames(name, Graphics.boxWidth / 2 + x, Graphics.boxHeight / 2 + y, scaleX, scaleY, width, height, opacity, blendMode)
	}

	Game_Screen.prototype.moveBlackFrameFit = function(frameIndex, x, y, scaleX, scaleY, width, height, opacity, blendMode, duration)
	{
		this.moveBlackFrame(frameIndex, Graphics.boxWidth / 2 + x, Graphics.boxHeight / 2 + y, scaleX, scaleY, width, height, opacity, blendMode, duration)
	}

	Game_Screen.prototype.moveBlackFramesFit = function(x, y, scaleX, scaleY, width, height, opacity, blendMode, duration)
	{
		this.moveBlackFrames(Graphics.boxWidth / 2 + x, Graphics.boxHeight / 2 + y, scaleX, scaleY, width, height, opacity, blendMode, duration)
	}


	Game_Screen.prototype.showBlackFrame = function(frameIndex, name, x, y, scaleX, scaleY, width, height, opacity, blendMode)
	{
		if (!name) { name = "AP-Black"; }

		const w = width || this.defaultPictureWidth()
		const h = height || this.defaultPictureHeight()

		this.showPicture(frameIndex, name, 1, x, y, scaleX, scaleY, opacity, blendMode)
	}

	Game_Screen.prototype.showBlackFrames = function(name, x, y, scaleX, scaleY, width, height, opacity, blendMode)
	{
		if (!name) { name = "AP-Black"; }

		const baseIndex = this.blackFrameBaseIndex()
		const w = width || this.defaultPictureWidth()
		const h = height || this.defaultPictureHeight()

		this.showPicture(baseIndex + 0, name, 1, x - w, y, scaleX, scaleY, opacity, blendMode)
		this.showPicture(baseIndex + 1, name, 1, x + w, y, scaleX, scaleY, opacity, blendMode)
		this.showPicture(baseIndex + 2, name, 1, x, y - h, scaleX, scaleY, opacity, blendMode)
		this.showPicture(baseIndex + 3, name, 1, x, y + h, scaleX, scaleY, opacity, blendMode)
		this.showPicture(baseIndex + 4, name, 1, x - w, y - h, scaleX, scaleY, opacity, blendMode)
		this.showPicture(baseIndex + 5, name, 1, x + w, y + h, scaleX, scaleY, opacity, blendMode)
		this.showPicture(baseIndex + 6, name, 1, x + w, y - h, scaleX, scaleY, opacity, blendMode)
		this.showPicture(baseIndex + 7, name, 1, x - w, y + h, scaleX, scaleY, opacity, blendMode)
	}

	Game_Screen.prototype.moveBlackFrame = function(frameIndex, x, y, scaleX, scaleY, width, height, opacity, blendMode, duration)
	{
		const w = width | this.defaultPictureWidth()
		const h = height || this.defaultPictureHeight()

		this.movePicture(frameIndex, 1, x, y, scaleX, scaleY, opacity, blendMode, duration)
	}

	Game_Screen.prototype.moveBlackFrames = function(x, y, scaleX, scaleY, width, height, opacity, blendMode, duration)
	{
		const baseIndex = this.blackFrameBaseIndex()
		const w = width | this.defaultPictureWidth()
		const h = height || this.defaultPictureHeight()

		this.movePicture(baseIndex + 0, 1, x - w, y, scaleX, scaleY, opacity, blendMode, duration)
		this.movePicture(baseIndex + 1, 1, x + w, y, scaleX, scaleY, opacity, blendMode, duration)
		this.movePicture(baseIndex + 2, 1, x, y - h, scaleX, scaleY, opacity, blendMode, duration)
		this.movePicture(baseIndex + 3, 1, x, y + h, scaleX, scaleY, opacity, blendMode, duration)
		this.movePicture(baseIndex + 4, 1, x - w, y - h, scaleX, scaleY, opacity, blendMode, duration)
		this.movePicture(baseIndex + 5, 1, x + w, y + h, scaleX, scaleY, opacity, blendMode, duration)
		this.movePicture(baseIndex + 6, 1, x + w, y - h, scaleX, scaleY, opacity, blendMode, duration)
		this.movePicture(baseIndex + 7, 1, x - w, y + h, scaleX, scaleY, opacity, blendMode, duration)
	}

	Game_Screen.prototype.eraseBlackFrame = function(frameIndex)
	{
		$gameScreen.erasePicture(frameIndex)
	}

	Game_Screen.prototype.eraseBlackFrames = function()
	{
		const baseIndex = this.blackFrameBaseIndex()

		for (let i = 0; i < 8; ++i)
		{
			$gameScreen.erasePicture(baseIndex + i)
		}
	}

	Game_Screen.prototype.defaultPictureWidth = function()
	{
		return 816
	}

	Game_Screen.prototype.defaultPictureHeight = function()
	{
		return 624
	}

	Game_Screen.prototype.blackFrameBaseIndex = function()
	{
		return 90
	}
}

})()
