/*:
 * @plugindesc	- Fix vagina image not displaying.
 * 				- Obscure fields when they are unset. (i.e., keep them secret until discovered)
 * 				- Add page header.
 *
 * @author		ash
 *
 * @require
 */

(function() {
	"use strict"

	const argActorName = ['イリス','サクヤ','ソニア','ゼクシィ']

	const argActorSpellName =
	{
		"イリス"	: "iris",
		"サクヤ"	: "sakuya",
		"ソニア"	: "sonia",
		"ゼクシィ"	: "zexy",
	}
	
	const argSexPartnerNames =
	{
		"天使"			: "Angel",
		"レッドオーク"		: "RedOrc",
		"山賊"			: "Bandit",
		"ダイオウイカ"		: "GiantSquid",
		"鬼滅将軍"		: "DevilGeneral",
		"エスト王子"		: "Prince",
		"大神官"			: "GreatPriest",
		"シオン"			: "Zion",
		"麒麟"			: "Kirin",
		"聖滅神"			: "HolyGod",
		"少年"			: "Boy",
		"貴族"			: "Aristocrat",
		"王都の貴族"		: "RoyalNobleman",
		"道具屋に来た客"	: "ToolShopCustomer",
		"道具屋のオヤジ"	: "ToolShopOwner",
		"宿屋の受付"		: "InnReceptionist",
		"オーク"			: "Orc",
		"遊び人"			: "Playboy",
		"商人"			: "Merchant",
		"悪代官"			: "CorruptDeputyOfficial",
		"商人の息子"		: "MerchantSon",

		// NEW
		"青年"			: "YoungMan",
		"人殺し"			: "Assassins",
		"レナン"			: "Lannan",
		"看守"			: "Jailor",
		"鬼"				: "Demon",
		"魔物"			: "OrcMinion",
		"山賊の首領"		: "BanditLeader",
		"召喚儀式"		: "TentacleMonster",
	}

	Game_System.prototype.checkSexPartnerNames = function()
	{
		for (const name in argSexPartnerNames)
		{
			if (argSexPartnerNames.hasOwnProperty(name))
			{
				console.log(name, argSexPartnerNames[name], TS_Function.getLanguage(argSexPartnerNames[name] + "SexPartnerValue"))
			}
		}
	}

	// TODO: move this as notes in "Actors.json".
	const argActorRace =
	{
		"イリス": "Demon",
		"サクヤ": "Human",
		"ソニア": "Human",
		"ゼクシィ": "Elf",

		"シオン": "Human",
		"シーナ": "Human",
		"ミリナ": "Human",
		"グリス": "Human"
	}

	// TODO: move this as notes in "Actors.json".
	const argActorDisplayFilters =
	{
		VaginalSexActCount:		[ "iris", "sakuya", "sonia", "zexy" ],
		AnalSexActCount:		[ "iris", "sakuya", "sonia", "zexy" ],
		OralSexActCount:		[ "iris", "sonia", "zexy" ],
		OppaiSexActCount:		[ "sakuya" ],
		CunnilingusSexActCount:	[ "iris" ],
		FingeringSexActCount:	[ "iris" ],
		SumataSexActCount:		[ "iris", "sakuya" ],
		ToySexActCount:			[ /*"iris"*/ ],
		HandjobSexActCount:		[ "iris", "sakuya" ],

		SleepingSexCount:		[ "iris" ],
		DruggedSexCount:		[ "iris" ],
		RestrainedSexCount:		[ "iris", "sakuya", "zexy" ],
		ParalyzedSexCount:		[ "iris" ],
		HypnotizedSexCount:		[ "iris", "sonia" ],
		PregnantSexCount:		[ "iris", "sakuya", "sonia", "zexy" ],

		DefeatedSexCount:		[ "iris", "sakuya", "sonia", "zexy" ],
		ProstitutionSexCount:	[ "iris", "sakuya", "sonia", "zexy" ],
		ProstitutionEarning:	[ "iris", "sakuya", "sonia", "zexy" ],
		IncestSexCount:			[ "iris", "sakuya", "sonia" ],
		Births:					[ "iris", "sakuya", "sonia", "zexy" ],

		HumanSexActCount:		[ "iris", "sakuya", "sonia", "zexy" ],
		OrcSexActCount:			[ "iris", "sonia" ],
		AnimalSexActCount:		[ "iris", "sakuya" ],
		DemonSexActCount:		[ "iris", "sakuya" ],
		AngelSexActCount:		[ "iris", "sakuya", "sonia", "zexy" ],
		TentacleSexActCount:	[ "iris", "sakuya", "zexy" ],
		YoungerSexActCount:		[ "iris", "sakuya" ],
		OlderSexActCount:		[ "iris", "sakuya" ],

		HumanEjaculation:		[ "iris", "sakuya", "sonia", "zexy" ],
		OrcEjaculation:			[ "iris", "sonia" ],
		AnimalEjaculation:		[ "iris", "sakuya" ],
		DemonEjaculation:		[ "iris", "sakuya" ],
		AngelEjaculation:		[ "iris", "sakuya", "sonia", "zexy" ],
		TentacleEjaculation:	[ "iris", "sakuya", "zexy" ],
		YoungerEjaculation:		[ "iris", "sakuya" ],
		OlderEjaculation:		[ "iris", "sakuya" ],

		HumanSpermQuantity:		[ "iris", "sakuya", "sonia", "zexy" ],
		OrcSpermQuantity:		[ "iris", "sonia" ],
		AnimalSpermQuantity:	[ "iris", "sakuya" ],
		DemonSpermQuantity:		[ "iris", "sakuya" ],
		AngelSpermQuantity:		[ "iris", "sakuya", "sonia", "zexy" ],
		TentacleSpermQuantity:	[ "iris", "sakuya", "zexy" ],
		YoungerSpermQuantity:	[ "iris", "sakuya" ],
		OlderSpermQuantity:		[ "iris", "sakuya" ],

		HumanBirthCount:		[ "iris", "sakuya" ],
		OrcBirthCount:			[ "iris", "sonia" ],
		AnimalBirthCount:		[ "iris", "sakuya" ],
		DemonBirthCount:		[ "iris", "sakuya" ],
		AngelBirthCount:		[ "iris", "sakuya", "sonia", "zexy" ],
		TentacleBirthCount:		[ "iris", "sakuya" ],
		YoungerBirthCount:		[ "iris", "sakuya" ],
		OlderBirthCount:		[ "iris", "sakuya" ],

		VaginalEjaculationCount:[ "iris", "sakuya", "sonia", "zexy" ],
		AnalEjaculationCount:	[ "iris", "sakuya", "sonia", "zexy" ],
		OralEjaculationCount:	[ "iris", "sakuya", "sonia", "zexy" ],
		OppaiEjaculationCount:	[ "iris", "sakuya" ],
		FaceEjaculationCount:	[ "iris" ],
		BodyEjaculationCount:	[ "iris", "sakuya" ],

		VaginalSpermQuantity:	[ "iris", "sakuya", "sonia", "zexy" ],
		AnalSpermQuantity:		[ "iris", "sakuya", "sonia", "zexy" ],
		OralSpermQuantity:		[ "iris", "sakuya", "sonia", "zexy" ],
		OppaiSpermQuantity:		[ "iris", "sakuya" ],
		FaceSpermQuantity:		[ "iris" ],
		BodySpermQuantity:		[ "iris", "sakuya" ],

		VaginalFirstUser:		[ "iris", "sakuya", "sonia", "zexy" ],
		AnalFirstUser:			[ "iris", "sakuya", "sonia", "zexy" ],
		OralFirstUser:			[ "iris", "sakuya", "sonia", "zexy" ],
		OppaiFirstUser:			[ "iris", "sakuya" ],

		VaginalLastUser:		[ "iris", "sakuya", "sonia", "zexy" ],
		AnalLastUser:			[ "iris", "sakuya", "sonia", "zexy" ],
		OralLastUser:			[ "iris", "sakuya", "sonia", "zexy" ],
		OppaiLastUser:			[ "iris", "sakuya" ],
	}

	for (const prop in argActorDisplayFilters)
	{
		for (let i = 0; i < argActorDisplayFilters[prop].length; ++i)
		{
			switch (argActorDisplayFilters[prop][i])
			{
				case "iris":
					argActorDisplayFilters[prop][i] = "イリス"
					break
				case "sakuya":
					argActorDisplayFilters[prop][i] = "サクヤ"
					break
				case "sonia":
					argActorDisplayFilters[prop][i] = "ソニア"
					break
				case "zexy":
					argActorDisplayFilters[prop][i] = "ゼクシィ"
					break
			}
		}
	}

	const argImgSize = 300
	const argWidth   = 380

	// precached vagina bitmaps.
	//const argVaginaBitmaps = []

	// develop levels:
	// 0 = no display
	// 1 = tight
	// 2 = experienced
	// 3 = loose

	const argVaginaDevelopThresholds = [ 10, 40, 80 ]

	const argLewdThresholds = [ 50, 100 ]
	
	//=============================================================================
	// String
	//=============================================================================

	// source: mozilla
	if (!String.prototype.padStart) {
	  String.prototype.padStart = function padStart(targetLength, padString) {
	    targetLength = targetLength >> 0; //floor if number or convert non-number to 0;
	    padString = String(typeof padString !== 'undefined' ? padString : ' ');
	    if (this.length > targetLength) {
	      return String(this);
	    } else {
	      targetLength = targetLength - this.length;
	      if (targetLength > padString.length) {
	        padString += padString.repeat(targetLength / padString.length); //append to original to ensure we are longer than needed
	      }
	      return padString.slice(0, targetLength) + String(this);
	    }
	  };
	}

	//=============================================================================
	// Window_Status
	//=============================================================================

	Window_Status.prototype.drawBlock1 = function(y)
	{
		this.drawActorName(this._actor, 6, y)
		this.drawActorRace(this._actor, 192, y)
		this.drawActorNickname(this._actor, 432, y)
	}
	
	Window_Status.prototype.drawActorRace = function(actor, x, y, width)
	{
		const n = actor.name(true)

		if (!actor.raceName())
		//if (!argActorRace.hasOwnProperty(n))
		{
			return
		}

		width = width || 270

		this.resetTextColor()
		this.drawText(actor.raceName()/*TS_Function.getLanguage(argActorRace[n] + "Race")*/, x, y, width)
	}

	Window_Status.prototype.getPageCount = function()
	{
		return (this._actor && argActorName.indexOf(this._actor.name(true)) === -1)
			? 3 : 8	//10
	}
	
	Window_Status.prototype.drawPage = function(pageIndex)
	{
		if (pageIndex < 0 || pageIndex >= this.getPageCount())
		{
			return
		}

		const pageWidth = this.contentsWidth() / this.getPageCount()
		const dx = pageIndex * pageWidth
		const dy = this.lineHeight() * 7
		const dh = this.contentsHeight() - dy

		this.contents.clearRect(dx, 0, pageWidth, this.contentsHeight())

		switch (pageIndex)
		{
			case 1:
				this.drawElementResistance(dx + 8, dy, pageWidth - 16, dh)
				break

			case 2:
				this.drawStateResistance(dx + 8, dy, pageWidth - 16, dh)
				break

			case 3:
				this.drawExpstatus(dx + 8, dy, pageWidth - 16, dh)
				break

			case 4:
				this.drawSexActCounts(dx + 8, dy, pageWidth - 16, dh)
				break

			case 5:
				this.drawSexActCountsByRace(dx + 8, dy, pageWidth - 16, dh)
				break

			case 6:
				this.drawEjaculationCounts(dx + 8, dy, pageWidth - 16, dh)
				break

			case 7:
				this.drawUsers(dx + 8, dy, pageWidth - 16, dh)
				break

			case 8:
				// -----------------------------------------------------
				// FOR DEBUGGING ONLY
				// -----------------------------------------------------
				this.drawColors(3, dx + 8, dy, pageWidth - 16, dh)
				break

			case 9:
				// -----------------------------------------------------
				// FOR DEBUGGING ONLY
				// -----------------------------------------------------
				this.drawColors(4, dx + 8, dy, pageWidth - 16, dh)
				break
		}

		this.contents.blt(this.contents, 0, 0, pageWidth, dy - 1, dx, 0)
	}

	// -----------------------------------------------------
	// FOR DEBUGGING ONLY
	// -----------------------------------------------------

	Window_Status.prototype.drawColors = function(n, x, y, width, height)
	{
		const lineHeight = this.lineHeight()
		const itemPerPage = (10 * 9)
		let current = n * itemPerPage
		let lastItemIndex = current + itemPerPage
		let len =
			lastItemIndex >= 1000 ? 4 :
			lastItemIndex >= 100 ? 3 :
			lastItemIndex >= 10 ? 2 : 1

		for (let row = 0; row < 9; ++row)
		{
			let kk = ""
			for (let k = current; k < current + 10; ++k)
			{
				if (k % 10 === 0)
					kk += k.toString().padStart(len, ' ')

				kk += " \\C[" + k.toString() + "]"
				kk += k.toString().padStart(len, ' ')
				kk += "\\C[0]"
			}

			current += 10

			this.changeTextColor(this.systemColor())
			this.drawTextEx(kk, x, y + lineHeight * row, width)
			this.resetTextColor()
		}
	}

	Window_Status.prototype.drawIcons = function(n, x, y, width, height)
	{
		const lineHeight = this.lineHeight()
		const itemPerPage = (10 * 9)
		let current = n * itemPerPage
		let lastItemIndex = current + itemPerPage
		let len =	lastItemIndex >= 1000 ? 4 :
					lastItemIndex >= 100 ? 3 :
					lastItemIndex >= 10 ? 2 : 1

		for (let row = 0; row < 9; ++row)
		{
			let kk = ""
			for (let k = current; k < current + 10; ++k)
			{
				//kk += "\\I[" + k.toString() + "]:" + k.toString() + "  "
				if (k % 10 === 0)
					kk += k.toString().padStart(len, ' ')

				kk += " \\I[" + k.toString() + "]"
			}

			current += 10

			this.changeTextColor(this.systemColor())
			this.drawTextEx(kk, x, y + lineHeight * row, width)
			this.resetTextColor()
		}
	}

	// -----------------------------------------------------
	//
	// -----------------------------------------------------

	Window_Status.prototype.drawEjaculationCounts = function(x, y, width, height)
	{
		this.drawEjaculationCountsBlock1(x, y, width - Graphics.boxWidth / 2)
		this.drawEjaculationCountsBlock2(x + Graphics.boxWidth / 2, y, width - Graphics.boxWidth / 2)
	}

	Window_Status.prototype.drawEjaculationCountsBlock1 = function(x, y, width)
	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.VaginalEjaculationCount.contains(actorNameJA))
			drawCount += this.drawVaginalEjaculationCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.AnalEjaculationCount.contains(actorNameJA))
			drawCount += this.drawAnalEjaculationCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OralEjaculationCount.contains(actorNameJA))
			drawCount += this.drawOralEjaculationCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OppaiEjaculationCount.contains(actorNameJA))
			drawCount += this.drawOppaiEjaculationCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.FaceEjaculationCount.contains(actorNameJA))
			drawCount += this.drawFaceEjaculationCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.BodyEjaculationCount.contains(actorNameJA))
			drawCount += this.drawBodyEjaculationCount(x, y + lineHeight * ++row, width)

		this.drawEjaculationCountPageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}
	
	Window_Status.prototype.drawEjaculationCountsBlock2 = function(x, y, width)
 	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.VaginalSpermQuantity.contains(actorNameJA))
			drawCount += this.drawVaginalSpermQuantity(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.AnalSpermQuantity.contains(actorNameJA))
			drawCount += this.drawAnalSpermQuantity(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OralSpermQuantity.contains(actorNameJA))
			drawCount += this.drawOralSpermQuantity(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OppaiSpermQuantity.contains(actorNameJA))
			drawCount += this.drawOppaiSpermQuantity(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.FaceSpermQuantity.contains(actorNameJA))
			drawCount += this.drawFaceSpermQuantity(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.BodySpermQuantity.contains(actorNameJA))
			drawCount += this.drawBodySpermQuantity(x, y + lineHeight * ++row, width)

		this.drawSpermQuantityPageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}

	Window_Status.prototype.drawEjaculationCountPageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "EjaculationCountPageHeader", x, y, width)
	}

	Window_Status.prototype.drawVaginalEjaculationCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mVaginalEjaculationCount, !this._actor._mVaginalEjaculationCount, "VaginalEjaculationCount", x, y, width)
	}

	Window_Status.prototype.drawAnalEjaculationCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mAnalEjaculationCount, !this._actor._mAnalEjaculationCount, "AnalEjaculationCount", x, y, width)
	}

	Window_Status.prototype.drawOralEjaculationCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOralEjaculationCount, !this._actor._mOralEjaculationCount, "OralEjaculationCount", x, y, width)
	}

	Window_Status.prototype.drawOppaiEjaculationCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOppaiEjaculationCount, !this._actor._mOppaiEjaculationCount, "OppaiEjaculationCount", x, y, width)
	}

	Window_Status.prototype.drawFaceEjaculationCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mFaceEjaculationCount, !this._actor._mFaceEjaculationCount, "FaceEjaculationCount", x, y, width)
	}

	Window_Status.prototype.drawBodyEjaculationCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mBodyEjaculationCount, !this._actor._mBodyEjaculationCount, "BodyEjaculationCount", x, y, width)
	}


	Window_Status.prototype.drawSpermQuantityPageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "SpermQuantityPageHeader", x, y, width)
	}

	Window_Status.prototype.drawVaginalSpermQuantity = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mVaginalSpermQuantity, !this._actor._mVaginalSpermQuantity, "VaginalSpermQuantity", x, y, width, TS_Function.getLanguage("SpermQuantityValueFormat"))
	}

	Window_Status.prototype.drawAnalSpermQuantity = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mAnalSpermQuantity, !this._actor._mAnalSpermQuantity, "AnalSpermQuantity", x, y, width, TS_Function.getLanguage("SpermQuantityValueFormat"))
	}

	Window_Status.prototype.drawOralSpermQuantity = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOralSpermQuantity, !this._actor._mOralSpermQuantity, "OralSpermQuantity", x, y, width, TS_Function.getLanguage("SpermQuantityValueFormat"))
	}

	Window_Status.prototype.drawOppaiSpermQuantity = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOppaiSpermQuantity, !this._actor._mOppaiSpermQuantity, "OppaiSpermQuantity", x, y, width, TS_Function.getLanguage("SpermQuantityValueFormat"))
	}

	Window_Status.prototype.drawFaceSpermQuantity = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mFaceSpermQuantity, !this._actor._mFaceSpermQuantity, "FaceSpermQuantity", x, y, width, TS_Function.getLanguage("SpermQuantityValueFormat"))
	}

	Window_Status.prototype.drawBodySpermQuantity = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mBodySpermQuantity, !this._actor._mBodySpermQuantity, "BodySpermQuantity", x, y, width, TS_Function.getLanguage("SpermQuantityValueFormat"))
	}

	// -----------------------------------------------------
	//
	// -----------------------------------------------------

	Window_Status.prototype.drawSexActCounts = function(x, y, width, height)
	{
		this.drawSexActCountsBlock1(x, y, width - Graphics.boxWidth / 2)
		//this.drawSexActCountsBlock2(x + Graphics.boxWidth / 2, y, width - Graphics.boxWidth / 2)
		this.drawSexActCountsByRaceBlock1(x + Graphics.boxWidth / 2, y, width - Graphics.boxWidth / 2)
	}

	Window_Status.prototype.drawSexActCountsBlock1 = function(x, y, width)
	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.VaginalSexActCount.contains(actorNameJA))
			drawCount += this.drawVaginalSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.AnalSexActCount.contains(actorNameJA))
			drawCount += this.drawAnalSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OralSexActCount.contains(actorNameJA))
			drawCount += this.drawOralSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OppaiSexActCount.contains(actorNameJA))
			drawCount += this.drawOppaiSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.CunnilingusSexActCount.contains(actorNameJA))
			drawCount += this.drawCunnilingusSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.FingeringSexActCount.contains(actorNameJA))
			drawCount += this.drawFingeringSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.SumataSexActCount.contains(actorNameJA))
			drawCount += this.drawSumataSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.ToySexActCount.contains(actorNameJA))
			drawCount += this.drawToySexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.HandjobSexActCount.contains(actorNameJA))
			drawCount += this.drawHandjobSexActCount(x, y + lineHeight * ++row, width)

		this.drawSexActCountsPageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}
