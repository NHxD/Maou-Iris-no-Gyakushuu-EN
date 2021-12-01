/*:
 * @plugindesc	Add a plugin command to swap names between two actors.
 *				(Used to swap Iris <=> Iblis at the start of the game.)
 *
 * @author		ash
 *
 * @require		ADVsystem
 *
 * @help
 *
 * Plugin Command:
 *   SwapActorProperty <property name> <actor 1 id> <actor 2 id>
 */

(function() {
	"use strict"
{
	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

	Game_Interpreter.prototype.pluginCommand = function (command, args)
	{
		if (command === "SwapActorProperty")
		{
			if (args.length < 3)
			{
				console.warn(`PluginCommand.SwapActorProperty: Insufficient number of arguments. Got ${args.length}. Expected ${3}: <Property Name> <First Actor Id> <Second Actor Id>`)
				return
			}

			this.swapActorProperty(args[0], args[1], args[2])
		}

		Game_Interpreter_pluginCommand.call(this, command, args)
	}

	Game_Interpreter.prototype.swapActorProperty = function(propertyName, firstActorId, secondActorId)
	{
		const separator = "||"
	    const actor1 = $gameActors.actor(Number.parseInt(firstActorId))
	    const actor2 = $gameActors.actor(Number.parseInt(secondActorId))
	    const propertyGetterName = propertyName
    	const propertyLocalizedGetterName = "getLocalized" + propertyName.charAt(0).toUpperCase() + propertyName.slice(1)
		const propertySetterName = "set" + propertyName.charAt(0).toUpperCase() + propertyName.slice(1)

	    if (actor1 && actor2
	    	&& propertySetterName in actor1
	    	&& typeof actor1[propertySetterName] === "function"
	    	&& propertySetterName in actor2
	    	&& typeof actor2[propertySetterName] === "function")
	    {
			if (propertyLocalizedGetterName in actor1
		    	&& typeof actor1[propertyLocalizedGetterName] === "function"
		    	&& propertyLocalizedGetterName in actor2
		    	&& typeof actor2[propertyLocalizedGetterName] === "function")
			{
		    	const values1 = [ actor1[propertyLocalizedGetterName](0), actor1[propertyLocalizedGetterName](1), actor1[propertyLocalizedGetterName](2) ]
		    	const values2 = [ actor2[propertyLocalizedGetterName](0), actor2[propertyLocalizedGetterName](1), actor2[propertyLocalizedGetterName](2) ]

				actor1[propertySetterName](values2.join(separator))
				actor2[propertySetterName](values1.join(separator))
	    	}
			else if (propertyGetterName in actor1
		    	&& typeof actor1[propertyGetterName] === "function"
		    	&& propertyGetterName in actor2
		    	&& typeof actor2[propertyGetterName] === "function")
	    	{
		    	const value1 = actor1[propertyGetterName]()
		    	const value2 = actor2[propertyGetterName]()

				actor1[propertySetterName](value2)
				actor2[propertySetterName](value1)
	    	}
	    }

	    return true
	}

	//=============================================================================
	// Game_Actor
	//=============================================================================

	// langId = 0:jp, 1:en, 2:ch
	Game_Actor.prototype.getLocalizedName = function(langId)
	{
		const NK = "RTK_EJ"

		switch (langId)
		{
			case 0:
				return this._name
			case 1:
				return TextUtils.replace(this[NK + "n_en"], ConfigManager.customWords)
			case 2:
				return this[NK + "n_ch"]
			default:
				return ""
		}
	}

	const Game_Actor_setName = Game_Actor.prototype.setName

	Game_Actor.prototype.setName = function(name)
	{
		const separator = "||"
		const NK = "RTK_EJ"
		const a = name.split(separator)

		if (a.length >= 3)
		{
			Game_Actor_setName.call(this, a[0])
			this[NK + "n_en"] = a[1]
			this[NK + "n_ch"] = a[2]
		}
		else if (a.length === 2)
		{
			Game_Actor_setName.call(this, a[0])
			this[NK + "n_en"] = a[1]
			this[NK + "n_ch"] = a[0]
		}
		else
		{
			Game_Actor_setName.call(this, name)
			this[NK + "n_ch"] = name
		}
	}

	// langId = 0:jp, 1:en, 2:ch
	Game_Actor.prototype.getLocalizedNickname = function(langId)
	{
		const NK = "RTK_EJ"

		switch (langId)
		{
			case 0:
				return this._nickname
			case 1:
				return TextUtils.replace(this[NK + "nn_en"], ConfigManager.customWords)
			case 2:
				return this[NK + "nn_ch"]
			default:
				return ""
		}
	}

	const Game_Actor_setNickname = Game_Actor.prototype.setNickname

	Game_Actor.prototype.setNickname = function(nickname)
	{
		const separator = "||"
		const NK = "RTK_EJ"
		const a = name.split(separator)

		if (a.length >= 3)
		{
			Game_Actor_setNickname.call(this, a[0])
			this[NK + "nn_en"] = a[1]
			this[NK + "nn_ch"] = a[2]
		}
		else if (a.length === 2)
		{
			Game_Actor_setNickname.call(this, a[0])
			this[NK + "nn_en"] = a[1]
			this[NK + "nn_ch"] = a[0]
		}
		else
		{
			Game_Actor_setNickname.call(this, nickname)
			this[NK + "nn_ch"] = nickname
		}
	}

	// langId = 0:jp, 1:en, 2:ch
	Game_Actor.prototype.getLocalizedProfile = function(langId)
	{
		const NK = "RTK_EJ"

		switch (langId)
		{
			case 0:
				return this._profile
			case 1:
				return TextUtils.replace(this[NK + "p_en"], ConfigManager.customWords)
			case 2:
				return this[NK + "p_ch"]
			default:
				return ""
		}
	}

	const Game_Actor_setProfile = Game_Actor.prototype.setProfile

	Game_Actor.prototype.setProfile = function(profile)
	{
		const separator = "||"
		const NK = "RTK_EJ"
		const a = name.split(separator)

		if (a.length >= 3)
		{
			Game_Actor_setProfile.call(this, a[0])
			this[NK + "p_en"] = a[1]
			this[NK + "p_ch"] = a[2]
		}
		else if (a.length === 2)
		{
			Game_Actor_setProfile.call(this, a[0])
			this[NK + "p_en"] = a[1]
			this[NK + "p_ch"] = a[0]
		}
		else
		{
			Game_Actor_setProfile.call(this, profile)
			this[NK + "p_ch"] = profile
		}
	}

	//=============================================================================
	// Game_Enemy
	//=============================================================================

	const Game_Enemy_originalName = Game_Enemy.prototype.originalName

	Game_Enemy.prototype.originalName = function()
	{
		const result = Game_Enemy_originalName.call(this)

		return TextUtils.replace(result, ConfigManager.customWords)
	}
}

})()
