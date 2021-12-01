/*:
 * @plugindesc	center-align the "game over" picture.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Scene_Gameover
	//=============================================================================

	Scene_Gameover.prototype.createBackground = function()
	{
		this._backSprite = new Sprite()

		this._backSprite.x = (Graphics.boxWidth - 816) / 2
		this._backSprite.y = (Graphics.boxHeight - 624) / 2
		this._backSprite.bitmap = ImageManager.loadSystem("GameOver")

		this.addChild(this._backSprite)
	}
}

})()
