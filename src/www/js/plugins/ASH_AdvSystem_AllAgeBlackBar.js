/*:
 * @plugindesc	show black frames over known CG regions that require it.
 *				(for all-age mode)
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

{
	// TODO: reuse a similar list defined elsewhere...
	const nudeActors = [ "iris", "sakuya", "sonia", "zexy" ]
	const knownNudeBodyRegex = /(yabure|hadaka|mizugi)/i

	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_initialize = ADV_System.prototype.initialize

	ADV_System.prototype.initialize = function()
	{
		ADV_System_initialize.apply(this, arguments)

		this.censorPictureData = {}
	}

	const ADV_System_loadPicture = ADV_System.prototype.loadPicture

	ADV_System.prototype.loadPicture = function(data)
	{
		ADV_System_loadPicture.apply(this, arguments)

		if (ConfigManager.showAdultContent)
		{
			return
		}

		if (!data.hasOwnProperty("f")
			|| !nudeActors.contains(data.f.split("@")[0]))
		{
			return
		}

		if (!knownNudeBodyRegex.test(data.body))
		{
			return
		}

		if (!data.hasOwnProperty("ox") || !data.hasOwnProperty("mx"))
		{
			return
		}

		// FIXME: bleh... when changing to zoom variants, <data> just contains the names but not the positioning, does AdvSystem keep track of pictures data?

		const actorName = data.f.split('@')[0]
		const name = actorName + "_allage" + (data.f.endsWith("_z") ? "_z" : "")

		this.censorPictureData[actorName] =
		{
			pictureId: this.mViewPictId,
			pictureIndex: this.blackFrameBaseIndex() + Object.keys(this.censorPictureData).length
		}

		$gameScreen.showBlackFrame(this.censorPictureData[actorName].pictureIndex, name, Graphics.boxWidth / 2 + data.ox, Graphics.boxHeight - 624/2 + data.oy, 100, 100, 0, 0, 255, 0)
	}

	const ADV_System_movePicture = ADV_System.prototype.movePicture

	ADV_System.prototype.movePicture = function(data)
	{
		ADV_System_movePicture.apply(this, arguments)

		if (ConfigManager.showAdultContent)
		{
			return
		}

		if (!data.hasOwnProperty("f")
			|| !nudeActors.contains(data.f.split("@")[0]))
		{
			return
		}

		if (!knownNudeBodyRegex.test(data.body))
		{
			return
		}

		if (!data.hasOwnProperty("ox") || !data.hasOwnProperty("mx"))
		{
			return
		}

		// FIXME: when fading out, ox is always set to zero. but what we need is the current position.
		/*
		const dir = data.hasOwnProperty("out") && data.out === "r" ? -1 : 1
		let ox = data.ox
		if (data.hasOwnProperty("out") && data.out === "r")
		{
		}
		*/

		const dir = 1//data.hasOwnProperty("out") ? -1 : 1

		if (data.hasOwnProperty("out"))
		{
			data.ox = data.out === "r" ? this.BS_R + this.BS_MOVE : this.BS_L - this.BS_MOVE
		}

		const actorName = data.f.split('@')[0]

		if (this.censorPictureData.hasOwnProperty(actorName))
		{
			$gameScreen.moveBlackFrame(this.censorPictureData[actorName].pictureIndex, Graphics.boxWidth / 2 + (data.ox + data.mx) * dir, Graphics.boxHeight - 624/2 + data.oy + data.my, 100, 100, 0, 0, 225, 0, data.t)
		}
	}

	const ADV_System_moveFadePicture = ADV_System.prototype.moveFadePicture

	ADV_System.prototype.moveFadePicture = function(data)
	{
		ADV_System_moveFadePicture.apply(this, arguments)

		if (ConfigManager.showAdultContent)
		{
			return
		}

		if (!data.hasOwnProperty("f")
			|| !nudeActors.contains(data.f.split("@")[0]))
		{
			return
		}

		if (!knownNudeBodyRegex.test(data.body))
		{
			return
		}

		if (!data.hasOwnProperty("ox") || !data.hasOwnProperty("mx"))
		{
			return
		}

		const dir = 1//data.hasOwnProperty("out") ? -1 : 1

		if (data.hasOwnProperty("out"))
		{
			data.ox = data.out === "r" ? this.BS_R + this.BS_MOVE : this.BS_L - this.BS_MOVE
		}

		const actorName = data.f.split('@')[0]

		if (this.censorPictureData.hasOwnProperty(actorName))
		{
			$gameScreen.moveBlackFrame(this.censorPictureData[actorName].pictureIndex, Graphics.boxWidth / 2 + (data.ox + data.mx) * dir, Graphics.boxHeight - 624/2 + data.oy + data.my, 100, 100, 0, 0, 255, 0, data.t)
		}
	}

	const ADV_System_deletePicture = ADV_System.prototype.deletePicture

	ADV_System.prototype.deletePicture = function(pid)
	{
		ADV_System_deletePicture.apply(this, arguments)

		if (ConfigManager.showAdultContent)
		{
			return
		}

		for (const prop in this.censorPictureData)
		{
			const pictureData = this.censorPictureData[prop]

			if (!pictureData) { continue; }

			if (pictureData.pictureId === pid)
			{
				$gameScreen.eraseBlackFrame(pictureData.pictureIndex)
				delete this.censorPictureData[prop]
				break
			}
		}
	}

	ADV_System.prototype.blackFrameBaseIndex = function()
	{
		return 80
	}
}

})()
