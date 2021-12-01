/*:
 * @plugindesc	Add simple centering for pictures.
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

	Game_Screen.prototype.showPictureFit = function(pictureId, name, fitMode, x, y, scaleX, scaleY, width, height, opacity, blendMode)
	{
		if (!width) { width = 816; }
		if (!height) { height = 624; }
		if (!fitMode) { fitMode = 0; }

		const scale = 1
// FIXME: not always working correctly.
			//= fitMode === 1 ? Math.ceil(Graphics.boxHeight / height)
			//: fitMode === 2 ? Math.ceil(Graphics.boxWidth / width)
			//: 1

		this.showPicture(pictureId, name, 1, (Graphics.boxWidth / 2) + x, (Graphics.boxHeight / 2) + y, scale * scaleX, scale * scaleY, opacity, blendMode)
	}

	Game_Screen.prototype.movePictureFit = function(pictureId, fitMode, x, y, scaleX, scaleY, width, height, opacity, blendMode, duration)
	{
		if (!width) { width = 816; }
		if (!height) { height = 624; }
		if (!fitMode) { fitMode = 0; }

		const scale = 1
// FIXME: not always working correctly.
			//= fitMode === 1 ? Math.ceil(Graphics.boxHeight / height)
			//: fitMode === 2 ? Math.ceil(Graphics.boxWidth / width)
			//: 1

		this.movePicture(pictureId, 1, (Graphics.boxWidth / 2) + x, (Graphics.boxHeight / 2) + y, scale * scaleX, scale * scaleY, opacity, blendMode, duration)
	}
}

})()