/*
	Window_Status.prototype.drawSexActCountsBlock2 = function(x, y, width)
 	{
		const lineHeight = this.lineHeight()
		let drawCount = 0

		drawCount += this.drawSleepingSexCount(x, y + lineHeight * 1, width)
		drawCount += this.drawDruggedSexCount(x, y + lineHeight * 2, width)
		drawCount += this.drawRestrainedSexCount(x, y + lineHeight * 3, width)
		drawCount += this.drawPregnantSexCount(x, y + lineHeight * 4, width)
		this.drawSexStateCountsPageHeader(drawCount === 0, x, y + lineHeight * 0, width)

		drawCount = 0
		drawCount += this.drawDefeatedSexCount(x, y + lineHeight * 6, width)
		drawCount += this.drawProstitutionSexCount(x, y + lineHeight * 7, width)
		drawCount += this.drawProstitutionEarning(x, y + lineHeight * 8, width)
		this.drawSexCircumstanceCountsPageHeader(drawCount === 0, x, y + lineHeight * 5, width)
	}
*/
	Window_Status.prototype.drawSexActCountsPageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "SexActCountsPageHeader", x, y, width)
	}

	Window_Status.prototype.drawVaginalSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mVaginalSexCount, !this._actor._mVaginalSexCount, "VaginalSexActCount", x, y, width)
	}

	Window_Status.prototype.drawAnalSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mAnalSexCount, !this._actor._mAnalSexCount, "AnalSexActCount", x, y, width)
	}

	Window_Status.prototype.drawOralSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOralSexCount, !this._actor._mOralSexCount, "OralSexActCount", x, y, width)
	}

	Window_Status.prototype.drawOppaiSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOppaiSexCount, !this._actor._mOppaiSexCount, "OppaiSexActCount", x, y, width)
	}

	Window_Status.prototype.drawHandjobSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mHandjobSexCount, !this._actor._mHandjobSexCount, "HandjobSexActCount", x, y, width)
	}

	Window_Status.prototype.drawCunnilingusSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mCunnilingusSexCount, !this._actor._mCunnilingusSexCount, "CunnilingusSexActCount", x, y, width)
	}

	Window_Status.prototype.drawSumataSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mSumataSexCount, !this._actor._mSumataSexCount, "SumataSexActCount", x, y, width)
	}

	Window_Status.prototype.drawFingeringSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mFingeringSexCount, !this._actor._mFingeringSexCount, "FingeringSexActCount", x, y, width)
	}

	Window_Status.prototype.drawToySexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mToySexCount, !this._actor._mToySexCount, "ToySexActCount", x, y, width)
	}


	Window_Status.prototype.drawSexStateCountsPageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "StateSexCountsPageHeader", x, y, width)
	}

	Window_Status.prototype.drawSleepingSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mSleepingSexCount, !this._actor._mSleepingSexCount, "SleepingSexActCount", x, y, width)
	}

	Window_Status.prototype.drawDruggedSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mDruggedSexCount, !this._actor._mDruggedSexCount, "DruggedSexActCount", x, y, width)
	}

	Window_Status.prototype.drawRestrainedSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mRestrainedSexCount, !this._actor._mRestrainedSexCount, "RestrainedSexActCount", x, y, width)
	}

	Window_Status.prototype.drawHypnotizedSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mHypnosisSexCount, !this._actor._mHypnosisSexCount, "HypnotizedSexActCount", x, y, width)
	}

	Window_Status.prototype.drawParalyzedSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mParalysisSexCount, !this._actor._mParalysisSexCount, "ParalyzedSexActCount", x, y, width)
	}

	Window_Status.prototype.drawUnconsciousSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mUnconsciousSexCount, !this._actor._mUnconsciousSexCount, "UnconsciousSexActCount", x, y, width)
	}

	Window_Status.prototype.drawPregnantSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mPregnantSexCount, !this._actor._mPregnantSexCount, "PregnantSexActCount", x, y, width)
	}


	Window_Status.prototype.drawSexCircumstanceCountsPageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "CircumstanceSexCountsPageHeader", x, y, width)
	}

	Window_Status.prototype.drawDefeatedSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mDefeatedSexCount, !this._actor._mDefeatedSexCount, "DefeatedSexActCount", x, y, width)
	}

	Window_Status.prototype.drawProstitutionSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mProstitutionSexCount, !this._actor._mProstitutionSexCount, "ProstitutionSexActCount", x, y, width)
	}

	Window_Status.prototype.drawIncestSexCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mIncestSexCount, !this._actor._mIncestSexCount, "IncestSexActCount", x, y, width)
	}

	Window_Status.prototype.drawProstitutionEarning = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mProstitutionEarning, !this._actor._mProstitutionEarning, "ProstitutionEarning", x, y, width, TS_Function.getLanguage("CurrencyValueFormat"))
	}

	Window_Status.prototype.drawBirths = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mTotalPregnancyCount, !this._actor._mTotalPregnancyCount, "TotalBirthCount", x, y, width)
	}


	// -----------------------------------------------------
	//
	// -----------------------------------------------------

	Window_Status.prototype.drawSexActCountsByRace = function(x, y, width, height)
	{
		//this.drawSexActCountsByRaceBlock1(x, y, width - Graphics.boxWidth / 2)
		//this.drawSexActCountsByRaceBlock2(x + Graphics.boxWidth / 2, y, width - Graphics.boxWidth / 2)
		this.drawStateSexActCountsBlock1(x, y, width - Graphics.boxWidth / 2)
		this.drawStateSexActCountsBlock2(x + Graphics.boxWidth / 2, y, width - Graphics.boxWidth / 2)
	}

	Window_Status.prototype.drawStateSexActCountsBlock1 = function(x, y, width)
 	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.SleepingSexCount.contains(actorNameJA))
			drawCount += this.drawSleepingSexCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.DruggedSexCount.contains(actorNameJA))
			drawCount += this.drawDruggedSexCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.ParalyzedSexCount.contains(actorNameJA))
			drawCount += this.drawParalyzedSexCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.HypnotizedSexCount.contains(actorNameJA))
			drawCount += this.drawHypnotizedSexCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.RestrainedSexCount.contains(actorNameJA))
			drawCount += this.drawRestrainedSexCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.PregnantSexCount.contains(actorNameJA))
			drawCount += this.drawPregnantSexCount(x, y + lineHeight * ++row, width)

		this.drawSexStateCountsPageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}

	Window_Status.prototype.drawStateSexActCountsBlock2 = function(x, y, width)
 	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.DefeatedSexCount.contains(actorNameJA))
			drawCount += this.drawDefeatedSexCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.ProstitutionSexCount.contains(actorNameJA))
			drawCount += this.drawProstitutionSexCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.IncestSexCount.contains(actorNameJA))
			drawCount += this.drawIncestSexCount(x, y + lineHeight * ++row, width)

		if (row > 0)
			++row

		if (argActorDisplayFilters.ProstitutionEarning.contains(actorNameJA))
			drawCount += this.drawProstitutionEarning(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.Births.contains(actorNameJA))
			drawCount += this.drawBirths(x, y + lineHeight * ++row, width)

		this.drawSexCircumstanceCountsPageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}

	Window_Status.prototype.drawSexActCountsByRaceBlock1 = function(x, y, width)
	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.HumanSexActCount.contains(actorNameJA))
			drawCount += this.drawHumanSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OrcSexActCount.contains(actorNameJA))
			drawCount += this.drawOrcSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.AnimalSexActCount.contains(actorNameJA))
			drawCount += this.drawAnimalSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.DemonSexActCount.contains(actorNameJA))
			drawCount += this.drawDemonSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.AngelSexActCount.contains(actorNameJA))
			drawCount += this.drawAngelSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.TentacleSexActCount.contains(actorNameJA))
			drawCount += this.drawTentacleSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.YoungerSexActCount.contains(actorNameJA))
			drawCount += this.drawYoungerSexActCount(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OlderSexActCount.contains(actorNameJA))
			drawCount += this.drawOlderSexActCount(x, y + lineHeight * ++row, width)

		this.drawSexActCountsByRacePageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}
	
	Window_Status.prototype.drawSexActCountsByRaceBlock2 = function(x, y, width)
 	{
 		// PLACEHOLDER
	}

	Window_Status.prototype.drawSexActCountsByRacePageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "RaceSexCountsPageHeader", x, y, width)
	}

	Window_Status.prototype.drawHumanSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mHumanSexCount, !this._actor._mHumanSexCount, "HumanSexActCount", x, y, width)
	}

	Window_Status.prototype.drawOrcSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOrcSexCount, !this._actor._mOrcSexCount, "OrcSexActCount", x, y, width)
	}

	Window_Status.prototype.drawAnimalSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mAnimalSexCount, !this._actor._mAnimalSexCount, "AnimalSexActCount", x, y, width)
	}

	Window_Status.prototype.drawDemonSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mDemonSexCount, !this._actor._mDemonSexCount, "DemonSexActCount", x, y, width)
	}

	Window_Status.prototype.drawAngelSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mAngelSexCount, !this._actor._mAngelSexCount, "AngelSexActCount", x, y, width)
	}

	Window_Status.prototype.drawTentacleSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mTentacleSexCount, !this._actor._mTentacleSexCount, "TentacleSexActCount", x, y, width)
	}

	Window_Status.prototype.drawYoungerSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mYoungerSexCount, !this._actor._mYoungerSexCount, "YoungerSexActCount", x, y, width)
	}

	Window_Status.prototype.drawOlderSexActCount = function(x, y, width)
	{
		return this.drawSexActCount(this._actor._mOlderSexCount, !this._actor._mOlderSexCount, "OlderSexActCount", x, y, width)
	}


	// -----------------------------------------------------
	//
	// -----------------------------------------------------

	Window_Status.prototype.drawUsers = function(x, y, width, height)
	{
		this.drawUserBlock1(x, y, width - Graphics.boxWidth / 2)
		this.drawUserBlock2(x + Graphics.boxWidth / 2, y, width - Graphics.boxWidth / 2)
	}

	Window_Status.prototype.drawUserBlock1 = function(x, y, width)
	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.VaginalFirstUser.contains(actorNameJA))
			drawCount += this.drawVaginalFirstUser(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.AnalFirstUser.contains(actorNameJA))
			drawCount += this.drawAnalFirstUser(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OralFirstUser.contains(actorNameJA))
			drawCount += this.drawOralFirstUser(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OppaiFirstUser.contains(actorNameJA))
			drawCount += this.drawOppaiFirstUser(x, y + lineHeight * ++row, width)

		this.drawFirstUserPageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}
	
	Window_Status.prototype.drawUserBlock2 = function(x, y, width)
 	{
		const lineHeight = this.lineHeight()
		const actorNameJA = this._actor.name(true)
		let drawCount = 0
		let row = 0

		if (argActorDisplayFilters.VaginalLastUser.contains(actorNameJA))
			drawCount += this.drawVaginalLastUser(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.AnalLastUser.contains(actorNameJA))
			drawCount += this.drawAnalLastUser(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OralLastUser.contains(actorNameJA))
			drawCount += this.drawOralLastUser(x, y + lineHeight * ++row, width)

		if (argActorDisplayFilters.OppaiLastUser.contains(actorNameJA))
			drawCount += this.drawOppaiLastUser(x, y + lineHeight * ++row, width)

		this.drawLastUserPageHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}

	Window_Status.prototype.drawFirstUserPageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "FirstUserPageHeader", x, y, width)
	}

	Window_Status.prototype.drawAnalFirstUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mAnalFirstUser, !this._actor._mAnalFirstUser, "AnalFirstUser", x, y, width)
	}

	Window_Status.prototype.drawVaginalFirstUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mVaginalFirstUser, !this._actor._mVaginalFirstUser, "VaginalFirstUser", x, y, width)
	}

	Window_Status.prototype.drawOralFirstUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mOralFirstUser, !this._actor._mOralFirstUser, "OralFirstUser", x, y, width)
	}

	Window_Status.prototype.drawOppaiFirstUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mOppaiFirstUser, !this._actor._mOppaiFirstUser, "OppaiFirstUser", x, y, width)
	}


	Window_Status.prototype.drawLastUserPageHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "LastUserPageHeader", x, y, width)
	}

	Window_Status.prototype.drawAnalLastUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mAnalLastUser, !this._actor._mAnalLastUser, "AnalLastUser", x, y, width)
	}

	Window_Status.prototype.drawVaginalLastUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mVaginalLastUser, !this._actor._mVaginalLastUser, "VaginalLastUser", x, y, width)
	}

	Window_Status.prototype.drawOralLastUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mOralLastUser, !this._actor._mOralLastUser, "OralLastUser", x, y, width)
	}

	Window_Status.prototype.drawOppaiLastUser = function(x, y, width)
	{
		return this.drawUser(this._actor._mOppaiLastUser, !this._actor._mOppaiLastUser, "OppaiLastUser", x, y, width)
	}

	// -----------------------------------------------------
	//
	// -----------------------------------------------------

	Window_Status.prototype.drawPageHeader = function(isHidden, headerStringName, x, y, width)
	{
		width = width || argWidth

		this.changeTextColor(this.systemColor())
		this.drawText(TS_Function.getLanguage(isHidden ? "SecretSexLabel" : headerStringName), x, y, width)
		this.resetTextColor()
	}

	//const valueFormatRegExp = new RegExp("%1")

	Window_Status.prototype.drawSexActCount = function(value, isHidden, labelStringName, x, y, width, format)
	{
		width = width || argWidth

		if (format)
		{
			//value = format.replace(valueFormatRegExp, value)
			value = format.format(value)
		}

		this.changeTextColor(this.systemColor())
		this.drawText(TS_Function.getLanguage(isHidden ? 'SecretSexLabel' : labelStringName), x, y, width)
		this.resetTextColor()
		this.drawText(isHidden ? TS_Function.getLanguage("SecretSexValue") : value, x, y, width, "right")

		return isHidden ? 0 : 1
	}

	Window_Status.prototype.drawUser = function(name, isHidden, labelStringKey, x, y, width)
	{
		width = width || argWidth

		if (name)
		{
			if (argSexPartnerNames.hasOwnProperty(name))
			{
				name = TS_Function.getLanguage(argSexPartnerNames[name] + "SexPartnerValue")
			}
		}

		this.changeTextColor(this.systemColor())
		this.drawText(TS_Function.getLanguage(isHidden ? "SecretSexLabel" : labelStringKey), x, y, width)
		this.resetTextColor()
		this.drawText(isHidden ? TS_Function.getLanguage("SecretSexValue") : name, x, y, width, "right")

		return isHidden ? 0 : 1
	}

	// -----------------------------------------------------
	//
	// -----------------------------------------------------

	Window_Status.prototype.drawExpstatus = function(x, y, width, height)
	{
		this.drawExpBlock1(x, y, width - Graphics.boxWidth / 2)
		this.drawExpBlock2(x + Graphics.boxWidth / 2, y, width - Graphics.boxWidth / 2)
	}
	
	Window_Status.prototype.drawExpBlock1 = function(x, y, width)
	{
		const lineHeight = this.lineHeight()
		let drawCount = 0

		drawCount += this.drawDevelop(x, y + lineHeight * 1, width)
		drawCount += this.drawLewd(x, y + lineHeight * 2, width)
		drawCount += this.drawFinish(x, y + lineHeight * 3, width)
		drawCount += this.drawSperm(x, y + lineHeight * 4, width)
		drawCount += this.drawFirst(x, y + lineHeight * 5, width)
		drawCount += this.drawFirstValue(x, y + lineHeight * 6, width)
		drawCount += this.drawLastPartner(x, y + lineHeight * 7, width)
		drawCount += this.drawLastPartnerValue(x, y + lineHeight * 8, width)

		this.drawSexHeader(drawCount === 0, x, y + lineHeight * 0, width)
	}
	
	Window_Status.prototype.drawExpBlock2 = function(x, y, width)
	{
		const lineHeight = this.lineHeight()

		this.drawVegina(x, y + lineHeight * 0, width)
	};
	
	Window_Status.prototype.drawSexHeader = function(isHidden, x, y, width)
	{
		this.drawPageHeader(isHidden, "SexHeader", x, y, width)
	}

	Window_Status.prototype.drawDevelop = function(x, y, width)
	{
		const val = this._actor._mDevelop
		const val_max = 100
		const color1 = this.developGaugeColor1()
		const color2 = this.developGaugeColor2()
		const levelWidth = this.textWidth(" ---")

		this.drawGauge(x + (width / 2), y, width / 2, val >= val_max ? 1 : val / val_max, color1, color2)

		this.changeTextColor(this.systemColor())
		this.drawText(TS_Function.getLanguage(!val ? "SecretSexLabel" : "SexLevel"), x, y, width)
		this.resetTextColor()

		this.drawText(this.vaginaDevelopLevelName(), x, y, width || argWidth, "right")

		return !val ? 0 : 1
	}
	
	Window_Status.prototype.drawLewd = function(x, y, width)
	{
		const val = this._actor._mLewd
		const val_max = 100
		const color1 = this.lewdGaugeColor1()
		const color2 = this.lewdGaugeColor2()
		const levelWidth = this.textWidth(" ---")
		const sexRange = this.sexRange(val, argLewdThresholds)

		this.drawGauge(x + (width / 2), y, width / 2, val >= val_max ? 1 : val / val_max, color1, color2)

		this.changeTextColor(this.systemColor())
		this.drawText(TS_Function.getLanguage(!val ? "SecretSexLabel" : "NaughtyLevel"), x, y, width)
		this.resetTextColor()

		this.drawText(this.lewdLevelName(), x, y, width || argWidth, "right")

		return !val ? 0 : 1
	}
	
	Window_Status.prototype.lewdIcon = function()
	{
		return this.thresholdIcon(this._actor._mLewd, argLewdThresholds)
	}

	Window_Status.prototype.vaginaDevelopmentIcon = function()
	{
		return this.thresholdIcon(this._actor._mDevelop, argVaginaDevelopThresholds)
	}

	Window_Status.prototype.thresholdIcon = function(value, thresholds)
	{
		let iconOffset = 0

		for (let i = thresholds.length; i > 0 && iconOffset < 3; --i)
		{
			if (value >= thresholds[i - 1])
			{
				break
			}

			++iconOffset
		}

		if (iconOffset < 3)
		{
			return "\\I[" + (87 + iconOffset).toString() + "]"
		}
		else
		{
			return ""
		}
	}

	Window_Status.prototype.vaginaDevelopLevelName = function()
	{
		return this.sexLevelName(this._actor._mDevelop, 100, argVaginaDevelopThresholds, "SexLevelValue")
	}

	Window_Status.prototype.lewdLevelName = function()
	{
		return this.sexLevelName(this._actor._mLewd, 100, argLewdThresholds, "NaughtyLevelValue")
	}

	Window_Status.prototype.sexLevelName = function(value, maxValue, thresholds, name)
	{
		const suffix =	value <= 0 ? "Min"
						: value >= maxValue ? "Max"
						: this.thresholdIndex(value, thresholds).toString()

		return TS_Function.getLanguage(name + suffix)
	}

	Window_Status.prototype.sexRange = function(value, thresholds)
	{
		const sliceIndex = Math.min(thresholds.length - 1, this.thresholdIndex(value, thresholds))
		const result = { min: 0, max: 100 }

		if (sliceIndex > 0)
		{
			result.min = thresholds[sliceIndex]
		}

		if (sliceIndex < thresholds.length - 1)
		{
			result.max = thresholds[sliceIndex + 1]
		}

		return result
	}

	Window_Status.prototype.thresholdIndex = function(value, thresholds)
	{
		let index = 0

		for (let i = thresholds.length; i > 0; --i)
		{
			if (value >= thresholds[i - 1])
			{
				break
			}

			++index
		}

		return thresholds.length - index
	}

	Window_Status.prototype.developGaugeColor1 = function()
	{
		return this.textColor(30)
	}

	Window_Status.prototype.developGaugeColor2 = function()
	{
		return this.textColor(16)
	}

	Window_Status.prototype.lewdGaugeColor1 = function()
	{
		return this.textColor(21)
	}

	Window_Status.prototype.lewdGaugeColor2 = function()
	{
		return this.textColor(10)
	}

	Window_Status.prototype.drawFirst = function(x, y, width)
	{
		const name = this._actor._mFirst

		this.changeTextColor(this.systemColor())
		this.drawText(TS_Function.getLanguage(!name ? "SecretSexLabel" : "FirstSexPartner"), x, y, width)
		this.resetTextColor()

		return !name ? 0 : 1
	}

	Window_Status.prototype.drawFirstValue = function(x, y, width)
	{
		width = width || argWidth

		let name = this._actor._mFirst

		if (!name)
		{
			name = TS_Function.getLanguage("NoSexExperience")
		}
		else
		{
			if (argSexPartnerNames.hasOwnProperty(name))
			{
				name = TS_Function.getLanguage(argSexPartnerNames[name] + "SexPartnerValue")
			}
		}

		this.drawText(name, x, y, width, "right")

		return !this._actor._mFirst ? 0 : 1
	}
	
	Window_Status.prototype.drawLastPartner = function(x, y, width)
	{
		width = width || argWidth

		const name = this._actor._mLastPartner

		this.changeTextColor(this.systemColor())
		//this.drawText(TS_Function.getLanguage((!name || this._actor._mFinish <= 1) ? "SecretSexLabel" : "LastSexPartner"), x, y, width)
		this.drawText(TS_Function.getLanguage(!name ? "SecretSexLabel" : "LastSexPartner"), x, y, width)
		this.resetTextColor()

		return !name ? 0 : 1
	}

	Window_Status.prototype.drawLastPartnerValue = function(x, y, width)
	{
		width = width || argWidth

		let name = this._actor._mLastPartner

		//if (!name || this._actor._mFinish <= 1)
		if (!name)
		{
			name = TS_Function.getLanguage("NoSexExperience")
		}
		else
		{
			if (argSexPartnerNames.hasOwnProperty(name))
			{
				name = TS_Function.getLanguage(argSexPartnerNames[name] + "SexPartnerValue")
			}
		}

		this.drawText(name, x, y, width, "right")

		//return !name || this._actor._mFinish <= 1 ? 0 : 1
		return !name ? 0 : 1
	}

	Window_Status.prototype.drawFinish = function(x, y, width)
	{
		const val = this._actor._mFinish

		return this.drawSexActCount(val, !val, "EjaculationCount", x, y, width, TS_Function.getLanguage("CountValueFormat"))
	}
	
	Window_Status.prototype.drawSperm = function(x, y, width)
	{
		width = width || argWidth

		const val = this._actor._mSperm

		return this.drawSexActCount(val, !val, "EjaculationSemen", x, y, width, TS_Function.getLanguage("SpermQuantityValueFormat"))
	}

	Window_Status.prototype.drawVegina = function(x, y, width)
	{
		width = /*width || */argWidth

		const val = this.veginaCheck()
		const view_text = !val ? TS_Function.getLanguage('SecretSexLabel') : TS_Function.getLanguage('VaginaStatus')
		const f_name = this.getDevelopFileName("vegina", val)
		const bitmap = ImageManager.loadPicture(f_name)
		//const bitmap = argVaginaBitmaps[f_name]
		const pw = argImgSize
		const ph = argImgSize
		const sx = 0
		const sy = 0

		this.changeTextColor(this.systemColor())
		this.drawText(view_text, x, y, width)
		this.resetTextColor()

		if (!bitmap.isReady())
		{
			bitmap.addLoadListener(
				function ()
				{
					this.contents.blt(bitmap, sx, sy, pw, ph, x, y + this.lineHeight() * 1)
				}.bind(this))
		}
		else
		{
			this.contents.blt(bitmap, sx, sy, pw, ph, x, y + this.lineHeight() * 1)
		}
	}

	Window_Status.prototype.getDevelopFileName = function(basename, developmentLevel)
	{
		if (developmentLevel > 0)
		{
			return basename + '_' + argActorSpellName[this._actor.name(true)] + '_' + developmentLevel
		}
		else
		{
			return basename + '_' + '0'
		}
	}

	Window_Status.prototype.veginaCheck = function()
	{
		return this.thresholdCheck(this._actor._mDevelop, argVaginaDevelopThresholds)
	}

	Window_Status.prototype.lewdCheck = function()
	{
		return this.thresholdCheck(this._actor._mLewd, argLewdThresholds)
	}

	Window_Status.prototype.thresholdCheck = function(val, thresholds)
	{
		let output = 0

		for (let i = thresholds.length; i > 0; --i)
		{
			if (val >= thresholds[i - 1])
			//if (val > thresholds[i - 1])
			{
				output = i
				break
			}
		}

		return output
	}

})()
