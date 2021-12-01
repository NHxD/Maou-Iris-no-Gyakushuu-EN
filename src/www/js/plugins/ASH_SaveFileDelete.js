/*:
 * @plugindesc	Allow save files to be deleted.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Input
	//=============================================================================

	Input.keyMapper[46] = "delete"	// delete key

	//=============================================================================
	// Window_SavefileList
	//=============================================================================

	const Window_SavefileList_update = Window_SavefileList.prototype.update

	Window_SavefileList.prototype.update = function()
	{
		Window_SavefileList_update.apply(this, arguments)

		this.processHotkeys()
	}

	Window_SavefileList.prototype.processHotkeys = function()
	{
		if (this.isOpenAndActive())
		{
			if (Input.isTriggered("delete"))
			{
				this.processDelete()
			}
		}
	}

	Window_SavefileList.prototype.processDelete = function()
	{
		const id = this.index() + 1
		const valid = DataManager.isThisGameFile(id)
		//const info = DataManager.loadSavefileInfo(id)

		if (!valid)
		{
			SoundManager.playBuzzer()
			return
		}

		try
	    {
			StorageManager.remove(id)
			this.refresh()
			this.updateCursor()
			SoundManager.playOk()
	    }
	    catch (ex)
	    {
	        console.error(ex)
			SoundManager.playCancel()
	    }
	}
}

})()
