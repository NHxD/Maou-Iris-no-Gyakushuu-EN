/*:
 * @plugindesc	Replace and add many localization strings.
 *
 * @author		ash
 *
 * @require		TS_Localize
 * @require		TS_Function
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Map
	//=============================================================================

	// override to localize name. adds an optional boolean argument to return field unmodified.
	Game_Map.prototype.displayName = function(raw)
	{
		if (raw == undefined)
		{
			const separator = " ||| "

			if ($dataMap.displayName.indexOf(separator) !== -1)
			{
				const text = $dataMap.displayName.split(separator)

				return TextUtils.replace(text[ConfigManager.langSelect], ConfigManager.customWords)
			}
			else
			{
				return TextUtils.replace($dataMap.displayName, ConfigManager.customWords)
			}
		}

		return $dataMap.displayName
	}

	//=============================================================================
	// Window_MapName
	//=============================================================================
	/*
	// localize map name.
	Window_MapName.prototype.refresh = function()
	{
		this.contents.clear()

		const name = $gameMap.displayName()

		if (name)
		{
			const width = this.contentsWidth()

			this.drawBackground(0, 0, width, this.lineHeight())
			this.drawText(name, 0, 0, width, 'center')
		}
	}
	*/
	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_setupChoices = Game_Interpreter.prototype.setupChoices

	// override to replace custom words in choice options. 
	Game_Interpreter.prototype.setupChoices = function(params)
	{
		const separator = " ||| "
		const new_params = params.clone()
		const choices = new_params[0].clone()
		
		for (let i = 0; i < choices.length; ++i)
		{
			if (choices[i].indexOf(separator) !== -1)
			{
				const text = choices[i].split(separator)

				choices[i] = TextUtils.replace(text[ConfigManager.langSelect], ConfigManager.customWords)
			}
		}
		
		new_params[0] = choices
		
		Game_Interpreter_setupChoices.call(this, new_params)
	}

	//=============================================================================
	// TS_Function
	//=============================================================================

	TS_Function.getLanguage = function(type)
	{
		if (TS_Localize.LanguageList.hasOwnProperty(type))
		{
			const strings = TS_Localize.LanguageList[type]

			if (strings.hasOwnProperty(ConfigManager.langSelect))
			{
				return strings[ConfigManager.langSelect]
			}
			else
			{
				console.warn("<strings> does not contain a localized entry for language id #" + ConfigManager.langSelect)
			}
		}
		else
		{
			console.warn(type + " is not a valid string id.")
		}

		return "<<" + type + ">>"
	}

	TS_Function.hasKey = function(key, langId)
	{
		if (langId == undefined) langId = ConfigManager.langSelect

		if (TS_Localize.LanguageList.hasOwnProperty(key))
		{
			const strings = TS_Localize.LanguageList[key]

			if (strings.hasOwnProperty(langId))
			{
				return true
			}
		}

		return false
	}

	//=============================================================================
	// TS_Localize
	//=============================================================================

	TS_Localize.LanguageList =
	{
		// --------------------------------------
		// Morale.
		// --------------------------------------

		MoralePoints : [
			"Morale",
			"Morale",
			"Morale",
		],

		ShowMorale : [
			"Show Morale Status",
			"Show Morale Status",
			"Show Morale Status",
		],

		// --------------------------------------
		// Debug.
		// --------------------------------------

		Debug : [
			"Debug Commands",
			"Debug Commands",
			"Debug Commands",
		],

		TestCommonEvent : [
			"Test Common Event (var 1)",
			"Test Common Event (var 1)",
			"Test Common Event (var 1)",
		],

		TestMap : [
			"Test Map (var 2 at var3 x var4)",
			"Test Map (var 2 at var3 x var4)",
			"Test Map (var 2 at var3 x var4)",
		],

		// --------------------------------------
		// Options.
		// --------------------------------------

		Game : [
			"Game",
			"Game",
			"Game",
		],

		Display : [
			"Display",
			"Display",
			"Display",
		],

		Audio : [
			"Audio",
			"Audio",
			"Audio",
		],

		System : [
			"System",
			"System",
			"System",
		],

		NotAvailable : [
			"N/A",
			"N/A",
			"N/A",
		],

		stretchMode : [
			"Stretch",
			"Stretch",
			"Stretch",
		],

		fitMode : [
			"Fit",
			"Fit",
			"Fit",
		],

		fitMode_ValueWidth : [
			"Width",
			"Width",
			"Width",
		],

		fitMode_ValueHeight : [
			"Height",
			"Height",
			"Height",
		],

		fitMode_ValueAll : [
			"All",
			"All",
			"All",
		],
		
		fitMode_ValueNone : [
			"None",
			"None",
			"None",
		],

		alwaysDash : [
			"??????????????????",
			"Always Run",
			"????????????",
		],
		
		bgmVolume : [
			"BGM ??????",
			"BG Music Volume",
			"BGM??????",
		],
		
		bgsVolume : [
			"BGS ??????",
			"BG Moans Volume",
			"BGV?????????????????????",
		],

		commandRemember : [
			"??????????????????",
			"Remember Battle Commands",
			"????????????",
		],
		
		seVolume : [
			"SE ??????",
			"SFX & Voice Volume",
			"SE???Voice??????",
		],

		meVolume : [
			"ME ??????",
			"Fanfare Music Volume",
			"ME??????",
		],

		// --------------------------------------
		// Custom Options.
		// --------------------------------------

		ShowAdultContent : [
			"Show R-18 Content",	// TODO
			"Show Adult Content",
			"Show R-18 Content",	// TODO
		],

		StartGameNaked : [
			"Start Game Naked",	// TODO: ???????????????????????????
			"Start Game Naked",
			"Start Game Naked",	// TODO
		],

		UseEndureSystem : [
			"Allow Resist H Assault",	// TODO: H????????????????????????
			"Allow Resist H Assault",
			"Allow Resist H Assault",	// TODO
		],

		ShowBlackFrames : [
			"Show Black Frames",	// TODO
			"Show Black Frames",
			"Show Black Frames",	// TODO
		],

		ShowStandZoomTransitions : [
			"Show Stand Zoom Transitions",	// TODO
			"Show Stand Zoom Transitions",
			"Show Stand Zoom Transitions",	// TODO
		],

		AutoAdvanceMessage : [
			"Auto Advance Messages",	// TODO
			"Auto Advance Messages",
			"Auto Advance Messages",	// TODO
		],

		UseOriginalNames : [
			"Show Original Names",	// TODO
			"Show Original Names",
			"Show Original Names",	// TODO
		],

		PrecacheImages : [
			"Precache Images",	// TODO
			"Precache Images",
			"Precache Images",	// TODO
		],

		ColoredItemNames : [
			"Colored Item Names",	// TODO: ???????????????????????????
			"Colored Item Names",
			"Colored Item Names",	// TODO
		],
		
		FaceBlending : [
			"Face Blending",	// TODO
			"Face Blending",
			"Face Blending",	// TODO
		],

		ShowDimOverlay : [
			"Show Dim Overlay",	// TODO
			"Show Dim Overlay",
			"Show Dim Overlay",	// TODO
		],

		AllowContinueAfterDefeat : [
			"Allow Continues",	// TODO
			"Allow Continues",
			"Allow Continues",	// TODO
		],

		RecoverAllOnContinue : [
			"Recover All On Continue",	// TODO
			"Recover All On Continue",
			"Recover All On Continue",	// TODO
		],

		RecoverAllOnLevelUp : [
			"Recover All On Level Up",	// TODO
			"Recover All On Level Up",
			"Recover All On Level Up",	// TODO
		],
		
		// --------------------------------------
		// Status/Elemental Resistance menu
		// --------------------------------------

		ElementResistance : [
			'????????????',
			'Elemental Resistance',
			'????????????',
		],
		
		// --------------------------------------
		// Status/Status Ailment menu
		// --------------------------------------

		StateResistance : [
			'??????????????????',
			'Abnormal Status Resistances',
			'????????????',
		],

		// --------------------------------------
		// Status/Sex menu (shared)
		// --------------------------------------

		SecretSexLabel : [
			'???????????????',
			'???',
			'???????????????',
		],

		SecretSexValue : [
			'---',
			'---',
			'---',
		],

		CurrencyValueFormat : [
			'%1G',
			'%1G',
			'%1G',
		],

		SpermQuantityValueFormat : [
			'%1mL',
			'%1 ml',
			'%1mL',
		],
		
		PercentageValueFormat : [
			'%1%',
			'%1%',
			'%1%',
		],

		CountValueFormat : [
			'---',
			'%1 times',
			'---',
		],

		// --------------------------------------
		// Status/Sex Overview menu
		// --------------------------------------

		SexHeader : [
			'SEX',
			'Sex Status',
			'SEX',
		],

		SexLevel : [
			'?????????',
			'Experience',
			'?????????',
		],

		// Deflowered
		SexLevelValue0 : [
			'Lv0',
			'Lv0',
			'Lv0',
		],

		// Tight
		SexLevelValue1 : [
			'Lv1',
			'Lv1',
			'Lv1',
		],

		// Trained
		SexLevelValue2 : [
			'Lv2',
			'Lv2',
			'Lv2',
		],

		// Loose
		SexLevelValue3 : [
			'Lv3',
			'Lv3',
			'Lv3',
		],

		// Virgin
		SexLevelValueMin : [
			'---',
			'---',
			'---',
		],

		SexLevelValueMax : [
			'Max',
			'Max',
			'Max',
		],

		NaughtyLevel : [
			'?????????',
			'Lewdness',
			//'Exhibitionism',
			//'Perversion',
			'?????????',
		],

		// Low
		NaughtyLevelValue0 : [
			'Lv0',
			'Lv0',
			'Lv0',
		],

		// High
		NaughtyLevelValue1 : [
			'Lv1',
			'Lv1',
			'Lv1',
		],

		// Extreme
		NaughtyLevelValue2 : [
			'Lv2',
			'Lv2',
			'Lv2',
		],
		
		NaughtyLevelValueMin : [
			'---',
			'---',
			'---',
		],

		NaughtyLevelValueMax : [
			'Max',
			'Max',
			'Max',
		],

		NoSexExperience : [
			'?????????',
			'---',
			'???',
		],
		
		FirstSexPartner : [
			'??????????????????',
			'Lost Virginity To',
			'???????????????',
		],
		
		LastSexPartner : [
			'Last Encounter With',
			'Last Encounter With',
			'Last Encounter With',
		],

		// currently unused.
		LastImpregnatedBy : [
			'Last Impregnated By',
			'Last Impregnated By',
			'Last Impregnated By',
		],

		EjaculationCount : [
			'?????????????????????',
			'Creampied',
			'???????????????',
		],
		
		Times : [
			'???',
			' times',
			'???',
		],
		
		EjaculationSemen : [
			'????????????????????????',
			'Semen Accumulated',
			'??????????????????',
		],
		
		VaginaStatus : [
			'???????????????',
			'Vagina Development',
			'????????????',
		],

		// --------------------------------------
		// Status/Sex Details menu
		// --------------------------------------

		SexDetailsPageHeader : [
			'Sex Details',
			'Sex Details',
			'Sex Details',
		],

		Exhibitionism : [
			'Exhibitionism',
			'Exhibitionism',
			'Exhibitionism',
		],

		AnalExperience : [
			'Anal Experience',
			'Anal Experience',
			'Anal Experience',
		],

		OralExperience : [
			'Oral Experience',
			'Oral Experience',
			'Oral Experience',
		],

		OppaiExperience : [
			'Oppai Experience',
			'Oppai Experience',
			'Oppai Experience',
		],

		AnalDevelopment : [
			'Anus Development',
			'Anus Development',
			'Anus Development',
		],

		OralDevelopment : [
			'Mouth Development',
			'Mouth Development',
			'Mouth Development',
		],

		OppaiDevelopment : [
			'Oppai Development',
			'Breast Development',
			'Breast Development',
		],

		// --------------------------------------
		// Status/Sex Details/Ejaculations menu
		// --------------------------------------

		EjaculationCountPageHeader : [
			'Ejaculations',
			'Ejaculations',
			'Ejaculations',
		],

		AnalEjaculationCount : [
			'Inside Anus',
			'Inside Anus',
			'Inside Anus',
		],

		VaginalEjaculationCount : [
			'Inside Vagina',
			'Inside Vagina',
			'Inside Vagina',
		],

		OralEjaculationCount : [
			'Inside Mouth',
			'Inside Mouth',
			'Inside Mouth',
		],

		OppaiEjaculationCount : [
			'On Breasts',
			'On Breasts',
			'On Breasts',
		],

		FaceEjaculationCount : [
			'On Face',
			'On Face',
			'On Face',
		],

		BodyEjaculationCount : [
			'On Body',
			'On Body',
			'On Body',
		],

		// --------------------------------------
		// Status/Sex Details/Sperm Quantity menu
		// --------------------------------------

		SpermQuantityPageHeader : [
			'Semen Accumulated',
			'Semen Accumulated',
			'Semen Accumulated',
		],

		AnalSpermQuantity : [
			'Inside Anus',
			'Inside Anus',
			'Inside Anus',
		],

		VaginalSpermQuantity : [
			'Inside Vagina',
			'Inside Vagina',
			'Inside Vagina',
		],

		OralSpermQuantity : [
			'Inside Mouth',
			'Inside Mouth',
			'Inside Mouth',
		],

		OppaiSpermQuantity : [
			'On Breasts',
			'On Breasts',
			'On Breasts',
		],

		FaceSpermQuantity : [
			'On Face',
			'On Face',
			'On Face',
		],

		BodySpermQuantity : [
			'On Body',
			'On Body',
			'On Body',
		],

		// --------------------------------------
		// Status/Sex Details/First Users menu
		// --------------------------------------

		FirstUserPageHeader : [
			'First User',
			'First User',
			'First User',
		],

		AnalFirstUser : [
			'Anus',
			'Anus',
			'Anus',
		],

		VaginalFirstUser : [
			'Vagina',
			'Vagina',
			'Vagina',
		],

		OralFirstUser : [
			'Mouth',
			'Mouth',
			'Mouth',
		],

		OppaiFirstUser : [
			'Breasts',
			'Breasts',
			'Breasts',
		],

		// --------------------------------------
		// Status/Sex Details/Last Users menu
		// --------------------------------------

		LastUserPageHeader : [
			'Last User',
			'Last User',
			'Last User',
		],

		AnalLastUser : [
			'Anus',
			'Anus',
			'Anus',
		],

		VaginalLastUser : [
			'Vagina',
			'Vagina',
			'Vagina',
		],

		OralLastUser : [
			'Mouth',
			'Mouth',
			'Mouth',
		],

		OppaiLastUser : [
			'Breasts',
			'Breasts',
			'Breasts',
		],

		// --------------------------------------
		// Status/Sex Details/Sex Counts menu
		// --------------------------------------

		SexActCountsPageHeader : [
			'Sex Acts',
			'Sex Acts',
			'Sex Acts',
		],

		SexDetailsCountPageHeader : [
			'Sex Occurences',
			'Sex Occurences',
			'Sex Occurences',
		],

		AnalSexActCount : [
			'Anal Sex',
			'Anal Sex',
			'Anal Sex',
		],

		VaginalSexActCount : [
			'Vaginal Sex',
			'Vaginal Sex',
			'Vaginal Sex',
		],

		OralSexActCount : [
			'Oral Sex',
			'Oral Sex',
			'Oral Sex',
		],

		OppaiSexActCount : [
		// this includes groping, paizuri, etc.
			'Oppai Sex',
			'Oppai Sex',
			'Oppai Sex',
		],

		HandjobSexActCount : [
			'Handjobs',
			'Handjobs',
			'Handjobs',
		],

		CunnilingusSexActCount : [
			'Cunnilingus',
			'Cunnilingus',
			'Cunnilingus',
		],

		FingeringSexActCount : [
			'Fingering',
			'Fingering',
			'Fingering',
		],

		SumataSexActCount : [
			'Sumata',
			'Sumata',
			'Sumata',
		],

		ToySexActCount : [
			'Sex Toys',
			'Sex Toys',
			'Sex Toys',
		],

		// --------------------------------------
		// Status/Sex Details/Counts/Races menu
		// --------------------------------------

		RaceSexCountsPageHeader : [
			'Encounters With',
			'Encounters With',
			'Encounters With',
		],

		HumanSexActCount : [
			'Humans',
			'Humans',
			'Humans',
		],

		OrcSexActCount : [
			'Orcs',
			'Orcs',
			'Orcs',
		],

		AnimalSexActCount : [
			'Animals',
			'Animals',
			'Animals',
		],

		DemonSexActCount : [
			'Demons',
			'Demons',
			'Demons',
		],

		AngelSexActCount : [
			'Angels',
			'Angels',
			'Angels',
		],

		TentacleSexActCount : [
			'Tentacles',
			'Tentacles',
			'Tentacles',
		],

		// --------------------------------------
		// Status/Sex Details/Counts/Ages menu
		// --------------------------------------

		AgeSexCountsPageHeader : [
			'Sex With',
			'Sex With',
			'Sex With',
		],

		IncestSexActCount : [
			'Incest',
			'Incest',
			'Incest',
		],

		YoungerSexActCount : [
			'Boys',
			'Boys',
			'Boys',
		],

		OlderSexActCount : [
			'Old Men',
			'Old Men',
			'Old Men',
		],

		// --------------------------------------
		// Status/Sex Details/Counts/States menu
		// --------------------------------------

		StateSexCountsPageHeader : [
			'Sex While',
			'Sex While',
			'Sex While',
		],

		SleepingSexActCount : [
			'Asleep',
			'Asleep',
			'Asleep',
		],

		UnconsciousSexActCount : [
			'Unconscious',
			'Unconscious',
			'Unconscious',
		],

		DruggedSexActCount : [
			'Drugged',
			'Drugged',
			'Drugged',
		],

		RestrainedSexActCount : [
			'Restrained',
			'Restrained',
			'Restrained',
		],

		PregnantSexActCount : [
			'Pregnant',
			'Pregnant',
			'Pregnant',
		],

		HypnotizedSexActCount : [
			'Hypnotized',
			'Hypnotized',
			'Hypnotized',
		],

		ParalyzedSexActCount : [
			'Paralyzed',
			'Paralyzed',
			'Paralyzed',
		],

		// --------------------------------------
		// Status/Sex Details/Counts/Circumstances menu
		// --------------------------------------

		CircumstanceSexCountsPageHeader : [
			'Sex Circumstances',
			'Sex Circumstances',
			'Sex Circumstances',
		],

		DefeatedSexActCount : [
			'Defeated',
			'Defeated',
			'Defeated',
		],

		ProstitutionSexActCount : [
			'Prostitution',
			'Prostitution',
			'Prostitution',
		],

		// --------------------------------------
		// Sex misc.
		// --------------------------------------

		ProstitutionEarning : [
			'Total Earning',
			'Total Earning',
			'Total Earning',
		],

		TotalBirthCount : [
			'Births',
			'Births',
			'Births',
		],

		// --------------------------------------
		// Status/Sex overview menu (sex partner names)
		// --------------------------------------

		RedOrcSexPartnerValue : [
			"??????????????????",
			"Red Orc",
			"?????????",
		],

		BanditSexPartnerValue : [
			"??????",
			"Bandits",
			"??????",
		],

		GiantSquidSexPartnerValue : [
			"??????????????????",
			"Giant Squid",
			"????????????",
		],

		DevilGeneralSexPartnerValue : [
			"????????????",
			"Revenant General",
			"????????????",
		],

		DemonSexPartnerValue : [
			"???",
			"Demon",
			"??????",
		],

		AssassinsSexPartnerValue : [
			"?????????",
			"Thug",
			"??????",
		],

		PrinceSexPartnerValue : [
			"???????????????",
			"Prince Eyster",
			"???????????????",
		],

		LannanSexPartnerValue : [
			"???????????????",
			"Prince Lannan",
			"????????????",
		],

		OrcMinionSexPartnerValue : [
			"??????",//???????????????
			"Orc Minion",
			"??????",
		],

		JailorSexPartnerValue : [
			"??????",
			"Jailer",
			"??????",
		],

		TentacleMonsterSexPartnerValue : [
			"????????????",
			"Ritual Tentacle Monster",
			"????????????",
		],

		GreatPriestSexPartnerValue : [
			"?????????",
			"High Priest",
			"?????????",
		],

		ZionSexPartnerValue : [
			"?????????",
			"Hero Chiot",
			"??????",
		],

		KirinSexPartnerValue : [
			"??????",
			"Apostle Kylin",
			"??????",
		],

		HolyGodSexPartnerValue : [
			"?????????",
			"Saint Jervis",
			"?????????",
		],

		// NEW
		AngelSexPartnerValue : [
			"??????",
			"Angels",
			"??????",
		],

		BoySexPartnerValue : [
			"??????",
			"Rich Boy",
			"??????",
		],

		// NEW
		YoungManSexPartnerValue : [
			"??????",
			"Young Man",
			"??????",
		],

		AristocratSexPartnerValue : [
			"??????",
			"Aristocrat",
			"??????",
		],

		RoyalNoblemanSexPartnerValue : [
			"???????????????",
			"Royal Nobleman",
			"???????????????",
		],

		ToolShopOwnerSexPartnerValue : [
			"?????????????????????",
			"Store Owner",
			"???????????????",
		],

		ToolShopCustomerSexPartnerValue : [
			"?????????????????????",
			"Store Customer",
			"??????????????????",
		],

		InnReceptionistSexPartnerValue : [
			"???????????????",
			"Inn's Receptionist",
			"????????????",
		],

		OrcSexPartnerValue : [
			"?????????",
			"Orc",
			"??????",
		],

		PlayboySexPartnerValue : [
			"?????????",
			"Playboy",
			"??????",
		],

		MerchantSexPartnerValue : [
			"??????",
			"Merchant",
			"??????",
		],

		CorruptDeputyOfficialSexPartnerValue : [
			"?????????",
			"Corrupt Deputy Official",
			"??????",
		],

		MerchantSonSexPartnerValue : [
			"???????????????",
			"Merchant's Son",
			"???????????????",
		],

		BanditLeaderSexPartnerValue : [
			"???????????????",
			"Bandit Leader",
			"??????",
		],

		// --------------------------------------
		// Status overview menu (race names)
		// --------------------------------------

		HumanRace : [
			'??????',	// TODO
			'Human',
			'??????',	// TODO
		],

		DemonRace : [
			'??????',		// TODO
			'Demon',
			'??????',		// TODO
		],

		ElfRace : [
			'?????????',		// TODO
			'Elf',
			'??????',		// TODO
		],

		// --------------------------------------
		// Options
		// --------------------------------------

		Shutdown : [
			'?????????????????????',
			'Exit Game',
			'??????',
		],

		Dash : [
			'??????????????????',
			'Dash',
			'????????????',
		],
		
		FullScreen : [
			'??????????????????????????????',
			'Full-screen',
			'????????????',
		],
		
		KeyConfig : [
			'?????????????????????',
			'Push Button Configuration',
			'????????????',
		],
		
		Animation : [
			'???????????????????????????',
			'Play Animation',
			'????????????',
		],
		
		KeyConfigDefault : [
			'??????????????????????????????',
			'Restore to the initial setting',
			'??????????????????',
		],
		
		KeyConfigDefaultHepl : [
			'??????????????????????????????????????????????????????',
			'Restore default settings',
			'????????????????????????',
		],
		
		KeyConfigLayout : [
			'WASD???????????????',
			'WASD Setting',
			'WASD??????',
		],
		
		KeyConfigLayoutHepl : [
			'??????????????????WASD?????????????????????????????????',
			'Change control type to WASD',
			'?????????????????????WASD',
		],
		
		KeyConfigFinish : [
			'????????????????????????',
			'Save settings',
			'????????????',
		],
		
		KeyConfigFinishHelp : [
			'????????????????????????????????????????????????????????? ',
			'Sure to save the keyboard settings?',
			'??????????????????????????????',
		],
		KeyConfigHelp : [
			'??????????????????????????????????????????????????????',
			'Sure to change the keyboard settings?',
			'?????????????????????????????????',
		],
		
		KeyConfigButtonClear : [
			'Clear',
			'Clear',
			'????????????',
		],
		
		KeyConfigButtonOk : [
			'OK / ??????',
			'Confirm/Talk',
			'??????/??????',
		],
		
		
		KeyConfigButtonEsc : [
			'Cancel / Menu',
			'Cancel/Menu',
			'??????/??????',
		],
		
		KeyConfigButtonCancel : [
			'???????????????',
			'Cancel',
			'??????',
		],
		
		KeyConfigButtonMenu : [
			'Menu',
			'Menu',
			'??????',
		],
		
		KeyConfigButtonDash : [
			'??????????????????',
			'Dash',
			'????????????',
		],
		
		KeyConfigButtonPageUp : [
			'??????????????????',
			'Page Up',
			'?????????',
		],
		
		KeyConfigButtonPageDown : [
			'??????????????????',
			'Page Down',
			'?????????',
		],
		
		KeyConfigButtonLeft : [
			'??????',
			'Move Left',
			'??????',
		],
		
		KeyConfigButtonUp : [
			'??????',
			'Move Up',
			'??????',
		],
		
		KeyConfigButtonRight : [
			'??????',
			'Move Right',
			'??????',
		],
		
		KeyConfigButtonDown : [
			'??????',
			'Move Down',
			'??????',
		],

		// --------------------------------------
		// Memory menu
		// --------------------------------------

		ReplayRP : [
			'??????',
			'Memory',
			'??????',
		],
		
		ReplayCG : [
			'CG?????????',
			'CG Mode',
			'CG??????',
		],
		
		// --------------------------------------
		// ItemEquip menu
		// --------------------------------------

		EquipFinish : [
			'??????',
			'Return',
			'??????',
		],
		
		EquipRemove : [
			'??????',
			'Remove',
			'??????',
		],
		
		EquipEmpty : [
			'????????????',
			'???Empty???',
			'?????????',
		],

	}
}

})()
