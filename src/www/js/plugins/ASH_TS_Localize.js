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
			"常時ダッシュ",
			"Always Run",
			"常用設置",
		],
		
		bgmVolume : [
			"BGM 音量",
			"BG Music Volume",
			"BGM音量",
		],
		
		bgsVolume : [
			"BGS 音量",
			"BG Moans Volume",
			"BGV（娇喘声）音量",
		],

		commandRemember : [
			"コマンド記憶",
			"Remember Battle Commands",
			"指令记忆",
		],
		
		seVolume : [
			"SE 音量",
			"SFX & Voice Volume",
			"SE・Voice音量",
		],

		meVolume : [
			"ME 音量",
			"Fanfare Music Volume",
			"ME音量",
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
			"Start Game Naked",	// TODO: 裸でゲームを始める
			"Start Game Naked",
			"Start Game Naked",	// TODO
		],

		UseEndureSystem : [
			"Allow Resist H Assault",	// TODO: Hの暴行に抵抗する
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
			"Colored Item Names",	// TODO: 色付きのアイテム名
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
			'属性耐性',
			'Elemental Resistance',
			'属性耐性',
		],
		
		// --------------------------------------
		// Status/Status Ailment menu
		// --------------------------------------

		StateResistance : [
			'ステート耐性',
			'Abnormal Status Resistances',
			'狀態耐性',
		],

		// --------------------------------------
		// Status/Sex menu (shared)
		// --------------------------------------

		SecretSexLabel : [
			'？？？？？',
			'???',
			'？？？？？',
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
			'開発度',
			'Experience',
			'開發度',
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
			'淫乱度',
			'Lewdness',
			//'Exhibitionism',
			//'Perversion',
			'淫亂度',
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
			'未経験',
			'---',
			'無',
		],
		
		FirstSexPartner : [
			'初めての相手',
			'Lost Virginity To',
			'第一次做愛',
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
			'射精された回数',
			'Creampied',
			'被射精次數',
		],
		
		Times : [
			'回',
			' times',
			'次',
		],
		
		EjaculationSemen : [
			'射精された精液量',
			'Semen Accumulated',
			'被射精精液量',
		],
		
		VaginaStatus : [
			'股間の状態',
			'Vagina Development',
			'陰道狀態',
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
			"レッドオーク",
			"Red Orc",
			"红兽人",
		],

		BanditSexPartnerValue : [
			"山賊",
			"Bandits",
			"山贼",
		],

		GiantSquidSexPartnerValue : [
			"ダイオウイカ",
			"Giant Squid",
			"大王乌贼",
		],

		DevilGeneralSexPartnerValue : [
			"鬼滅将軍",
			"Revenant General",
			"鬼滅将军",
		],

		DemonSexPartnerValue : [
			"鬼",
			"Demon",
			"恶魔",
		],

		AssassinsSexPartnerValue : [
			"人殺し",
			"Thug",
			"凶手",
		],

		PrinceSexPartnerValue : [
			"エスト王子",
			"Prince Eyster",
			"艾斯特王子",
		],

		LannanSexPartnerValue : [
			"レナン王子",
			"Prince Lannan",
			"萊南王子",
		],

		OrcMinionSexPartnerValue : [
			"魔物",//悪魔オーク
			"Orc Minion",
			"恶魔",
		],

		JailorSexPartnerValue : [
			"看守",
			"Jailer",
			"看守",
		],

		TentacleMonsterSexPartnerValue : [
			"召喚儀式",
			"Ritual Tentacle Monster",
			"召唤仪式",
		],

		GreatPriestSexPartnerValue : [
			"大神官",
			"High Priest",
			"大神官",
		],

		ZionSexPartnerValue : [
			"シオン",
			"Hero Chiot",
			"西欧",
		],

		KirinSexPartnerValue : [
			"麒麟",
			"Apostle Kylin",
			"麒麟",
		],

		HolyGodSexPartnerValue : [
			"聖滅神",
			"Saint Jervis",
			"聖滅神",
		],

		// NEW
		AngelSexPartnerValue : [
			"天使",
			"Angels",
			"天使",
		],

		BoySexPartnerValue : [
			"少年",
			"Rich Boy",
			"少年",
		],

		// NEW
		YoungManSexPartnerValue : [
			"青年",
			"Young Man",
			"青年",
		],

		AristocratSexPartnerValue : [
			"貴族",
			"Aristocrat",
			"貴族",
		],

		RoyalNoblemanSexPartnerValue : [
			"王都の貴族",
			"Royal Nobleman",
			"王都的貴族",
		],

		ToolShopOwnerSexPartnerValue : [
			"道具屋のオヤジ",
			"Store Owner",
			"道具店大叔",
		],

		ToolShopCustomerSexPartnerValue : [
			"道具屋に来た客",
			"Store Customer",
			"道具屋的客人",
		],

		InnReceptionistSexPartnerValue : [
			"宿屋の受付",
			"Inn's Receptionist",
			"旅館前台",
		],

		OrcSexPartnerValue : [
			"オーク",
			"Orc",
			"獸人",
		],

		PlayboySexPartnerValue : [
			"遊び人",
			"Playboy",
			"遊客",
		],

		MerchantSexPartnerValue : [
			"商人",
			"Merchant",
			"商人",
		],

		CorruptDeputyOfficialSexPartnerValue : [
			"悪代官",
			"Corrupt Deputy Official",
			"貪官",
		],

		MerchantSonSexPartnerValue : [
			"商人の息子",
			"Merchant's Son",
			"商人的兒子",
		],

		BanditLeaderSexPartnerValue : [
			"山賊の首領",
			"Bandit Leader",
			"首領",
		],

		// --------------------------------------
		// Status overview menu (race names)
		// --------------------------------------

		HumanRace : [
			'人間',	// TODO
			'Human',
			'人类',	// TODO
		],

		DemonRace : [
			'悪魔',		// TODO
			'Demon',
			'魔鬼',		// TODO
		],

		ElfRace : [
			'エルフ',		// TODO
			'Elf',
			'精灵',		// TODO
		],

		// --------------------------------------
		// Options
		// --------------------------------------

		Shutdown : [
			'シャットダウン',
			'Exit Game',
			'結束',
		],

		Dash : [
			'常時ダッシュ',
			'Dash',
			'常用设置',
		],
		
		FullScreen : [
			'フルスクリーンで起動',
			'Full-screen',
			'全屏啟動',
		],
		
		KeyConfig : [
			'キーコンフィグ',
			'Push Button Configuration',
			'按鍵配置',
		],
		
		Animation : [
			'アニメーション再生',
			'Play Animation',
			'播放動畫',
		],
		
		KeyConfigDefault : [
			'デフォルトレイアウト',
			'Restore to the initial setting',
			'恢復初期設定',
		],
		
		KeyConfigDefaultHepl : [
			'キーボード設定をデフォルトに戻します',
			'Restore default settings',
			'按鍵設定恢復預設',
		],
		
		KeyConfigLayout : [
			'WASDレイアウト',
			'WASD Setting',
			'WASD設定',
		],
		
		KeyConfigLayoutHepl : [
			'キーボードをWASDレイアウトに変更します',
			'Change control type to WASD',
			'移動模式變更為WASD',
		],
		
		KeyConfigFinish : [
			'コンフィグを完了',
			'Save settings',
			'保存設定',
		],
		
		KeyConfigFinishHelp : [
			'キーボードのコンフィグを完了しますか？ ',
			'Sure to save the keyboard settings?',
			'確認保存按鍵設定嗎？',
		],
		KeyConfigHelp : [
			'このキーのコンフィグを変更しますか？',
			'Sure to change the keyboard settings?',
			'更換目前的按鍵設定嗎？',
		],
		
		KeyConfigButtonClear : [
			'Clear',
			'Clear',
			'恢復預設',
		],
		
		KeyConfigButtonOk : [
			'OK / 話す',
			'Confirm/Talk',
			'確認/對話',
		],
		
		
		KeyConfigButtonEsc : [
			'Cancel / Menu',
			'Cancel/Menu',
			'取消/菜單',
		],
		
		KeyConfigButtonCancel : [
			'キャンセル',
			'Cancel',
			'取消',
		],
		
		KeyConfigButtonMenu : [
			'Menu',
			'Menu',
			'菜單',
		],
		
		KeyConfigButtonDash : [
			'ダッシュする',
			'Dash',
			'快速移動',
		],
		
		KeyConfigButtonPageUp : [
			'ページアップ',
			'Page Up',
			'上一頁',
		],
		
		KeyConfigButtonPageDown : [
			'ページダウン',
			'Page Down',
			'下一頁',
		],
		
		KeyConfigButtonLeft : [
			'左へ',
			'Move Left',
			'向左',
		],
		
		KeyConfigButtonUp : [
			'上へ',
			'Move Up',
			'向上',
		],
		
		KeyConfigButtonRight : [
			'右へ',
			'Move Right',
			'向右',
		],
		
		KeyConfigButtonDown : [
			'下へ',
			'Move Down',
			'向下',
		],

		// --------------------------------------
		// Memory menu
		// --------------------------------------

		ReplayRP : [
			'回想',
			'Memory',
			'回憶',
		],
		
		ReplayCG : [
			'CGモード',
			'CG Mode',
			'CG模式',
		],
		
		// --------------------------------------
		// ItemEquip menu
		// --------------------------------------

		EquipFinish : [
			'戻る',
			'Return',
			'返回',
		],
		
		EquipRemove : [
			'外す',
			'Remove',
			'移除',
		],
		
		EquipEmpty : [
			'＜空き＞',
			'＜Empty＞',
			'＜空＞',
		],

	}
}

})()
