/*:
 * @plugindesc	
 *
 * @author		ash
 *
 * @require		RTK1_Core
 * @require		RTK1_Option_EnJa
 */

(function() {
	"use strict"

{
	//=============================================================================
	// SceneManager
	//=============================================================================
/*
	const SceneManager_reloadSystemData = SceneManager.reloadSystemData
	//const SceneManager_updateDataReload = SceneManager.updateDataReload

	SceneManager.reloadSystemData = function()
	//SceneManager.updateDataReload = function()
	{
		SceneManager_reloadSystemData.call(this)
		//SceneManager_updateDataReload.call(this)

		RTK.terms_change()
	}
*/
	// TODO: this is a hack, it'd probably be a better idea to override SceneManager.updateDataReload or something.

	//=============================================================================
	// Graphics
	//=============================================================================

	// bugfix for localization not being applied upon window losing then gaining focus.

	Graphics.needLocalizationRefresh = false

	const Graphics_initialize = Graphics.initialize

	Graphics.initialize = function(width, height, type)
	{
		Graphics_initialize.apply(this, arguments)

		window.addEventListener("focus", this._onGainFocus.bind(this))
	}

	Graphics._onGainFocus = function()
	{
		this.needLocalizationRefresh = true
	}

	//=============================================================================
	// Scene_Base
	//=============================================================================

	const Scene_Base_update = Scene_Base.prototype.update

	Scene_Base.prototype.update = function()
	{
		if (Graphics.needLocalizationRefresh)
		{
			Graphics.needLocalizationRefresh = false

			RTK.terms_change()
			ConfigManager.save()
		}

		Scene_Base_update.apply(this, arguments)
	}
}

})()
