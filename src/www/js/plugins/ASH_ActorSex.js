/*:
 * @plugindesc	add new sex properties to the Actor class.
 *
 * @author		ash
 *
 * @require		
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

		this.initSexAttributes()
	}

	Game_Actor.prototype.initSexAttributes = function()
	{
		this.defineSexAttributesTier2()
		this.defineSexAttributesTier3()
		this.defineSexAttributesTier4()
		this.defineSexAttributesTier5()
		this.defineSexAttributesTier6()
		this.defineSexAttributesTier7()
		this.defineSexAttributesTier8()
	}

	Game_Actor.prototype.defineSexAttributesTier8 = function()
	{
		this._mHasSexAttributesTier8 = true

		this._mHandjobSexCount = 0

		this._mFaceEjaculationCount = 0
		this._mFaceSpermQuantity = 0
	}

	Game_Actor.prototype.defineSexAttributesTier7 = function()
	{
		this._mHasSexAttributesTier7 = true
	}

	Game_Actor.prototype.defineSexAttributesTier6 = function()
	{
		this._mHasSexAttributesTier6 = true

		this._mBodyEjaculationCount = 0
		this._mBodySpermQuantity = 0
	}

	Game_Actor.prototype.defineSexAttributesTier5 = function()
	{
		this._mHasSexAttributesTier5 = true

		this._mProstitutionEarning = 0
	}

	Game_Actor.prototype.defineSexAttributesTier4 = function()
	{
		this._mHasSexAttributesTier4 = true

		this._mHypnosisSexCount = 0
		this._mParalysisSexCount = 0

		this._mIncestSexCount = 0
	}

	Game_Actor.prototype.defineSexAttributesTier3 = function()
	{
		this._mHasSexAttributesTier3 = true

		this._mVaginalFirstUser = ""
		this._mAnalFirstUser = ""
		this._mOralFirstUser = ""
		this._mOppaiFirstUser = ""

		this._mVaginalLastUser = ""
		this._mAnalLastUser = ""
		this._mOralLastUser = ""
		this._mOppaiLastUser = ""
	}

	Game_Actor.prototype.defineSexAttributesTier2 = function()
	{
		this._mHasSexAttributesTier2 = true

		this._mLastPartner = ""

		this._mAnalDevelop = 0
		this._mOralDevelop = 0
		this._mOppaiDevelop = 0

		this._mExhibitionism = 0

		this._mVaginalSexCount = 0
		this._mAnalSexCount = 0
		this._mOralSexCount = 0
		this._mOppaiSexCount = 0
		this._mCunnilingusSexCount = 0
		this._mSumataSexCount = 0
		this._mFingeringSexCount = 0
		this._mToySexCount = 0

		this._mHumanSexCount = 0
		this._mOrcSexCount = 0
		this._mAnimalSexCount = 0
		this._mDemonSexCount = 0
		this._mAngelSexCount = 0
		this._mTentacleSexCount = 0

		this._mYoungerSexCount = 0
		this._mOlderSexCount = 0

		this._mDefeatedSexCount = 0
		this._mProstitutionSexCount = 0

		this._mSleepingSexCount = 0
		this._mUnconsciousSexCount = 0
		this._mDruggedSexCount = 0
		this._mRestrainedSexCount = 0
		this._mPregnantSexCount = 0

		this._mTotalPregnancyCount = 0
		this._mHumanPregnancyCount = 0
		this._mOrcPregnancyCount = 0
		this._mAnimalPregnancyCount = 0
		this._mDemonPregnancyCount = 0
		this._mAngelPregnancyCount = 0
		this._mTentaclePregnancyCount = 0

		this._mAnalEjaculationCount = 0
		this._mVaginalEjaculationCount = 0
		this._mOralEjaculationCount = 0
		this._mOppaiEjaculationCount = 0

		this._mAnalSpermQuantity = 0
		this._mVaginalSpermQuantity = 0
		this._mOralSpermQuantity = 0
		this._mOppaiSpermQuantity = 0

		this._mHumanSpermQuantity = 0
		this._mOrcSpermQuantity = 0
		this._mAnimalSpermQuantity = 0
		this._mDemonSpermQuantity = 0
		this._mAngelSpermQuantity = 0
		this._mTentacleSpermQuantity = 0
		/*
		this._mHumanInseminationCount = 0
		this._mOrcInseminationCount = 0
		this._mAnimalInseminationCount = 0
		this._mTentacleInseminationCount = 0
		*/
	}

	Game_Actor.prototype.ensureActorHasSexAttributes = function()
	{
		if (!this._mHasSexAttributesTier2)
		{
			this.defineSexAttributesTier2()
		}

		if (!this._mHasSexAttributesTier3)
		{
			this.defineSexAttributesTier3()
		}

		if (!this._mHasSexAttributesTier4)
		{
			this.defineSexAttributesTier4()
		}

		if (!this._mHasSexAttributesTier5)
		{
			this.defineSexAttributesTier5()
		}

		if (!this._mHasSexAttributesTier6)
		{
			this.defineSexAttributesTier6()
		}

		if (!this._mHasSexAttributesTier7)
		{
			this.defineSexAttributesTier7()
		}

		if (!this._mHasSexAttributesTier8)
		{
			this.defineSexAttributesTier8()
		}
	}

	const virginSwitchIds = { 1: 91, 3: 93, 4: 94, 5: 92 }
	const prostituteSwitchIds = { 1: 95 }

	// FOR DEBUGGING ONLY
	Game_Actor.prototype.unlockAllSexAttributes = function()
	{
		this._mFinish  = 999;		// 射精された回数
		this._mSperm   = 999999;		// 射精された精液量
		this._mFirst   = 'レッドオーク';	// 処女を奪った相手
		this._mDevelop = 100;		// 開発度
		this._mLewd    = 100;		// 淫乱度
		this._mVegina  = 3;		// 股間の状態 (UNUSED)

		//

		if (virginSwitchIds.hasOwnProperty(this.actorId()))
		{
			$gameSwitches.setValue(virginSwitchIds[this.actorId()], true)
		}

		if (prostituteSwitchIds.hasOwnProperty(this.actorId()))
		{
			$gameSwitches.setValue(prostituteSwitchIds[this.actorId()], true)
		}

		this.setMorale(0)

		//

		this._mHandjobSexCount = 999
		this._mFaceEjaculationCount = 999
		this._mFaceSpermQuantity = 999999

		//

		this._mBodyEjaculationCount = 999
		this._mBodySpermQuantity = 999999

		//

		this._mProstitutionEarning = 999999

		//

		this._mHypnosisSexCount = 999
		this._mParalysisSexCount = 999

		this._mIncestSexCount = 999

		//

		//this._mVaginalFirstUser = Sex.partnerNames()[Math.randomInt(Sex.partnerNames().length)]
		this._mVaginalFirstUser = "レッドオーク"
		this._mAnalFirstUser = "山賊"
		this._mOralFirstUser = "鬼"
		this._mOppaiFirstUser = "鬼滅将軍"

		this._mVaginalLastUser = "山賊の首領"
		this._mAnalLastUser = "山賊"
		this._mOralLastUser = "鬼"
		this._mOppaiLastUser = "鬼滅将軍"

		// 

		this._mLastPartner = "レッドオーク"

		this._mAnalDevelop = 100
		this._mOralDevelop = 100
		this._mOppaiDevelop = 100

		this._mExhibitionism = 100

		this._mVaginalSexCount = 999
		this._mAnalSexCount = 999
		this._mOralSexCount = 999
		this._mOppaiSexCount = 999
		this._mCunnilingusSexCount = 999
		this._mFingeringSexCount = 999
		this._mSumataSexCount = 999
		this._mToySexCount = 999

		this._mHumanSexCount = 999
		this._mOrcSexCount = 999
		this._mAnimalSexCount = 999
		this._mDemonSexCount = 999
		this._mAngelSexCount = 999
		this._mTentacleSexCount = 999

		this._mYoungerSexCount = 999
		this._mOlderSexCount = 999

		this._mDefeatedSexCount = 999
		this._mProstitutionSexCount = 999

		this._mSleepingSexCount = 999
		this._mUnconsciousSexCount = 999
		this._mDruggedSexCount = 999
		this._mRestrainedSexCount = 999
		this._mPregnantSexCount = 999

		this._mTotalPregnancyCount = 999
		this._mHumanPregnancyCount = 999
		this._mOrcPregnancyCount = 999
		this._mAnimalPregnancyCount = 999
		this._mDemonPregnancyCount = 999
		this._mAngelPregnancyCount = 999
		this._mTentaclePregnancyCount = 999

		this._mAnalEjaculationCount = 999
		this._mVaginalEjaculationCount = 999
		this._mOralEjaculationCount = 999
		this._mOppaiEjaculationCount = 999

		this._mAnalSpermQuantity = 999999
		this._mVaginalSpermQuantity = 999999
		this._mOralSpermQuantity = 999999
		this._mOppaiSpermQuantity = 999999

		this._mHumanSpermQuantity = 999999
		this._mOrcSpermQuantity = 999999
		this._mAnimalSpermQuantity = 999999
		this._mDemonSpermQuantity = 999999
		this._mAngelSpermQuantity = 999999
		this._mTentacleSpermQuantity = 999999
	}



	// FOR DEBUGGING ONLY
	Game_Actor.prototype.resetAllSexAttributes = function()
	{
		this._mFinish  = 0;		// 射精された回数
		this._mSperm   = 0;		// 射精された精液量
		this._mFirst   = "";	// 処女を奪った相手
		this._mDevelop = 0;		// 開発度
		this._mLewd    = 0;		// 淫乱度
		this._mVegina  = 0;		// 股間の状態 (UNUSED)

		//

		if (virginSwitchIds.hasOwnProperty(this.actorId()))
		{
			$gameSwitches.setValue(virginSwitchIds[this.actorId()], false)
		}

		if (prostituteSwitchIds.hasOwnProperty(this.actorId()))
		{
			$gameSwitches.setValue(prostituteSwitchIds[this.actorId()], false)
		}

		this.setMorale(100)

		//

		this._mHandjobSexCount = 0
		this._mFaceEjaculationCount = 0
		this._mFaceSpermQuantity = 0

		//

		this._mBodyEjaculationCount = 0
		this._mBodySpermQuantity = 0

		//

		this._mProstitutionEarning = 0

		//

		this._mHypnosisSexCount = 0
		this._mParalysisSexCount = 0

		this._mIncestSexCount = 0

		//

		this._mVaginalFirstUser = ""
		this._mAnalFirstUser = ""
		this._mOralFirstUser = ""
		this._mOppaiFirstUser = ""

		this._mVaginalLastUser = ""
		this._mAnalLastUser = ""
		this._mOralLastUser = ""
		this._mOppaiLastUser = ""

		// 

		this._mLastPartner = ""

		this._mAnalDevelop = 0
		this._mOralDevelop = 0
		this._mOppaiDevelop = 0

		this._mExhibitionism = 0

		this._mVaginalSexCount = 0
		this._mAnalSexCount = 0
		this._mOralSexCount = 0
		this._mOppaiSexCount = 0
		this._mCunnilingusSexCount = 0
		this._mFingeringSexCount = 0
		this._mSumataSexCount = 0
		this._mToySexCount = 0

		this._mHumanSexCount = 0
		this._mOrcSexCount = 0
		this._mAnimalSexCount = 0
		this._mDemonSexCount = 0
		this._mAngelSexCount = 0
		this._mTentacleSexCount = 0

		this._mYoungerSexCount = 0
		this._mOlderSexCount = 0

		this._mDefeatedSexCount = 0
		this._mProstitutionSexCount = 0

		this._mSleepingSexCount = 0
		this._mUnconsciousSexCount = 0
		this._mDruggedSexCount = 0
		this._mRestrainedSexCount = 0
		this._mPregnantSexCount = 0

		this._mTotalPregnancyCount = 0
		this._mHumanPregnancyCount = 0
		this._mOrcPregnancyCount = 0
		this._mAnimalPregnancyCount = 0
		this._mDemonPregnancyCount = 0
		this._mAngelPregnancyCount = 0
		this._mTentaclePregnancyCount = 0

		this._mAnalEjaculationCount = 0
		this._mVaginalEjaculationCount = 0
		this._mOralEjaculationCount = 0
		this._mOppaiEjaculationCount = 0

		this._mAnalSpermQuantity = 0
		this._mVaginalSpermQuantity = 0
		this._mOralSpermQuantity = 0
		this._mOppaiSpermQuantity = 0

		this._mHumanSpermQuantity = 0
		this._mOrcSpermQuantity = 0
		this._mAnimalSpermQuantity = 0
		this._mDemonSpermQuantity = 0
		this._mAngelSpermQuantity = 0
		this._mTentacleSpermQuantity = 0
	}
}

})()
