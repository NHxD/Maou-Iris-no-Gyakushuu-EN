/*:
 * @plugindesc	parse comment fields and increase lewd attribute accordingly.
 *				(because I'm too lazy to be changing hundreds of common events and dozen of maps...
 *				Because I went through the effort to add a comment describing the clothing condition (i.e., normal, naked, or underwear)
 *				in each dialogue file already, just use that.)

 * @obsolete	I ended up editing every appropriate files with regexes and snippets...
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

// DO NOT USE
{
	//=============================================================================
	// ADV_System
	//=============================================================================

	ADV_System.prototype.parseComment = function(text)
	{
		const add_stack = []

		if (text.toLowerCase().indexOf("■ naked") !== -1)
		{
			//add_stack.push("@if eval=$gameActors.actor(1).hasNote(2,\"Body__contains__hadaka\") bad=jump:*no_hadaka_branch")
			//add_stack.push("@expstatus id=1 prop=lewd op=add val=5")
			add_stack.push("@if eval=true ok=calc:$gameActors.actor(1)._mLewd+=.005")
			//add_stack.push("*no_hadaka_branch")
		}
		else if (text.toLowerCase().indexOf("■ underwear") !== -1)
		{
			//add_stack.push("@if eval=$gameActors.actor(1).hasNote(2,\"Body__contains__sitagi__or__Body__contains__mizugi\") bad=jump:*no_sitagi_branch")
			//add_stack.push("@expstatus id=1 prop=lewd op=add val=1")
			add_stack.push("@if eval=true ok=calc:$gameActors.actor(1)._mLewd+=.001")
			//add_stack.push("*no_sitagi_branch")
		}

		return add_stack
	}

	//=============================================================================
	// Game_Actor
	//=============================================================================

	const Game_Actor_hasNote = Game_Actor.prototype.hasNote

	// quick hack to allow spaces in macros.
	Game_Actor.prototype.hasNote = function(itemType, args, positiveSearch)
	{
		if (typeof args === "string")
		{
			args = args.replace(/__/g, ' ')
		}

		return Game_Actor_hasNote.call(this, itemType, args, positiveSearch)
	}
}

})()
