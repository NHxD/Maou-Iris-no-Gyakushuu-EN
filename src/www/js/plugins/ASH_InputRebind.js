/*:
 * @plugindesc	Remove alt from being an alias to control.
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

	// alt
	Input.keyMapper[18] = "alt"

	// backspace
	Input.keyMapper[8] = "escape"
}

})()
