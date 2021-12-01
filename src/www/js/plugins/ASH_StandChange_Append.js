/*:
 * @plugindesc	custom lewd images.
 *				(overridden to allow more stand pictures. e.g., mizugi and kubiwa variants.)
 *
 * @author		ash
 *
 * @require		StandChange
 */

(function() {
	"use strict"

{
	const parameters = PluginManager.parameters("StandChange")
	const argSlotId = parseInt(parameters["SlotId"] || "1")
	const argThresholds = String(parameters["Thresholds"] || "sitagi=30,hadaka=75,sitagi-kubiwa=30,hadaka-kubiwa=75,mizugi=30,mizugi-kubiwa=30")

	const parseLewdThresholds = function(thresholds)
	{
		const lewds = {}
		const lewdValues = thresholds.split(',')

		for (let i = 0; i < lewdValues.length; ++i)
		{
			const thresholdValue = lewdValues[i].split('=')

			lewds[thresholdValue[0].trim()] = parseInt(thresholdValue[1].trim())
		}

		return lewds
	}

	const CHECK_LEWD = parseLewdThresholds(argThresholds)
	//const RE_COSTUME = /BODY\((.*)\)/i
	const noteTagRegex = /<BODY:(.*)>/i
	const noteTagAltRegex = /BODY\((.*)\)/i

	//=============================================================================
	// Game_Actor
	//=============================================================================

	// overridden to allow configurable thresholds.
	// (used to add kubiwa variants)
	Game_Actor.prototype.checkCos = function(slotId, item)
	{
		let output = true

		if (slotId != argSlotId)
		{
			return true
		}
		
		let new_cos = ""

		if (item != null)
		{
			const note_list = item.note.split('\n')

			for (let i = 0, length = note_list.length; i < length; ++i)
			{
				const text = note_list[i]
				//const type = RE_COSTUME.exec(text)
				const type = text.match(noteTagRegex) || text.match(noteTagAltRegex)

				if (type != null)
				{
					new_cos = type[1]
					break
				}
			}
		}
		
		if (CHECK_LEWD[new_cos]
			&& CHECK_LEWD[new_cos] > this._mLewd)
		{
			output = false
		}
		
		return output
	}
}

})()
