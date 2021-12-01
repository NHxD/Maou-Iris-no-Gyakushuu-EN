/*:
 * @plugindesc	title image resource localization.
 *				(used to restore the original JP title screen)
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Scene_Title
	//=============================================================================

	Scene_Title.prototype.createBackground = function()
	{
		let suffix = ""

		if (ConfigManager.langSelect === 1)
		{
			suffix += "_en"
		}
		/*else if (ConfigManager.langSelect === 2)
		{
			//suffix += "_ch"
		}*/

		this._backSprite1 = new Sprite(ImageManager.loadTitle1($dataSystem.title1Name ? ($dataSystem.title1Name + suffix) : ""))
		this._backSprite2 = new Sprite(ImageManager.loadTitle2($dataSystem.title2Name ? ($dataSystem.title2Name + suffix) : ""))

		this.addChild(this._backSprite1)
		this.addChild(this._backSprite2)
	}
}

})()
