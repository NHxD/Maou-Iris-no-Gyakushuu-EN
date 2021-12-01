/*:
 * @plugindesc	add plugin command to increase lewdness of party members according to their clothing
 *				(used to increase lewdness when iris initiates a conversation)
 *
 * @author		ash
 *
 * @require		ASH_HasActorNote
 */

(function() {
	"use strict"

{
	const lewdIncreases =
	[
		{ check: function(actor) { return actor.hasNote(2, "BODY contains hadaka"); }, lewd: .005 },
		{ check: function(actor) { return actor.hasNote(2, "BODY contains mizugi"); }, lewd: .0025 },
		{ check: function(actor) { return actor.hasNote(2, "BODY contains sitagi"); }, lewd: .0015 },
		{ check: function(actor) { return actor.hasNote(2, "BODY contains kubiwa"); }, lewd: .001 },
	]

	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

	Game_Interpreter.prototype.pluginCommand = function (command, args)
	{
		if (command === "LewdEvent")
		{
			this.commandLewdEvent(args)
		}

		Game_Interpreter_pluginCommand.call(this, command, args)
	}

	Game_Interpreter.prototype.commandLewdEvent = function(args)
	{
		$gameParty.allMembers().forEach(function(actor)
		{
			if (actor != null)
			{
				lewdIncreases.forEach(function(evaluator)
				{
					if (evaluator.check(actor))
					{
						actor._mLewd = Math.min(100, actor._mLewd + evaluator.lewd)
					}
				})
			}
		})
	}
}

})()
