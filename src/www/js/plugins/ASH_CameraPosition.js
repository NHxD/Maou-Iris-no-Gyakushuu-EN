/*:
 * @plugindesc	disable map boundary clamping during map scrolling and positioning.
 *
 * @obsolete	not working correctly.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

// DO NOT USE
{
	//=============================================================================
	// Game_Map
	//=============================================================================

	const Game_Map_setup = Game_Map.prototype.setup

	Game_Map.prototype.setup = function(mapId)
	{
		Game_Map_setup.apply(this, arguments)

		//const clampTag = $dataMap.meta.hasOwnProperty("clamp") ? $dataMap.meta.clamp.split(',').map(function(e){return [ e.slice(0, e.indexOf('=')), e.slice(e.indexOf('=') + 1) ]}) : []
		//this.clampParams = Object.fromEntries(clampTag)
		//this.clampParams = { minX: undefined, maxX: undefined, minY: undefined, maxY: undefined }
	}

	const Game_Map_scrollDown = Game_Map.prototype.scrollDown

	Game_Map.prototype.scrollDown = function(distance)
	{
		if (this.isLoopVertical())
		{
			Game_Map_scrollDown.apply(this, arguments)
			return
		}

		this.scrollY(distance)
	}

	const Game_Map_scrollLeft = Game_Map.prototype.scrollLeft

	Game_Map.prototype.scrollLeft = function(distance)
	{
		if (this.isLoopHorizontal())
		{
			Game_Map_scrollLeft.apply(this, arguments)
			return
		}

		this.scrollX(-distance)
	}

	const Game_Map_scrollRight = Game_Map.prototype.scrollRight

	Game_Map.prototype.scrollRight = function(distance)
	{
		if (this.isLoopHorizontal())
		{
			Game_Map_scrollRight.apply(this, arguments)
			return
		}

		this.scrollX(distance)
	}

	const Game_Map_scrollUp = Game_Map.prototype.scrollUp

	Game_Map.prototype.scrollUp = function(distance)
	{
		if (this.isLoopVertical())
		{
			Game_Map_scrollUp.apply(this, arguments)
			return
		}

		this.scrollY(-distance)
	}

	Game_Map.prototype.scrollX = function(distance)
	{
		const lastX = this._displayX
		const clampParams = this.parseClampParams()
		const startX = this.minDisplayX(clampParams)
		const endX = this.maxDisplayX(clampParams)

		this._displayX += distance

		if (startX != null && endX != null)
		{
			this._displayX = this._displayX.clamp(startX, endX)
		}

		this._parallaxX += this._displayX - lastX
	}

	Game_Map.prototype.scrollY = function(distance)
	{
		const lastY = this._displayY
		const clampParams = this.parseClampParams()
		const startY = this.minDisplayY(clampParams)
		const endY = this.maxDisplayY(clampParams)

		this._displayY += distance

		if (startY != null && endY != null)
		{
			this._displayY = this._displayY.clamp(startY, endY)
		}

		this._parallaxY += this._displayY - lastY
	}

	Game_Map.prototype.setDisplayPos = function(x, y)
	{
	    this.setDisplayPosX(x)
	    this.setDisplayPosY(y)
	}

	Game_Map.prototype.setDisplayPosX = function(x)
	{
	    if (this.isLoopHorizontal())
	    {
	        this._displayX = x.mod(this.width())
	        this._parallaxX = x
	    }
	    else
	    {
			const clampParams = this.parseClampParams()
			const startX = this.minDisplayX(clampParams)
			const endX = this.maxDisplayX(clampParams)

	        this._displayX = x

			if (startX != null && endX != null)
			{
				// FIXME: what's the end / 2? (i should probably factor in start there...
				this._displayX = endX < startX ? (endX) / 2 : x.clamp(startX, endX)
			}

	        this._parallaxX = this._displayX
	    }
	}

	Game_Map.prototype.setDisplayPosY = function(y)
	{
	    if (this.isLoopVertical())
	    {
	        this._displayY = y.mod(this.height())
	        this._parallaxY = y
	    }
	    else
	    {
			const clampParams = this.parseClampParams()
			const startY = this.minDisplayY(clampParams)
			const endY = this.maxDisplayY(clampParams)

	        this._displayY = y

			if (startY != null && endY != null)
			{
				// FIXME: what's the end / 2? (i should probably factor in start there...
				this._displayY = endY < startY ? (endY) / 2 : y.clamp(startY, endY)
			}

	        this._parallaxY = this._displayY
	    }
	}

	Game_Map.prototype.minDisplayX = function(clampParams)
	{
		if (clampParams == null)
		{
			clampParams = this.parseClampParams()
		}

		if (clampParams != null
			&& clampParams.hasOwnProperty("minX"))
		{
			return this.evalClampParam(clampParams.minX)
		}
		else
		{
			return 0
		}
	}

	Game_Map.prototype.maxDisplayX = function(clampParams)
	{
		if (clampParams == null)
		{
			clampParams = this.parseClampParams()
		}

		if (clampParams != null
			&& clampParams.hasOwnProperty("maxX"))
		{
			return this.evalClampParam(clampParams.maxX)
		}
		else
		{
			return this.width() - this.screenTileX()
		}
	}

	Game_Map.prototype.minDisplayY = function(clampParams)
	{
		if (clampParams == null)
		{
			clampParams = this.parseClampParams()
		}


		if (clampParams != null
			&& clampParams.hasOwnProperty("minY"))
		{
			return this.evalClampParam(clampParams.minY)
		}
		else
		{
			return 0
		}
	}

	Game_Map.prototype.maxDisplayY = function(clampParams)
	{
		if (clampParams == null)
		{
			clampParams = this.parseClampParams()
		}

		if (clampParams != null
			&& clampParams.hasOwnProperty("maxY"))
		{
			return this.evalClampParam(clampParams.maxY)
		}
		else
		{
			return this.height() - this.screenTileY()
		}
	}

	Game_Map.prototype.evalClampParam = function(clampParam)
	{
		//return eval(evalClampParam)
		const result = new Function(`"use strict"; return (${clampParam});`).bind(this)()

		return result
	}

	Game_Map.prototype.parseClampParams = function()
	{
		const clampParamsVariableId = 66
		const clampParamsValue = $gameVariables.value(clampParamsVariableId)
		let result

		if (clampParamsValue)
		{
			try
			{
				result = JSON.parse(clampParamsValue)
			}
			catch (ex)
			{
				result = {}
			}
		}

		return result
	}
}

})()
