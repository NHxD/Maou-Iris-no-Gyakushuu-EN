/*:
 * @plugindesc	add morale attribute to game actors.
 *
 * @author		ash
 *
 * @require		TS_Function
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Actor
	//=============================================================================

	const Game_Actor_initMembers = Game_Actor.prototype.initMembers

	Game_Actor.prototype.initMembers = function()
	{
		Game_Actor_initMembers.apply(this, arguments)

		this.setMaxMorale(100)
		this.setMorale(100)
	}

	const Game_Actor_die = Game_Actor.prototype.die

	Game_Actor.prototype.die = function()
	{
		this.setMorale((this.morale() - this.moralePenaltyOnDefeat()).clamp(0, 100))

		Game_Actor_die.apply(this, arguments)
	}

	const Game_Actor_revive = Game_Actor.prototype.revive

	Game_Actor.prototype.revive = function()
	{
		this.setMorale((this.morale() + this.moraleBonusOnResist()).clamp(0, 100))

		Game_Actor_revive.apply(this, arguments)
	}

	Game_Actor.prototype.setMorale = function(value)
	{
		this._morale = Math.min(this._maxMorale, value)

		if (this._actorId && this._actorId > 0)
		{
			const actor = this.actor()//$dataActors[this._actorId]

			if (actor
				&& actor.hasOwnProperty("meta")
				&& actor.meta
				&& actor.meta.hasOwnProperty("morale_var_id")
				&& actor.meta.morale_var_id > 0)
			{
				$gameVariables.setValue(actor.meta.morale_var_id, this._morale)
			}
		}
	}

	Game_Actor.prototype.setMaxMorale = function(value)
	{
		this._maxMorale = value
	}

	Game_Actor.prototype.morale = function()
	{
		return this._morale
	}

	Game_Actor.prototype.maxMorale = function()
	{
		return this._maxMorale
	}

	Game_Actor.prototype.moraleRate = function()
	{
		return this._morale / this._maxMorale
	}

	Game_Actor.prototype.moralePenaltyOnDefeat = function()
	{
		return 5 + (Math.randomInt(6)-6/2)
	}	

	Game_Actor.prototype.moraleBonusOnResist = function()
	{
		return 15 + (Math.randomInt(10)-10/2)
	}

	//=============================================================================
	// Game_System
	//=============================================================================

	const Game_System_onBattleWin = Game_System.prototype.onBattleWin

	Game_System.prototype.onBattleWin = function()
	{
		$gameParty.allMembers().forEach(function(actor)
		{
			actor.setMorale(actor.morale() + this.moraleBonusOnWin())
		}, this)

		Game_System_onBattleWin.apply(this, arguments)
	}

	// NOTE: there's no onBattleLose for some reason...?

	const Game_System_onBattleEscape = Game_System.prototype.onBattleEscape

	Game_System.prototype.onBattleEscape = function()
	{
		$gameParty.allMembers().forEach(function(actor)
		{
			actor.setMorale(actor.morale() - this.moralePenaltyOnEscape())
		}, this)

		Game_System_onBattleEscape.apply(this, arguments)
	}

	Game_System.prototype.moraleBonusOnWin = function()
	{
		return 5 + (Math.randomInt(6)-6/2)
	}

	Game_System.prototype.moralePenaltyOnEscape = function()
	{
		// actually make it a bonus.
		return -1
	}

	//=============================================================================
	// Window_Status
	//=============================================================================

	const Window_Status_drawBasicInfo = Window_Status.prototype.drawBasicInfo

	Window_Status.prototype.drawBasicInfo = function(x, y)
	{
		if (ConfigManager.showMorale)
		{
			const lineHeight = this.lineHeight()

			this.drawActorMorale(this._actor, x, y + lineHeight * 1)
		}

		Window_Status_drawBasicInfo.apply(this, arguments)
	}

	Window_Base.prototype.drawActorMorale = function(actor, x, y, width)
	{
	    width = width || 186

		if (isNaN(actor.morale()) || !isFinite(actor.morale()))
		{
			// bugfix: in case this property was previously corrupted.
			actor.setMorale(actor.maxMorale())
		}

		const moraleRate = actor.moraleRate()
	    const color1 = this.tpGaugeColor1()
	    const color2 = this.tpGaugeColor2()

	    this.drawGauge(x, y, width, Math.max(0, moraleRate), color1, color2)
	    this.changeTextColor(this.systemColor())
	    this.drawText(TS_Function.getLanguage("MoralePoints"), x, y, 44)
	    this.drawCurrentAndMax(actor.morale(), 100, x, y, width,
	                           this.moraleColor(actor), this.normalColor())
	}

	Window_Base.prototype.moraleColor = function(actor)
	{
	    if (actor.morale() === 0)
	    {
	        return this.deathColor()
	    }
	    else if (actor.morale() < 50)
	    {
	        return this.crisisColor()
	    }
	    else
	    {
	        return this.normalColor()
	    }
	}

	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager.showMorale = true

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.apply(this, arguments)

		if (config.hasOwnProperty("showMorale"))
		{
			this.showMorale = this.readFlag(config, "showMorale")
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.apply(this, arguments)

		config.showMorale = this.showMorale

		return config
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_addGeneralOptions = Window_Options.prototype.addGeneralOptions

	Window_Options.prototype.addGeneralOptions = function()
	{
		Window_Options_addGeneralOptions.apply(this, arguments)

		this.addCommand(TS_Function.getLanguage("ShowMorale"), "showMorale", this.showMoraleEnabled())
	}

	Window_Options.prototype.showMoraleEnabled = function()
	{
		return true
	}

	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

	Game_Interpreter.prototype.pluginCommand = function(command, args)
	{
		if (command === "RecoverMorale")
		{
			const threshold = ((args.length >= 1) ? Number(args[0]) : null) || 50

			$gameParty.allMembers().forEach(function(actor) {
				if (actor.morale() < threshold)
				{
					actor.setMorale(threshold)
				}
			})
		}

		Game_Interpreter_pluginCommand.call(this, command, args)
	}
}

})()
