/*:
 * @plugindesc	Tell the data manager to use the map name instead
 *				of the game title when saving files.
 *
 * @author		ash
 *
 * @note		The "displayName" property needs to be defined in
 *				the maps json files.
 *
 * @require
 */

(function() {
	"use strict"

	//=============================================================================
	// DataManager
	//=============================================================================

	const DataManager_makeSavefileInfo = DataManager.makeSavefileInfo

	// override to save the raw map name instead of the game title.
	DataManager.makeSavefileInfo = function()
	{
		const info = DataManager_makeSavefileInfo.call(this)

		info.title = $gameMap.displayName(true)

		return info
	}

	//=============================================================================
	// Window_SavefileList
	//=============================================================================

	// override to localize map name.
	Window_SavefileList.prototype.drawGameTitle = function(info, x, y, width)
	{
		let output = ""

		if (info.title)
		{
			const separator = " ||| "

			if (info.title.indexOf(separator) !== -1)
			{
				const text = info.title.split(separator)

				output = TextUtils.replace(text[ConfigManager.langSelect], ConfigManager.customWords)
			}
			else
			{
				output = info.title
			}
		}

		if (output)
		{
			this.drawText(output, x, y, width)
		}
	}

	// override drawPlaytime to display the save timestamp in addition to the playtime.
	Window_SavefileList.prototype.drawPlaytime = function(info, x, y, width)
	{
		if (info.playtime)
		{
			this.drawText(`${(new Date(info.timestamp)).toLocaleDateString()} ${info.playtime}`, x, y, width, "right")
			//const saveDate = new Date(info.timestamp)
			//this.drawText(`${(saveDate.getMonth() + 1).toString().padStart(2, '0')}/${saveDate.getDate().toString().padStart(2, '0')} ${info.playtime}`, x, y, width, 'right');
		}
	}

	//unused
	Window_SavefileList.prototype.drawSaveTime = function(info, x, y, width)
	{
		if (info.timestamp)
		{
			this.drawText(info.timestamp, x, y, width, "right")
		}
	}
})()
