/*:
 * @plugindesc	allow for changing tiles at run-time.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Map
	//=============================================================================

	Game_Map.prototype.getDataAt = function(x, y, layer, data)
	{
		const width = $dataMap.width
		const height = $dataMap.height

		if (x == undefined)
		{
			x = $gamePlayer.x
		}

		if (y == undefined)
		{
			y = $gamePlayer.y
		}

		if (x < 0 || x > width - 1)
		{
			console.warn("Invalid x", x)
			return
		}

		if (y < 0 || y > height - 1)
		{
			console.warn("Invalid y", y)
			return
		}

		if (data == null)
		{
			data = this.data()
			//console.warn("Data must be non-null")
			//return
		}

		if (layer == undefined)
		{
			return [
				data[x + (y * width) + (0 * width * height)],
				data[x + (y * width) + (1 * width * height)],
				data[x + (y * width) + (2 * width * height)],
				data[x + (y * width) + (3 * width * height)],
				data[x + (y * width) + (4 * width * height)],
				data[x + (y * width) + (5 * width * height)]
			]
		}
		else if (layer < 0 || layer > 6 - 1)
		{
			console.warn("Invalid layer", layer)
		}
		else
		{
			return data[x + (y * width) + (layer * $dataMap.width * height)]
		}
	}

	Game_Map.prototype.resetDataRange = function()
	{
		this.setDataRange.apply(this, [-1, -1, -1, -1, -1, -1].concat(Array.prototype.slice.call(arguments, 0, arguments.length)))
	}

	// e.g., setDataRange(0, 0, 0, 0, 0, 0, [0,0,4,4], [11,0,15,4])
	Game_Map.prototype.setDataRange = function(base, a, b, c, shadow, region)
	{
		for (let i = 6; i < arguments.length; ++i)
		{
			const element = arguments[i]

			if (element == null)
			{
				continue
			}

			if (Array.isArray(element) && element.length === 4)
			{
				const bounds =
				{
					mins:
					{
						x: element[0] < 0 ? $dataMap.width + element[0] : element[0],
						y: element[1] < 0 ? $dataMap.height + element[1] : element[1]
					},
					maxs:
					{
						x: element[2] < 0 ? $dataMap.width + element[2]: element[2],
						y: element[3] < 0 ? $dataMap.height + element[3] : element[3]
					}
				}

				for (let y = bounds.mins.y; y < bounds.maxs.y; ++y)
				{
					for (let x = bounds.mins.x; x < bounds.maxs.x; ++x)
					{
						this.setDataAt(x, y, 0, base === -1 || base == null ? this.getSourceDataAt(x, y, 0) : base)
						this.setDataAt(x, y, 1, a === -1 || a == null ? this.getSourceDataAt(x, y, 1) : a)
						this.setDataAt(x, y, 2, b === -1 || b == null ? this.getSourceDataAt(x, y, 2) : b)
						this.setDataAt(x, y, 3, c === -1 || c == null ? this.getSourceDataAt(x, y, 3) : c)
						this.setDataAt(x, y, 4, shadow === -1 || shadow == null ? this.getSourceDataAt(x, y, 4) : shadow)
						this.setDataAt(x, y, 5, region === -1 || region == null ? this.getSourceDataAt(x, y, 5) : region)
					}
				}
			}
			else if (element == true)
			{
				this.forceRefresh()
			}
			else
			{
				console.warn("Game_Map.setDataMany:", "Unknown argument type:", typeof element)
				console.dir(element)
			}
		}
	}

	Game_Map.prototype.setDataMany = function()
	{
		for (let i = 0; i < arguments.length; ++i)
		{
			const element = arguments[i]

			if (element == null)
			{
				continue
			}

			if (Array.isArray(element) && element.length === 4)
			{
				this.setDataAt(element[0], element[1], element[2], element[3])
			}
			else if (element == true)
			{
				this.forceRefresh()
			}
			else
			{
				console.warn("Game_Map.setDataMany:", "Unknown argument type:", typeof element)
				console.dir(element)
			}
		}
	}

	Game_Map.prototype.setDataAt = function(x, y, layer, value)
	{
		if (value == undefined)
		{
			return
		}

		this.data()[x + y * $dataMap.width + layer * $dataMap.width * $dataMap.height] = value
	}

	Game_Map.prototype.forceRefresh = function()
	{
		const scene = SceneManager._scene

		scene.removeChild(scene._fadeSprite)
		scene.removeChild(scene._mapNameWindow)
		scene.removeChild(scene._windowLayer)
		scene.removeChild(scene._spriteset)

		scene.createDisplayObjects()
		//SceneManager._scene.removeChild(SceneManager._scene._spriteset)
		//SceneManager._scene.createSpriteset()
	}
}

})()
