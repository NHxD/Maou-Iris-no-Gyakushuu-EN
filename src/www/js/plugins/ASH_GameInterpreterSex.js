/*:
 * @plugindesc	Add interpreter for sex commands.
 *
 * @author		ash
 *
 * @require
 */

(function() {
	"use strict"

{
	const argActorName = ['イリス','サクヤ','ソニア','ゼクシィ']

	const argActorLewdVal =
	{
		'イリス'	: 81,
		'サクヤ'	: 82,
		'ソニア'	: 83,
		'ゼクシィ'	: 84,
	}
	
	const argActorFirstSwitch =
	{
		'イリス'	: 91,
		'サクヤ'	: 92,
		'ソニア'	: 93,
		'ゼクシィ'	: 94,
	}
	
	const argActorID =
	{
		'イリス'	: 1,
		'サクヤ'	: 5,
		'ソニア'	: 3,
		'ゼクシィ'	: 4,
	}

	// the max number of recorded sex acts.
	const argSexCountMax = 999
	const argFinishMax  = 999
	const argSpermMax   = 999999
	const argDevelopMax = 100
	const argLewdMax    = 100
	const argProstitutionEarningMax = 999999

	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

	Game_Interpreter.prototype.pluginCommand = function(command, args)
	{
		if (command === "ExpStatus")
		{
			this.commandExpStatus(command, args)
		}

		Game_Interpreter_pluginCommand.call(this, command, args)
	}

	Game_Interpreter.prototype.commandExpStatus = function(command, args)
	{
		//console.log(command, args)

		if (!args || args.length < 1)
		{
			console.log("Missing argument " + "<actor_id>")
			return
		}

		const actor = $gameActors.actor(argActorID[args[0]])

		if (!actor)
		{
			console.log("Can't find actor with ID: " + args[0])
			//console.dir($gameActors)
			return
		}
		else if (argActorName.indexOf(actor.name(true)) === -1)
		{
			console.log("Actor name not registered for sex: " + actor.name(true))
			//console.dir($gameActors)
			return
		}
		
		actor.ensureActorHasSexAttributes()

		switch (args[1])
		{
			case "finish":
				this.commandSexFinish(actor, command, args)
				break

			case "sperm":
				this.commandSexSperm(actor, command, args)
				break

			case "develop":
				this.commandSexDevelopment(actor, command, args)
				break

			case "lewd":
				this.commandSexLewd(actor, command, args)
				break

			case "first":
				this.commandSexFirst(actor, command, args)
				break

			case "last":
				this.commandSexLast(actor, command, args)
				break

			case "act":
				this.commandSexAct(actor, command, args)
				break

			case "race":
				this.commandSexRace(actor, command, args)
				break

			case "dilf":
				this.commandSexDilf(actor, command, args)
				break

			case "state":
				this.commandSexState(actor, command, args)
				break

			case "birth":
				this.commandSexBirth(actor, command, args)
				break

			case "context":
				this.commandSexContext(actor, command, args)
				break

			case "compensation":
				this.commandCompensation(actor, command, args)
				break

			case "morale":
				this.commandMorale(actor, command, args)
				break

			default:
				console.warn("unrecognized param " + args[1] + " in ", command, args)
		}
	}

	Game_Interpreter.prototype.commandSexFinish = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "stomach":
				case "hand":
				case "body":
				case "other":
					actor._mBodyEjaculationCount += count
					if (actor._mBodyEjaculationCount > argFinishMax) actor._mBodyEjaculationCount = argFinishMax
					actor._mFinish += count
					break

				case "face":
					actor._mFaceEjaculationCount += count
					if (actor._mFaceEjaculationCount > argFinishMax) actor._mFaceEjaculationCount = argFinishMax
					actor._mFinish += count
					break

				case "vaginal":
					actor._mVaginalEjaculationCount += count
					if (actor._mVaginalEjaculationCount > argFinishMax) actor._mVaginalEjaculationCount = argFinishMax
					actor._mFinish += count
					break

				case "anal":
					actor._mAnalEjaculationCount += count
					if (actor._mAnalEjaculationCount > argFinishMax) actor._mAnalEjaculationCount = argFinishMax
					actor._mFinish += count
					break

				case "oral":
					actor._mOralEjaculationCount += count
					if (actor._mOralEjaculationCount > argFinishMax) actor._mOralEjaculationCount = argFinishMax
					actor._mFinish += count
					break

				case "oppai":
					actor._mOppaiEjaculationCount += count
					if (actor._mOppaiEjaculationCount > argFinishMax) actor._mOppaiEjaculationCount = argFinishMax
					actor._mFinish += count
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}

		// shortcut for backward compatibility
		if (args.length === 3)
		{
			actor._mFinish += count
		}
		if(actor._mFinish > argFinishMax) actor._mFinish = argFinishMax
	}

	Game_Interpreter.prototype.commandSexSperm = function(actor, command, args)
	{
		const baseCount = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			const count = baseCount + Math.randomInt(baseCount * 0.2) - (baseCount * 0.1)

			switch (args[k])
			{
				// by body part

				case "hand":
				case "stomach":
				case "body":
				case "other":
					actor._mBodySpermQuantity += count
					if (actor._mBodySpermQuantity > argSpermMax) actor._mBodySpermQuantity = argSpermMax
					actor._mSperm += count
					break

				case "face":
					actor._mFaceSpermQuantity += count
					if (actor._mFaceSpermQuantity > argSpermMax) actor._mFaceSpermQuantity = argSpermMax
					actor._mSperm += count
					break

				case "vaginal":
					actor._mVaginalSpermQuantity += count
					if (actor._mVaginalSpermQuantity > argSpermMax) actor._mVaginalSpermQuantity = argSpermMax
					actor._mSperm += count
					break

				case "anal":
					actor._mAnalSpermQuantity += count
					if (actor._mAnalSpermQuantity > argSpermMax) actor._mAnalSpermQuantity = argSpermMax
					actor._mSperm += count
					break

				case "oral":
					actor._mOralSpermQuantity += count
					if (actor._mOralSpermQuantity > argSpermMax) actor._mOralSpermQuantity = argSpermMax
					actor._mSperm += count
					break

				case "oppai":
					actor._mOppaiSpermQuantity += count
					if (actor._mOppaiSpermQuantity > argSpermMax) actor._mOppaiSpermQuantity = argSpermMax
					actor._mSperm += count
					break


				// by partner race

				case "human":
					actor._mHumanSpermQuantity += count
					if (actor._mHumanSpermQuantity > argSexCountMax) actor._mHumanSpermQuantity = argSexCountMax
					break

				case "orc":
					actor._mOrcSpermQuantity += count
					if (actor._mOrcSpermQuantity > argSexCountMax) actor._mOrcSpermQuantity = argSexCountMax
					break

				case "animal":
					actor._mAnimalSpermQuantity += count
					if (actor._mAnimalSpermQuantity > argSexCountMax) actor._mAnimalSpermQuantity = argSexCountMax
					break

				case "demon":
					actor._mDemonSpermQuantity += count
					if (actor._mDemonSpermQuantity > argSexCountMax) actor._mDemonSpermQuantity = argSexCountMax
					break

				case "angel":
					actor._mAngelSpermQuantity += count
					if (actor._mAngelSpermQuantity > argSexCountMax) actor._mAngelSpermQuantity = argSexCountMax
					break

				case "tentacle":
					actor._mTentacleSpermQuantity += count
					if (actor._mTentacleSpermQuantity > argSexCountMax) actor._mTentacleSpermQuantity = argSexCountMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}

			// shortcut for backward compatibility
			if (args.length === 3)
			{
				actor._mSperm += count
			}
			if (actor._mSperm > argSpermMax) actor._mSperm = argSpermMax
		}
	}

	Game_Interpreter.prototype.commandSexDevelopment = function(actor, command, args)
	{
		const percentageValue = parseInt(args[2])

		// WORKAROUND: the game only checks for vagina development...
		if (args.length > 3)
		{
			if (args.indexOf("vaginal") === -1)
			{
				args.push("vaginal")
			}
		}

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "hand":
				case "other":
					break

				case "vaginal":
					actor._mDevelop += percentageValue
					if (actor._mDevelop > argDevelopMax) actor._mDevelop = argDevelopMax
					break

				case "anal":
					actor._mAnalDevelop += percentageValue
					if (actor._mAnalDevelop > argDevelopMax) actor._mAnalDevelop = argDevelopMax
					break

				case "oral":
					actor._mOralDevelop += percentageValue
					if (actor._mOralDevelop > argDevelopMax) actor._mOralDevelop = argDevelopMax
					break

				case "oppai":
					actor._mOppaiDevelop += percentageValue
					if (actor._mOppaiDevelop > argDevelopMax) actor._mOppaiDevelop = argDevelopMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}

		// shortcut for vagina/backward compatibility
		if (args.length === 3)
		{
			actor._mDevelop += percentageValue
			if (actor._mDevelop > argDevelopMax) actor._mDevelop = argDevelopMax
		}
	} 

	Game_Interpreter.prototype.commandSexLewd = function(actor, command, args)
	{
		const percentageValue = parseInt(args[2])

		actor._mLewd += percentageValue
		if (actor._mLewd > argLewdMax) actor._mLewd = argLewdMax
		$gameVariables.setValue(argActorLewdVal[actor.name(true)], actor._mLewd)
		//$gameVariables.setValue(actor.meta.lewdVariableId, actor._mLewd)
	}

	Game_Interpreter.prototype.commandSexFirst = function(actor, command, args)
	{
		const nameValue = args[2]

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "hand":
				case "other":
					break

				case "vaginal":
					actor._mVaginalLastUser = nameValue

					if (!actor._mVaginalFirstUser)
					{
						actor._mVaginalFirstUser = nameValue
					}

					if (!actor._mFirst)
					{
						actor._mFirst = nameValue
						//$gameSwitches.setValue(actor.meta.hadVaginalSexSwitchId, true)
						$gameSwitches.setValue(argActorFirstSwitch[actor.name(true)], true)
					}
					break

				case "anal":
					actor._mAnalLastUser = nameValue

					if (!actor._mAnalFirstUser)
					{
						actor._mAnalFirstUser = nameValue
					}
					break

				case "oral":
					actor._mOralLastUser = nameValue

					if (!actor._mOralFirstUser)
					{
						actor._mOralFirstUser = nameValue
					}
					break

				case "oppai":
					actor._mOppaiLastUser = nameValue

					if (!actor._mOppaiFirstUser)
					{
						actor._mOppaiFirstUser = nameValue
					}
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}

		if (args.length === 3)
		{
			if (!actor._mFirst)
			{
				actor._mFirst = nameValue
				//$gameSwitches.setValue(actor.meta.hadVaginalSexSwitchId, true)
				$gameSwitches.setValue(argActorFirstSwitch[actor.name(true)], true)
			}
		}

		actor._mLastPartner = nameValue
	} 

	Game_Interpreter.prototype.commandSexLast = function(actor, command, args)
	{
		//const nameValue = args[2]

		//actor._mLastPartner = nameValue

		this.commandSexFirst(actor, command, args)
	}

	Game_Interpreter.prototype.commandSexAct = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "other":
					break

				case "vaginal":
					actor._mVaginalSexCount += count
					if (actor._mVaginalSexCount > argSexCountMax) actor._mVaginalSexCount = argSexCountMax
					break

				case "anal":
					actor._mAnalSexCount += count
					if (actor._mAnalSexCount > argSexCountMax) actor._mAnalSexCount = argSexCountMax
					break

				case "blowjob":
				case "oral":
					actor._mOralSexCount += count
					if (actor._mOralSexCount > argSexCountMax) actor._mOralSexCount = argSexCountMax
					break

				case "handjob":
					actor._mHandjobSexCount += count
					if (actor._mHandjobSexCount > argSexCountMax) actor._mHandjobSexCount = argSexCountMax
					break

				case "oppai":
					actor._mOppaiSexCount += count
					if (actor._mOppaiSexCount > argSexCountMax) actor._mOppaiSexCount = argSexCountMax
					break

				case "cunnilingus":
				// TODO: differentiate between anal and vaginal licking?
					actor._mCunnilingusSexCount += count
					if (actor._mCunnilingusSexCount > argSexCountMax) actor._mCunnilingusSexCount = argSexCountMax
					break

				case "fingering":
				// TODO: differentiate between anal and vaginal fingering?
					actor._mFingeringSexCount += count
					if (actor._mFingeringSexCount > argSexCountMax) actor._mFingeringSexCount = argSexCountMax
					break

				case "sumata":
					actor._mSumataSexCount += count
					if (actor._mSumataSexCount > argSexCountMax) actor._mSumataSexCount = argSexCountMax
					break

				case "toy":
					actor._mToySexCount += count
					if (actor._mToySexCount > argSexCountMax) actor._mToySexCount = argSexCountMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}
	}

	Game_Interpreter.prototype.commandSexRace = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "other":
					break

				case "human":
					actor._mHumanSexCount += count
					if (actor._mHumanSexCount > argSexCountMax) actor._mHumanSexCount = argSexCountMax
					break

				case "orc":
					actor._mOrcSexCount += count
					if (actor._mOrcSexCount > argSexCountMax) actor._mOrcSexCount = argSexCountMax
					break

				case "animal":
					actor._mAnimalSexCount += count
					if (actor._mAnimalSexCount > argSexCountMax) actor._mAnimalSexCount = argSexCountMax
					break

				case "demon":
					actor._mDemonSexCount += count
					if (actor._mDemonSexCount > argSexCountMax) actor._mDemonSexCount = argSexCountMax
					break

				case "angel":
					actor._mAngelSexCount += count
					if (actor._mAngelSexCount > argSexCountMax) actor._mAngelSexCount = argSexCountMax
					break

				case "tentacle":
					actor._mTentacleSexCount += count
					if (actor._mTentacleSexCount > argSexCountMax) actor._mTentacleSexCount = argSexCountMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}
	}

	Game_Interpreter.prototype.commandSexDilf = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "other":
					break

				case "incest":
					actor._mIncestSexCount += count
					if (actor._mIncestSexCount > argSexCountMax) actor._mIncestSexCount = argSexCountMax
					break

				case "younger":
					actor._mYoungerSexCount += count
					if (actor._mYoungerSexCount > argSexCountMax) actor._mYoungerSexCount = argSexCountMax
					break

				case "older":
					actor._mOlderSexCount += count
					if (actor._mOlderSexCount > argSexCountMax) actor._mOlderSexCount = argSexCountMax
					break
				
				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}
	}

	Game_Interpreter.prototype.commandSexState = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "other":
					break

				case "paralysis":
					actor._mParalysisSexCount += count
					if (actor._mParalysisSexCount > argSexCountMax) actor._mParalysisSexCount = argSexCountMax
					break

				case "hypnosis":
					actor._mHypnosisSexCount += count
					if (actor._mHypnosisSexCount > argSexCountMax) actor._mHypnosisSexCount = argSexCountMax
					break

				case "sleeping":
					actor._mSleepingSexCount += count
					if (actor._mSleepingSexCount > argSexCountMax) actor._mSleepingSexCount = argSexCountMax
					break

				case "unconscious":
					actor._mUnconsciousSexCount += count
					if (actor._mUnconsciousSexCount > argSexCountMax) actor._mUnconsciousSexCount = argSexCountMax
					break

				case "drugged":
					actor._mDruggedSexCount += count
					if (actor._mDruggedSexCount > argSexCountMax) actor._mDruggedSexCount = argSexCountMax
					break

				case "restrained":
					actor._mRestrainedSexCount += count
					if (actor._mRestrainedSexCount > argSexCountMax) actor._mRestrainedSexCount = argSexCountMax
					break

				case "pregnant":
					actor._mPregnantSexCount += count
					if (actor._mPregnantSexCount > argSexCountMax) actor._mPregnantSexCount = argSexCountMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}
	}

	Game_Interpreter.prototype.commandSexBirth = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "other":
					break

				case "human":
					actor._mHumanPregnancyCount += count
					if (actor._mHumanPregnancyCount > argSexCountMax) actor._mHumanPregnancyCount = argSexCountMax
					break

				case "orc":
					actor._mOrcPregnancyCount += count
					if (actor._mOrcPregnancyCount > argSexCountMax) actor._mOrcPregnancyCount = argSexCountMax
					break

				case "animal":
					actor._mAnimalPregnancyCount += count
					if (actor._mAnimalPregnancyCount > argSexCountMax) actor._mAnimalPregnancyCount = argSexCountMax
					break

				case "demon":
					actor._mDemonPregnancyCount += count
					if (actor._mDemonPregnancyCount > argSexCountMax) actor._mDemonPregnancyCount = argSexCountMax
					break

				case "angel":
					actor._mAngelPregnancyCount += count
					if (actor._mAngelPregnancyCount > argSexCountMax) actor._mAngelPregnancyCount = argSexCountMax
					break

				case "tentacle":
					actor._mTentaclePregnancyCount += count
					if (actor._mTentaclePregnancyCount > argSexCountMax) actor._mTentaclePregnancyCount = argSexCountMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}

		actor._mTotalPregnancyCount += count
		if (actor._mTotalPregnancyCount > argSexCountMax) actor._mTotalPregnancyCount = argSexCountMax
	}

	Game_Interpreter.prototype.commandSexContext = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "other":
				case "special":
					break

				case "defeated":
					actor._mDefeatedSexCount += count
					if (actor._mDefeatedSexCount > argSexCountMax) actor._mDefeatedSexCount = argSexCountMax
					break

				case "prostitution":
					actor._mProstitutionSexCount += count
					if (actor._mProstitutionSexCount > argSexCountMax) actor._mProstitutionSexCount = argSexCountMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}
	}

	Game_Interpreter.prototype.commandCompensation = function(actor, command, args)
	{
		const count = parseInt(args[2])

		for (let k = 3; k < args.length; ++k)
		{
			switch (args[k])
			{
				case "other":
					break

				case "cash":
				case "money":
				case "gold":
					actor._mProstitutionEarning += count
					if (actor._mProstitutionEarning > argProstitutionEarningMax) actor._mProstitutionEarning = argProstitutionEarningMax
					break

				default:
					console.warn("unrecognized param " + args[k] + " in ", command, args)
			}
		}
	}

	Game_Interpreter.prototype.commandMorale = function(actor, command, args)
	{
		const baseCount = parseInt(args[2])
		const count = baseCount + Math.randomInt(baseCount * 0.2) - (baseCount * 0.1)

		actor.setMorale((actor.morale() + count).clamp(0, actor.maxMorale()))
	}
}

})()
