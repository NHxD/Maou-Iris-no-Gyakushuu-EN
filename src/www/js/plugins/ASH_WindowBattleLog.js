/*:
 * @plugindesc	Add formatting to battle log messages.
 *
 * @author		ash
 *
 * @require		ASH_TextUtils
 */

(function() {
	"use strict"

	//=============================================================================
	// Window_BattleLog
	//=============================================================================

	Window_BattleLog.prototype.backPaintOpacity = function()
	{
		return 160
	}

	const Window_BattleLog_addText = Window_BattleLog.prototype.addText

	Window_BattleLog.prototype.addText = function(text)
	{
		text = TextUtils.convertEscapeCharacters(text, false)

		Window_BattleLog_addText.call(this, text)
	}

	const Window_BattleLog_displayCurrentState = Window_BattleLog.prototype.displayCurrentState

	Window_BattleLog.prototype.displayCurrentState = function(subject)
	{
		if (ConfigManager.langSelect !== 1)
		{
			Window_BattleLog_displayCurrentState.call(this, subject)
			return
		}

		const stateText = subject.mostImportantStateText()

		if (stateText)
		{
			this.push("addText", TextManager.currentStateMessage.format(stateText, subject.name()))
			this.push("wait")
			this.push("clear")
		}
	}

	const Window_BattleLog_displayAction = Window_BattleLog.prototype.displayAction

	Window_BattleLog.prototype.displayAction = function(subject, item)
	{
		if (ConfigManager.langSelect !== 1)
		{
			Window_BattleLog_displayAction.call(this, subject, item)
			return
		}

		const numMethods = this._methods.length

		if (DataManager.isSkill(item))
		{
			if (item.message1)
			{
				const message = item.message1
					.formatEx({
						"name": item.name, "id": item.id,
						"subject.name": subject.name(), "subject.id": subject.id
					})
					.format(item.name, subject.name())

				this.push('addText', TextManager.actionMessage1.format(message, subject.name()))
			}

			if (item.message2)
			{
				const message = 
					item.message2
					.formatEx({
						"name": item.name, "id": item.id,
						"subject.name": subject.name(), "subject.id": subject.id
					})
					.format(item.name, subject.name())

				this.push('addText', TextManager.actionMessage2.format(message, subject.name()))
			}
		}
		else
		{
			this.push("addText", TextManager.useItem
				.formatEx({
					"name": item.name, "id": item.id,
					"subject.name": subject.name(), "subject.id": subject.id
				})
				.format(subject.name(), item.name))
		}

		if (this._methods.length === numMethods)
		{
			this.push("wait")
		}
	}

	const Window_BattleLog_displayCritical = Window_BattleLog.prototype.displayCritical

	Window_BattleLog.prototype.displayCritical = function(target)
	{
		if (ConfigManager.langSelect !== 1)
		{
			Window_BattleLog_displayCritical.call(this, target)
			return
		}

		if (target.result().critical)
		{
			if (target.isActor())
			{
				this.push("addText", TextManager.criticalToActor.format(target.name()))
			}
			else
			{
				this.push("addText", TextManager.criticalToEnemy.format(target.name()))
			}
		}
	}

	const Window_BattleLog_displayAddedStates = Window_BattleLog.prototype.displayAddedStates

	Window_BattleLog.prototype.displayAddedStates = function(target)
	{
		if (ConfigManager.langSelect !== 1)
		{
			Window_BattleLog_displayAddedStates.call(this, target)
			return
		}

		target.result().addedStateObjects().forEach(function(state)
		{
			const stateMsg = target.isActor() ? state.message1 : state.message2

			if (state.id === target.deathStateId())
			{
				this.push("performCollapse", target)
			}

			if (stateMsg)
			{
				this.push("popBaseLine")
				this.push("pushBaseLine")
				this.push("addText", TextManager.addedStateMessage.format(stateMsg, target.name()))
				this.push("waitForEffect")
			}
		}, this)
	}

	const Window_BattleLog_displayRemovedStates = Window_BattleLog.prototype.displayRemovedStates

	Window_BattleLog.prototype.displayRemovedStates = function(target)
	{
		if (ConfigManager.langSelect !== 1)
		{
			Window_BattleLog_displayRemovedStates.call(this, target)
			return
		}

		target.result().removedStateObjects().forEach(function(state)
		{
			if (state.message4)
			{
				this.push("popBaseLine")
				this.push("pushBaseLine")
				this.push("addText", TextManager.addedStateMessage.format(state.message4, target.name()))
			}
		}, this)
	}

	//=============================================================================
	// BattleManager
	//=============================================================================

	BattleManager.displayDropItems = function()
	{
		const items = this._rewards.items

		if (items.length > 0)
		{
			$gameMessage.newPage()

			items.forEach(function(item)
			{
	            const locString =
		            (item.hasOwnProperty("wtypeId")) ? TextManager.obtainWeapon
		            : (item.hasOwnProperty("atypeId") && item.hasOwnProperty("etypeId") && item.etypeId === 5) ? TextManager.obtainAccessory
		            : (item.hasOwnProperty("atypeId")) ? TextManager.obtainArmor
		            : (item.hasOwnProperty("itypeId")) ? TextManager.obtainItem
		            // eh, let's hope for the best...
		            : TextManager.obtainItem

				$gameMessage.add(locString
					.formatEx({"name": item.name, "id": item.id})
					.format(item.name, item.id))
			})
		}
	}

	//=============================================================================
	// Game_Actor
	//=============================================================================

	Game_Actor.prototype.displayLevelUp = function(newSkills)
	{
		const text = TextManager.levelUp.format(this.name(), TextManager.level, this._level)

		$gameMessage.newPage()
		$gameMessage.add(text)

		newSkills.forEach(function(skill)
		{
			$gameMessage.add(TextManager.obtainSkill
				.formatEx({
					"name": skill.name, "id": skill.id,
					"owner.name": this.name(), "owner.id": this._actorId, "owner.level": this._level
				})
				.format(skill.name))
		}.bind(this))
	}

	Game_Actor.prototype.showAddedStates = function()
	{
		this.result().addedStateObjects().forEach(function(state)
		{
			if (state.message1)
			{
				$gameMessage.add(TextManager.addedStateMessage.format(state.message1, this.name()))
			}
		}, this)
	}

	Game_Actor.prototype.showRemovedStates = function()
	{
		this.result().removedStateObjects().forEach(function(state)
		{
			if (state.message4)
			{
				$gameMessage.add(TextManager.removedStateMessage.format(state.message4, this.name()))
			}
		}, this)
	}
})()
