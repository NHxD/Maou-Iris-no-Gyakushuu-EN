/*:
 * @plugindesc	Use custom blending mode for face rendering.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_movePicture = ADV_System.prototype.movePicture

	ADV_System.prototype.movePicture = function(data)
	{
		if (!ConfigManager.faceBlending)
		{
			ADV_System_movePicture.apply(this, arguments)
			return
		}

		const check_name = data.f.split('@')
		const pict_data = this.findPicture(check_name[0] + '@')
		
		if (pict_data == null)
		{
			return
		}
		
		const pict_id_base = pict_data.base_id

		data['x'] += this.BS_BASE_X
		data['y'] += this.BS_BASE_Y
		
		const set_time = data.t

		for (const key in pict_data.list)
		{
			const val = pict_data.list[key]
			const set_x = (data.abs ? val._x : 0) + data['x']
			const set_y = (data.abs ? val._y : 0) + data['y']
			const pict_id = pict_id_base * this.ADD_LAYER_NUM.BASE + this.ADD_LAYER_NUM[key]
			//const blendMode = key == "DEFAULT" ? $gameVariables.value(7) : $gameVariables.value(8)
			const blendMode = key == "DEFAULT" ? 1 : 0

			$gameScreen.movePicture(pict_id, 1, set_x, set_y, 100, 100, val._opacity, blendMode, set_time)
		}
	}

	const ADV_System_moveFadePicture = ADV_System.prototype.moveFadePicture

	ADV_System.prototype.moveFadePicture = function(data)
	{
		if (!ConfigManager.faceBlending)
		{
			ADV_System_moveFadePicture.apply(this, arguments)
			return
		}	
		
		if (data.new)
		{
			const afterOpacity = data['opacity']
			
			data['x'] = data['ox']
			data['y'] = data['oy']
			data['opacity'] = data.type == 'in' ? 0 : 255
			
			this.loadPicture(data)
			
			data['opacity'] = afterOpacity
		}
		
		const check_name = data.f.split('@')
		const pict_data = this.findPicture(check_name[0] + '@')
		
		if (pict_data == null)
		{
			return
		}
		
		const pict_id_base = pict_data.base_id
		const set_op = data.type == 'in' ? data.opacity : 0
		const set_time = data.t

		for (const key in pict_data.list)
		{
			const val = pict_data.list[key]
			const set_x = val._x + data['mx']
			const set_y = val._y + data['my']
			const pict_id = pict_id_base * this.ADD_LAYER_NUM.BASE + this.ADD_LAYER_NUM[key]
			const blendMode = key == "DEFAULT" ? 1 : 0

			$gameScreen.movePicture(pict_id, 1, set_x, set_y, 100, 100, set_op, blendMode, set_time)
		}
	}

	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager.faceBlending = false

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.apply(this, arguments)

		if (config.hasOwnProperty("faceBlending"))
		{
			this.faceBlending = this.readFlag(config, "faceBlending")
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.apply(this, arguments)

		config.faceBlending = this.faceBlending

		return config
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_addGeneralOptions = Window_Options.prototype.addGeneralOptions

	Window_Options.prototype.addGeneralOptions = function()
	{
		Window_Options_addGeneralOptions.apply(this, arguments)

		this.addCommand(TS_Function.getLanguage("FaceBlending"), "faceBlending", this.isFaceBlendingEnabled())
	}

	Window_Options.prototype.isFaceBlendingEnabled = function()
	{
		return true
	}
}

})()
