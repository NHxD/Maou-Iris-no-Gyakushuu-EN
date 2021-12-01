/*:
 * @plugindesc	Replace a couple English localization strings.
 *
 * @author		ash
 *
 * @require		RTK1_Core
 * @require		RTK1_Option_EnJa
 */

 (function() {
 	"use strict"

{
	//=============================================================================
	// RTK
	//=============================================================================

	const M = RTK["EJ"]

	M._terms_E =
	{
		"basic":
		[
			"Level",
			"Lv",
			"HP",
			"HP",
			"MP",
			"MP",
			"TP",
			"TP",
			"EXP",
			"EXP"
		],
		"commands":
		[
			// battle menu
			"\\I[77]Fight",
			"\\I[82]Escape",
			"\\I[76]Attack",
			"\\I[81]Guard",
			// game menu
			"\\I[209]Item",	// NOTE: reused in inventory menu for the Items tab and battle menu.
			"Skills",
			"Equipment",
			"Status",
			"Formation",
			"Save",
			"Game End",
			"Options",
			// inventory menu
			"\\I[97]Weapons",
			"\\I[135]Clothes",
			"\\I[195]Key Items",
			//
			"Change",
			// NOTE: "Return" isn't defined here...
			"Clothes 2",	// don't know where this is used.
			// save/load menu
			"Clear",
			"New Game",
			"Load",
			//
			null,
			// quit menu
			"To Title",
			"Cancel",
			//
			null,
			// trade menu
			"Buy",
			"Sell",
			// NEW
			"Inventory",
			"\\I[176]Useables",//Consumables
			"Accessory",
			"\\I[145]Accessory"	// "Accessories" is too long
		],
		"params":
		[
			"Max HP",
			"Max MP",
			"Attack",
			"Defense",
			"M. Attack",
			"M. Defense",
			"Agility",
			"Luck",
			"Hit",
			"Evasion"
		],
		"messages":
		{
			"actionFailure": "\\C[10]There was no effect on\\C[0] \\C[14]%1\\C[0]\\C[14]!\\C[0]",
			"actorDamage": "\\C[14]%1\\C[0] took \\C[2]%2\\C[0] damage!",
			"actorDrain": "\\C[14]%1\\C[0] was drained of \\C[2]%2 %3\\C[0]!",
			"actorGain": "\\C[14]%1\\C[0] gained \\C[14]%2 %3\\C[0]!",
			"actorLoss": "\\C[14]%1\\C[0] lost \\C[2]%2 %3\\C[0]!",
			"actorNoDamage": "\\C[14]%1\\C[0] took no damage!",
			"actorNoHit": "Miss! \\C[14]%1\\C[0] took no damage!",
			"actorRecovery": "\\C[14]%1\\C[0] recovered \\C[3]%2 %3\\C[0]!",
			"alwaysDash": "Always run",
			"bgmVolume": "BG music volume",
			"bgsVolume": "BG moans volume",
			"buffAdd": "\\C[14]%1\\C[0]'s \\C[14]%2\\C[0] went up!",
			"buffRemove": "\\C[14]%1\\C[0]'s \\C[14]%2\\C[0] returned to normal!",
			"commandRemember": "Remember battle commands",
			"counterAttack": "\\C[14]%1\\C[0] counter-attacked!",
			"criticalToActor": "\\C[14]A painful blow!\\C[0]",
			"criticalToEnemy": "\\C[14]An excellent hit!\\C[0]",
			"debuffAdd": "\\C[14]%1\\C[0]'s \\C[14]%2\\C[0] went down!",
			"defeat": "\\C[14]%1\\C[0] has been defeated.",
			"emerge": "\\C[14]%1\\C[0] emerged!",
			"enemyDamage": "\\C[14]%1\\C[0] took \\C[14]%2\\C[0] damage!",
			"enemyDrain": "\\C[14]%1\\C[0] was drained of \\C[14]%2 %3\\C[0]!",
			"enemyGain": "\\C[14]%1\\C[0] gained \\C[14]%2 %3\\C[0]!",
			"enemyLoss": "\\C[14]%1\\C[0] lost \\C[14]%2 %3\\C[0]!",
			"enemyNoDamage": "\\C[14]%1\\C[0] took no damage!",
			"enemyNoHit": "Miss! \\C[14]%1\\C[0] took no damage!",
			"enemyRecovery": "\\C[14]%1\\C[0] recovered \\C[14]%2 %3\\C[0]!",
			"escapeFailure": "However, the enemy caught up!",
			"escapeStart": "\\C[14]%1\\C[0] is trying to escape...",
			"evasion": "\\C[14]%1\\C[0] evaded the attack!",
			"expNext": "To Next %1",
			"expTotal": "Current %1",
			"file": "File",
			"levelUp": "\\C[14]%1\\C[0] is now \\C[14]%2 %3\\C[0]!",
			"loadMessage": "Load which file?",
			"magicEvasion": "\\C[14]%1\\C[0] nullified the spell!",
			"magicReflection": "\\C[14]%1\\C[0] reflected the spell!",
			"meVolume": "Fanfare music volume",
			"obtainExp": "\\C[14]%1 %2\\C[0] received!",
			"obtainGold": "\\C[17]%1\\G\\C[0] found!",
			"obtainItem": "\\$ITEM[%{id}] found!",
			"obtainSkill": "\\$SKILL[%{id}] learned!",
			"obtainWeapon": "\\$WEAPON[%{id}] found!",
			"obtainArmor": "\\$ARMOR[%{id}] found!",
			"obtainAccessory": "\\$ACCESSORY[%{id}] found!",
			"partyName": "\\C[14]%1\\C[0]'s party",
			"possession": "In possession",
			"preemptive": "\\C[14]%1\\C[0] has the upper hand!",
			"saveMessage": "Save to which file?",
			"seVolume": "SFX & Voice volume",
			"substitute": "\\C[14]%1\\C[0] protected \\C[14]%2\\C[0]!",
			"surprise": "\\C[14]%1\\C[0] was caught by surprise!",
			"useItem": "\\C[14]%1\\C[0] used \\$ITEM[%{id}].",
			"victory": "\\C[14]%1\\C[0] won the battle!",
			"actionMessage1": "\\C[14]%2\\C[0]%1",
			"actionMessage2": "%1",
			"currentStateMessage": "\\C[14]%2\\C[0]%1",
			"addedStateMessage": "\\C[14]%2\\C[0]%1"
		}
	}

	M.translation_E =
	{
		"actors":[],
		"classes":[],
		"items":[],
		"weapons":[],
		"armors":[],
		"enemies":[],
		"troops":[],
		"skills":[],
		"states":[],
		"t_weapons":
		[
			"",
			"Sword",
			"Evil Sword",
			"Divine Rapier",
			"Claymore",
			"Spellbook",
			"Evil Spellbook",
			"Holy Spellbook",
			"Magic Gun",
			"Kunai",
			"Staff",
			"Axe",
			"Fire Spellbook",
			"Thunder Spellbook",
			"Ice Spellbook"
		],
		"t_armors":
		[
			"",
			"Elise Exclusive",
			"Sakuya Exclusive",
			"Zekushi Exclusive",
			"Sonia Exclusive",
			"Chiot Exclusive",
			"Generic Armor"
		],
		"t_equips":
		[
			"",
			"Weapon",
			"Head",
			"Body",
			"Clothes",
			"Accessory"
		],
		"t_skills":
		[
			"",
			"\\I[79]Magic",
			"\\I[17]Deathblow",
			"\\I[97]Swordcraft",
			"\\I[97]Magic Sword",
			"\\I[97]Sacred Sword",
			"\\I[115]Gunslinger",
			"\\I[105]Ninjutsu"
		],
		"t_elements":
		[
			"",
			"Physical",
			"Fire",
			"Ice",
			"Thunder",
			"Water",
			"Ground",
			"Wind",
			"Light",
			"Dark",
			"Orc Killer",
			"Bandit Killer",
			"Marine Killer",
			"Musha Killer",
			"Asmodians Killer",
			"Knight Killer",
			"Angel Killer",
			"Hero Killer",
			"Spirit Beast Killer",
			"Deities Killer",
			"Fantasy Creature"
		]
	}
/*
	M._terms_J_messages_append =
	{
		//"messages":
		//{
			"actionMessage1": "%2%1",
			"actionMessage2": "%1",
			"currentStateMessage": "%2%1",
			"addedStateMessage": "%2%1"
		//}
	}

	M._terms_C_messages_append =
	{
		//"messages":
		//{
			"actionMessage1": "%2%1",
			"actionMessage2": "%1",
			"currentStateMessage": "%2%1",
			"addedStateMessage": "%2%1"
		//}
	}

	//M._terms_J = RTK.cloneObject(M._terms_J, M._terms_J_messages_append)
	//M._terms_C = RTK.cloneObject(M._terms_C, M._terms_C_messages_append)
	M._terms_J.messages = Object.assign(M._terms_J.messages, M._terms_J_messages_append)
	M._terms_C.messages = Object.assign(M._terms_C.messages, M._terms_C_messages_append)
	*/
	/*
	M._terms_J.commands[26] = "アイテム"
	M._terms_J.commands[27] = "アイテム"
	M._terms_J.messages.actionMessage1 = "%2%1"
	M._terms_J.messages.actionMessage2 = "%1"
	M._terms_J.messages.currentStateMessage = "%2%1"
	M._terms_J.messages.addedStateMessage = "%2%1"
	*/

	// FIXME: translation overrides are not applied for japanese.
	M._terms_J = {
		"basic":
		[
			"レベル","Lv","ＨＰ","HP","ＭＰ","MP","ＴＰ","TP","経験値","EXP"
		],
		"commands":
		[
			"戦う","逃げる","攻撃","防御","アイテム","スキル","装備","ステータス","並び替え","セーブ","ゲーム終了","オプション","武器","防具","大事なもの","装備","最強装備","全て外す","ニューゲーム","コンティニュー",null,"タイトルへ","やめる",null,"購入する","売却する"
			// TODO: check if translations are correct.
			, "アイテム", "アイテム", "アクセサリー", "アクセサリー",
		],
		"params":
		[
			"最大ＨＰ","最大ＭＰ","攻撃力","防御力","魔法力","魔法防御","敏捷性","運","命中率","回避率"
		],
		"messages":
		{
			"actionFailure":"%1には効かなかった！","actorDamage":"%1は %2 のダメージを受けた！","actorDrain":"%1は%2を %3 奪われた！","actorGain":"%1の%2が %3 増えた！","actorLoss":"%1の%2が %3 減った！","actorNoDamage":"%1はダメージを受けていない！","actorNoHit":"ミス！　%1はダメージを受けていない！","actorRecovery":"%1の%2が %3 回復した！","alwaysDash":"常時ダッシュ","bgmVolume":"BGM 音量","bgsVolume":"BGS 音量","buffAdd":"%1の%2が上がった！","buffRemove":"%1の%2が元に戻った！","commandRemember":"コマンド記憶","counterAttack":"%1の反撃！","criticalToActor":"痛恨の一撃！！","criticalToEnemy":"会心の一撃！！","debuffAdd":"%1の%2が下がった！","defeat":"%1は戦いに敗れた。","emerge":"%1が出現！","enemyDamage":"%1に %2 のダメージを与えた！","enemyDrain":"%1の%2を %3 奪った！","enemyGain":"%1の%2が %3 増えた！","enemyLoss":"%1の%2が %3 減った！","enemyNoDamage":"%1にダメージを与えられない！","enemyNoHit":"ミス！　%1にダメージを与えられない！","enemyRecovery":"%1の%2が %3 回復した！","escapeFailure":"しかし逃げることはできなかった！","escapeStart":"%1は逃げ出した！","evasion":"%1は攻撃をかわした！","expNext":"次の%1まで","expTotal":"現在の%1","file":"File","levelUp":"%1は%2 %3 に上がった！","loadMessage":"どのファイルをロードしますか？","magicEvasion":"%1は魔法を打ち消した！","magicReflection":"%1は魔法を跳ね返した！","meVolume":"ME 音量","obtainExp":"%1 の%2を獲得！","obtainGold":"お金を %1\\G 手に入れた！","obtainItem":"%1を手に入れた！","obtainSkill":"%1を覚えた！","partyName":"%1たち","possession":"持っている数","preemptive":"%1は先手を取った！","saveMessage":"どのファイルにセーブしますか？","seVolume":"SE 音量","substitute":"%1が%2をかばった！","surprise":"%1は不意をつかれた！","useItem":"%1は%2を使った！","victory":"%1の勝利！"
			// NEW
			, "obtainWeapon":"%1を手に入れた！"
			, "obtainArmor":"%1を手に入れた！"
			, "obtainAccessory":"%1を手に入れた！"
			, "actionMessage1":"%2%1"
			, "actionMessage2":"%1"
			, "currentStateMessage":"%2%1"
			, "addedStateMessage":"%2%1"
		}
	}

	M._terms_C = {
		"basic":
		[
			"等级","Lv","ＨＰ","HP","ＭＰ","MP","ＴＰ","TP","经验值","EXP"
		],
		"commands":
		[
			"战斗","逃跑","攻击","防御","道具","技能","装备","状态","排列","存档","游戏结束","设置","武器","防具","重要道具","装备","最强装备","全部解除","新游戏","读取",null,"回到标题","放弃",null,"购买","賣出"
			// TODO: check if translations are correct.
			, "道具", "道具", "配饰", "配件",
		],
		"params":
		[
			"最大ＨＰ","最大ＭＰ","攻撃力","防御力","魔法力","魔法防御","敏捷性","運","命中率","回避率"
		],
		"messages":
		{
			"actionFailure":"对%1没有效果！","actorDamage":"%1受到了%2的伤害！","actorDrain":"%1的%2 %3 被夺走了！","actorGain":"%1的%2 %3 增加了！","actorLoss":"%1的%2 %3 减少了！","actorNoDamage":"%1没有受到任何伤害！","actorNoHit":"MISS！ %1没有受到任何伤害！","actorRecovery":"%1的%2 %3 回复了！","alwaysDash":"常用設置","bgmVolume":"BGM音量","bgsVolume":"BGV（娇喘声）音量","buffAdd":"%1的%2上升了！","buffRemove":"%1的%2复原了！","commandRemember":"指令记忆","counterAttack":"%1的反击！","criticalToActor":"痛恨一击！！","criticalToEnemy":"会心一击！！","debuffAdd":"%1的%2下降了！","defeat":"%1战败了。","emerge":"%1出现了！","enemyDamage":"%1 受到 %2 的伤害！","enemyDrain":"%1的%2 %3 被夺走了！","enemyGain":"%1的%2 %3 增加了！","enemyLoss":"%1的%2 %3 减少了！","enemyNoDamage":"%1没有给予任何伤害！","enemyNoHit":"MISS！ %1没有给予任何伤害！","enemyRecovery":"%1的%2 %3 回复了！","escapeFailure":"但是没能逃得掉！","escapeStart":"%1逃跑了","evasion":"%1躲开了攻击！","expNext":"下一个%1 需要","expTotal":"现在的%1","file":"File","levelUp":"%1的%2 %3到达了","loadMessage":"儲存到哪個存檔呢？","magicEvasion":"%1击散了魔法！","magicReflection":"%1反弹了魔法！","meVolume":"ME音量","obtainExp":"%1的%2获得！","obtainGold":"金钱 %1 \\G获得了！","obtainItem":"得到了 %1 ！","obtainSkill":"学会了%1！","partyName":"%1们","possession":"持有数量","preemptive":"%1占据了先机！","saveMessage":"储存到哪个存档呢？","seVolume":"SE・Voice音量","substitute":"%1守护了%2！","surprise":"%1被偷袭了！","useItem":"%1使用了%2！","victory":"%1胜利！"
			// NEW
			, "obtainWeapon":"得到了 %1 ！"
			, "obtainArmor":"得到了 %1 ！"
			, "obtainAccessory":"得到了 %1 ！"
			, "actionMessage1":"%2%1"
			, "actionMessage2":"%1"
			, "currentStateMessage":"%2%1"
			, "addedStateMessage":"%2%1"
		}
	}
	/*
	M._terms_C.commands[26] = "道具"
	M._terms_C.commands[27] = "道具"
	M._terms_C.messages.actionMessage1 = "%2%1"
	M._terms_C.messages.actionMessage2 = "%1"
	M._terms_C.messages.currentStateMessage = "%2%1"
	M._terms_C.messages.addedStateMessage = "%2%1"
	*/

	/*
	const RTK_terms_change = RTK.terms_change

	RTK.terms_change = function(_lang)
	{
		RTK_terms_change.apply(this, arguments)

		if (RTK._ready)
		{
			switch(_lang)
			{
				case 0:
					if ($dataSystem.terms != terms_J)
					{
						$dataSystem.terms = terms_J
					}

					break
					
				case 1:
					if ($dataSystem.terms != terms_E)
					{
						$dataSystem.terms = terms_E
					}

					break

				case 2:
					if ($dataSystem.terms != terms_C)
					{
						$dataSystem.terms = terms_C
					}

					break
			}
		}
	}
	*/

	/*
	RTK.onReady(function()
	{
		switch(RTK._lang)
		{
			case 0:
				terms_J = M._terms_J
				terms_E = $dataSystem.terms
				terms_C = M._terms_C
				break

			case 1:
				terms_J = $dataSystem.terms
				terms_E = M._terms_E
				terms_C = M._terms_C
				break
			
			case 2:
				terms_J = M._terms_J
				terms_E = M._terms_E
				terms_C = $dataSystem.terms
				break
		}
	})
	*/

	//=============================================================================
	// TextManager
	//=============================================================================

	Object.defineProperties(TextManager,
	{
		inventory           : TextManager.getter('command', 26),
		items               : TextManager.getter('command', 27),
		accessory           : TextManager.getter('command', 28),
		accessories         : TextManager.getter('command', 29)
	})

	Object.defineProperties(TextManager,
	{
		actionMessage1		: TextManager.getter("message", "actionMessage1"),
		actionMessage2		: TextManager.getter("message", "actionMessage2"),
		currentStateMessage	: TextManager.getter("message", "currentStateMessage"),
		addedStateMessage	: TextManager.getter("message", "addedStateMessage"),
		obtainWeapon		: TextManager.getter("message", "obtainWeapon"),
		obtainArmor			: TextManager.getter("message", "obtainArmor"),
		obtainAccessory		: TextManager.getter("message", "obtainAccessory")
	})

	//=============================================================================
	// Window_MenuCommand
	//=============================================================================

	Window_MenuCommand.prototype.addMainCommands = function()
	{
	    const enabled = this.areMainCommandsEnabled()

	    if (this.needsCommand('item'))
	    {
	        this.addCommand(TextManager.inventory || TextManager.item, 'item', enabled)
	    }

	    if (this.needsCommand('skill'))
	    {
	        this.addCommand(TextManager.skill, 'skill', enabled)
	    }

	    if (this.needsCommand('equip'))
	    {
	        this.addCommand(TextManager.equip, 'equip', enabled)
	    }

	    if (this.needsCommand('status'))
	    {
	        this.addCommand(TextManager.status, 'status', enabled)
	    }
	}

	//=============================================================================
	// Window_ItemCategory
	//=============================================================================

	Window_ItemCategory.prototype.makeCommandList = function()
	{
		// HACK: extended text commands don't work for JA (probably an issue with RTK1_Option_EnJa).

		this.addCommand(TextManager.items || "アイテム", "item")
		this.addCommand(TextManager.weapon,  "weapon")
		this.addCommand(TextManager.armor,   "armor")
		this.addCommand(TextManager.accessories || "アクセサリー", "accessory")
		this.addCommand(TextManager.keyItem, "keyItem")
	}

	//=============================================================================
	// Game_Actor
	//=============================================================================

	const Game_Actor_name = Game_Actor.prototype.name

	Game_Actor.prototype.name = function(ja)
	{
		Game_Actor_name.call(this)

		if (ja)
		{
			return this._name
		}

		const NK = "RTK_EJ"
		let text

		switch (ConfigManager.langSelect)
		{
			case 0:
				text = this._name
				break

			case 1:
				text = TextUtils.replace(this[NK + "n_en"], ConfigManager.customWords)
				break

			case 2:
				text = this[NK + "n_ch"]
				break

			default:
				text = ""
		}

		return text
	}

	const Game_Actor_nickname = Game_Actor.prototype.nickname

	Game_Actor.prototype.nickname = function(ja)
	{
		Game_Actor_nickname.call(this)

		if (ja)
		{
			return this._nickname
		}

		const NK = "RTK_EJ"
		let text

		switch (ConfigManager.langSelect)
		{
			case 0:
				text = this._nickname
				break

			case 1:
				text = TextUtils.replace(this[NK + "nn_en"], ConfigManager.customWords)
				break

			case 2:
				text = this[NK + "nn_ch"]
				break

			default:
				text = ""
		}

		return text
	}

	const Game_Actor_profile = Game_Actor.prototype.profile

	Game_Actor.prototype.profile = function(ja)
	{
		Game_Actor_profile.call(this)

		if (ja)
		{
			return this._profile
		}

		const NK = "RTK_EJ"
		let text

		switch (ConfigManager.langSelect)
		{
			case 0:
				text = this._profile
				break

			case 1:
				text = TextUtils.replace(this[NK + "p_en"], ConfigManager.customWords)
				break

			case 2:
				text = this[NK + "p_ch"]
				break

			default:
				text = ""
		}

		return text
	}

	//=============================================================================
	// ConfigManager
	//=============================================================================

	// override to include japanese (i.e., value 0). (readVolume2 is used to change language values...)
	ConfigManager.readVolume2 = function(config, name)
	{
		const value = config[name]

		if (value !== undefined)
		{
			return Number(value).clamp(0, 2)
		}
		else
		{
			return 1
		}
	}
}

})()
