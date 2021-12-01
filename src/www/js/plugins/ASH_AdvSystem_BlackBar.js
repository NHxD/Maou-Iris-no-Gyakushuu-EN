/*:
 * @plugindesc	show black frames around known CG's that require it.
 *				(for widescreen mode)
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

{
	const knownCgRegex = /(A-sowd|AP[\w_@]\w+|A-[\w_]+)/i
	const knownOptionalCgRegex = /(ev\d+)/i

	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_loadPicture = ADV_System.prototype.loadPicture

	ADV_System.prototype.loadPicture = function(data)
	{
		ADV_System_loadPicture.apply(this, arguments)

		if (!this.shouldShowBlackFrame(data))
		{
			return
		}

		const x = data.ox || data.x || 0
		const y = data.oy || data.y || 0

		$gameScreen.showBlackFramesFit(this.blackFrameFileName(data), x, y, 100, 100, 0, 0, data.opacity, 0)
	}

	const ADV_System_movePicture = ADV_System.prototype.movePicture

	ADV_System.prototype.movePicture = function(data)
	{
		ADV_System_movePicture.apply(this, arguments)

		if (!this.shouldShowBlackFrame(data))
		{
			return
		}

		const x = (data.ox + data.mx) || data.x || 0
		const y = (data.oy + data.my) || data.y || 0
		const opacity = data.opacity || 0
		const t = data.t || 0

		$gameScreen.moveBlackFramesFit(x, y, 100, 100, 0, 0, opacity, 0, t)
	}

	const ADV_System_moveFadePicture = ADV_System.prototype.moveFadePicture

	ADV_System.prototype.moveFadePicture = function(data)
	{
		ADV_System_moveFadePicture.apply(this, arguments)

		if (!this.shouldShowBlackFrame(data))
		{
			return
		}

		const x = (data.ox + data.mx) || data.x || 0
		const y = (data.oy + data.my) || data.y || 0
		const opacity = data.type === "in" ? (data.opacity || 0) : 0
		const t = data.t || 0

		$gameScreen.moveBlackFramesFit(x, y, 100, 100, 0, 0, opacity, 0, t)
	}

	const ADV_System_deletePicture = ADV_System.prototype.deletePicture

	ADV_System.prototype.deletePicture = function(pid)
	{
		ADV_System_deletePicture.apply(this, arguments)

		$gameScreen.eraseBlackFrames()
	}

	ADV_System.prototype.shouldShowBlackFrame = function(data)
	{
		return knownCgRegex.test(data.f)
			|| (knownOptionalCgRegex.test(data.f)
				&& ConfigManager.showBlackFrames)
	}

	ADV_System.prototype.blackFrameFileName = function(data)
	{
		return data.f === "AP@Black2" ? "AP-Black2" : "AP-Black"
	}
}

})()
