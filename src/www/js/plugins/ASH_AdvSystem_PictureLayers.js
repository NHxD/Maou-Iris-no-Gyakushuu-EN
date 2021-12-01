/*:
 * @plugindesc	Adjust layer indices to allow for at least
 *				one picture to be drawn before any actors.
 *				(Used to display the cave overlay in Daika's cave)
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

{
	//=============================================================================
	// ADV_System
	//=============================================================================

	const ADV_System_initialize = ADV_System.prototype.initialize

	ADV_System.prototype.initialize = function()
	{
		ADV_System_initialize.apply(this, arguments)

		this.ADD_LAYER_NUM = {
			BASE	: 10,
			OP2		: 7,
			DEFAULT	: 6,	// face
			OP		: 5,
			BODY	: 2		// body
		}
		
		this.PICT_MAX = 7
		this.PICT_NEW_LAYER = 9
	}
}

})()
