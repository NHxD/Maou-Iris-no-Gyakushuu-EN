/*:
 * @plugindesc	
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	const actorRaceNames =
	[
		null,
		"Human",
		"Demon",
		"Elf",
	]

	const Game_Actor_initMembers = Game_Actor.prototype.initMembers

	Game_Actor.prototype.initMembers = function()
	{
		Game_Actor_initMembers.apply(this, arguments)

		this._raceId = 0
	}

	const Game_Actor_setup = Game_Actor.prototype.setup

	Game_Actor.prototype.setup = function(actorId)
	{
		Game_Actor_setup.apply(this, arguments)

		const actor = $dataActors[actorId]

		this._raceId = (actor.hasOwnProperty("note")
			&& actor.note
			&& actor.meta.hasOwnProperty("raceId")) ? Number(actor.meta.raceId) : 0
	}

	Game_Actor.prototype.raceName = function()
	{
		if (this._raceId >= actorRaceNames.length)
		{
			console.warn("race id", "out of bounds", this._raceId, actorRaceNames.length)
		}
		else if (this._raceId > 0)
		{
			return TS_Function.getLanguage(actorRaceNames[this._raceId] + "Race")
		}

		return ""
	}

	Game_Actor.prototype.raceId = function()
	{
		return this._raceId
	}
}

})()
