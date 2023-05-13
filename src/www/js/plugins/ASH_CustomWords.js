/*:
 * @plugindesc	Allow the user to define their own keyword
 *				replacement dictionary.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	// TODO: store dictionary as a plugin parameter instead of a config property (since there's no UI API to edit strings)

	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager._customWords =
	[
		//{ key:"Devil", value:"Demon Lord" },
		{ key:"Eli―", value:"Iri―" },
		{ key:"E-Elise", value:"I-Iris" },
		{ key:"E―Elise", value:"I―Iris" },
		{ key:"Elise", value:"Iris" },
		{ key:"E-ELISE", value:"I-IRIS" },
		{ key:"E―ELISE", value:"I―IRIS" },
		{ key:"ELISE", value:"IRIS" },
		{ key:"C-Chiot", value:"S-Sion" },
		{ key:"C―Chiot", value:"S―Sion" },
		{ key:"Chiot", value:"Sion" },
		{ key:"C-CHIOT", value:"S-SION" },
		{ key:"C―CHIOT", value:"S―SION" },
		{ key:"CHIOT", value:"SION" },
		{ key:"Sela", value:"Shīna" },
		{ key:"Mileena", value:"Mirina" },
		{ key:"Zekushi", value:"Zexy" },
		{ key:"Deca", value:"Daika" },
		{ key:"Revenant General", value:"Evil General" },
		{ key:"Grand Justice", value:"High Priest" },
		{ key:"Saint Jervis", value:"Holy God Zevis" },
		{ key:"Jervis", value:"Zevis" },
		{ key:"Exia", value:"Power" },
		{ key:"Dynames", value:"Virtue" },
		{ key:"Kyrios", value:"Guardian" },
		{ key:"BanditＡ", value:"Bandit A" },
		{ key:"BanditＢ", value:"Bandit B" },
		{ key:"Bandit们", value:"Bandit B" }
	]

	ConfigManager.customWords = []

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.apply(this, arguments)

		// COMMENTED: config is stored encrypted, so it won't be easy for users to modify anyway...
		/*
		if (config.hasOwnProperty("customWords")
			&& config["customWords"] != null)
		{
			this._customWords = this.readObject(config, "customWords")
		}
		*/

		this.customWords = []
		this._customWords.forEach(function(element)
			{
				this.customWords.push( { key: new RegExp(element.key, "g"), value: element.value })
			}, this)
	}

	// COMMENTED: config is stored encrypted, so it won't be easy for users to modify anyway...
	/*
	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.apply(this, arguments)

		config.customWords = this._customWords

		return config
	}

	ConfigManager.readObject = function(config, name)
	{
		return config[name]
	}
	*/
}

})()
