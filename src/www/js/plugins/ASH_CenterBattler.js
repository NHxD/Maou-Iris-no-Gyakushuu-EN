/*:
 * @plugindesc	center-align enemies.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Sprite_Enemy
	//=============================================================================

	Sprite_Enemy.prototype._onBitmapLoad = function(bitmapLoaded)
	{
		if(bitmapLoaded === this._bitmap)
		{
			if (this._refreshFrame && this._bitmap)
			{
				this._refreshFrame = false
				this._frame.width = this._bitmap.width
				this._frame.height = this._bitmap.height
			}

			const centerX = Graphics.boxWidth / 2
			const centerY = Graphics.boxHeight / 2

			this.setHome((Graphics.boxWidth - 800) / 2 + this._homeX, (Graphics.boxHeight - 600) / 2 + this._homeY)
		}

		this._refresh()
	}
}

})()
