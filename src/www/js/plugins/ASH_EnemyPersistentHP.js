/*:
 * @plugindesc	Make HP of bosses persistent across battles.
 *				(Used by the new resist/endure battle system.)
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	// DO NOT CHANGE - those var id's are used in data map files (in events).
	const BossEncounterVariableId = 50
	//const BossHpVariableId = 51
	const DefeatSceneResetVariableId = 52
	const DefeatChoiceVariableId = 53
	//const SubBoss1HpVariableId = 54
	//const SubBoss2HpVariableId = 55

	//=============================================================================
	// DataManager
	//=============================================================================

	DataManager.bossIds = []

	// MOVED: to notetags in "enemies.json".
	/*
	// bosses with multiple defeat scenes
	Game_Enemy.prototype.bossIds =
	[
		5,			// red orc
		6,			// bandit leader
		10,			// giant squid (nest ver.)
		17,44,		// evil general
		18,			// assassin A
		25,			// high priest
		36,			// kylin
		40,41,42	// holy god
	]

	Game_Enemy.prototype.subBoss1Ids =
	[
		7,			// bandit A
		19,			// assassin B
	]

	Game_Enemy.prototype.subBoss2Ids =
	[
		8,			// bandit B
	]
	*/

	const DataManager_onLoad = DataManager.onLoad

	DataManager.onLoad = function(object)
	{
		DataManager_onLoad.apply(this, arguments)

		if (object !== $dataEnemies)
		{
			return
		}

		this.$dataBosses = []

		for (let i = 0; i < $dataEnemies.length; ++i)
		{
			const enemy = $dataEnemies[i]

			if (enemy == null
				|| !enemy.hasOwnProperty("note")
				|| !enemy.note)
			{
				continue
			}

			const isBoss = enemy.meta.hasOwnProperty("bossHp")
			const isSubBoss = enemy.meta.hasOwnProperty("subBossHp")

			if (isBoss || isSubBoss)
			{
				this.$dataBosses.push(
					{
						id: enemy.id,
						hpVariableId: isBoss ? Number(enemy.meta.bossHp) : Number(enemy.meta.subBossHp),
						hpRegenPercentage: enemy.meta.hasOwnProperty("bossHpRegenPercentage") ? Number(enemy.meta.bossHpRegenPercentage) : (isBoss ? 0.25 : 0),
						hpRegenFlat: enemy.meta.hasOwnProperty("hpRegenFlat") ? Number(enemy.meta.hpRegenFlat) : 0,
						btypeId: isBoss ? 1 : 2
					})
			}
		}
	}

	DataManager.bossHpVariableIds = function()
	{
		return this.$dataBosses
			.map(function(element) { return element.hpVariableId; })
			.filter(function(element, index, array) { return array.indexOf(element) === index; })
	}

	DataManager.findBoss = function(enemyId)
	{
		for (let i = 0; i < this.$dataBosses.length; ++i)
		{
			if (this.$dataBosses[i].id === enemyId)
			{
				return this.$dataBosses[i]
			}
		}

		return undefined
	}

	//=============================================================================
	// Game_Enemy
	//=============================================================================

	const Game_Enemy_onBattleStart = Game_Enemy.prototype.onBattleStart

	Game_Enemy.prototype.onBattleStart = function()
	{
		Game_Enemy_onBattleStart.apply(this, arguments)

		const boss = DataManager.findBoss(this.enemyId())

		if (boss == null)
		{
			return
		}

		const lastHp = this.hp

		// first encounter
		if ($gameVariables.value(boss.hpVariableId) == -1)
		{
			$gameVariables.setValue(boss.hpVariableId, this.hp)
		}
		// rematch
		else
		{
			// was previously dead, so should stay dead.
			if ($gameVariables.value(boss.hpVariableId) == 0)
			{
				this.setHp(1)
				//this.addNewState(this.deathStateId())
			}
			else
			{
				// restore last HP + regen % max HP + flat bonus.
				const bonus = Math.floor(this.mhp * boss.hpRegenPercentage) + boss.hpRegenFlat
				const newHp = $gameVariables.value(boss.hpVariableId) + bonus

				this.setHp(Math.min(newHp, this.mhp))
			}

			// HACK: assume this is a rematch and that there is only one boss per battle.
			// restore 25% max mana of each party member
			if (boss.btypeId === 1)
			{
				$gameParty.reviveBattleMembers()
				$gameParty.aliveMembers().forEach(function(member)
				{
					const bonus = Math.floor(member.mmp * 0.25)
					const newMp = member.mp + bonus

					member.setMp(Math.min(newMp, member.mmp))

					// to force a refresh of the image (i.e., damaged costume)
					member.gainHp(0)
					//SceneManager._scene._spriteset.standBreak(member.name(true))
				})
			}
		}
	}

	const Game_Enemy_onDamage = Game_Enemy.prototype.onDamage

	Game_Enemy.prototype.onDamage = function(value)
	{
		Game_Enemy_onDamage.apply(this, arguments)

		const boss = DataManager.findBoss(this.enemyId())

		if (boss == null)
		{
			return
		}

		$gameVariables.setValue(boss.hpVariableId, this.hp)
	}


	//=============================================================================
	// Game_Map
	//=============================================================================

	const Game_Map_setup = Game_Map.prototype.setup

	Game_Map.prototype.setup = function(mapId)
	{
		Game_Map_setup.apply(this, arguments)

		$gameVariables.setValue(BossEncounterVariableId, -1)
		$gameVariables.setValue(DefeatSceneResetVariableId, -1)
		$gameVariables.setValue(DefeatChoiceVariableId, -1)
		//$gameVariables.setValue(BossHpVariableId, 0)
		//$gameVariables.setValue(SubBoss1HpVariableId, 0)
		//$gameVariables.setValue(SubBoss2HpVariableId, 0)
		DataManager.bossHpVariableIds().forEach(function(variableId) {
				$gameVariables.setValue(variableId, -1)
			})
	}
}

})()
