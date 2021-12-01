/*:
 * @plugindesc	some parts of the maps need to blacked out when playing in widescreen.
 *				(e.g., the inside of village houses generally share the same map)
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Scene_Map
	//=============================================================================

	const Scene_Map_start = Scene_Map.prototype.start

	Scene_Map.prototype.start = function()
	{
		Scene_Map_start.call(this)

		if ($dataMap.meta.hasOwnProperty("start_ce")
			&& $dataMap.meta.start_ce > 0)
		{
			$gameTemp.reserveCommonEvent($dataMap.meta.start_ce)
		}
	}

	//=============================================================================
	// Game_Map
	//=============================================================================

	const Game_Map_setup = Game_Map.prototype.setup

	Game_Map.prototype.setup = function(mapId)
	{
		Game_Map_setup.call(this, mapId)

		if ($dataMap.meta.hasOwnProperty("setup_ce")
			&& $dataMap.meta.setup_ce > 0)
		{
			$gameTemp.reserveCommonEvent($dataMap.meta.setup_ce)
		}
	}
}

})()
