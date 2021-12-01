/*:
 * @plugindesc	add support to auto-advance and skip dialogues.
 *
 * @author		ash
 *
 * @require		ADVsystem
 * @require		ASH_AdvSystem_Clear
 * @require		ASH_AdvSystem_Exec
 */

(function() {
	"use strict"

// FIXME: auto mode doesn't work correctly.
{
	//=============================================================================
	// Input
	//=============================================================================

	// DISABLED: auto mode doesn't work correctly.
	// a
	//Input.keyMapper[65] = "auto"

	// s
	// d (68) for now because s (83) is already used to toggle high speed mode.
	Input.keyMapper[68] = "skip"

	//=============================================================================
	// Window_Message
	//=============================================================================

	const Window_Message_initMembers = Window_Message.prototype.initMembers

	Window_Message.prototype.initMembers = function()
	{
		Window_Message_initMembers.apply(this, arguments)

		this._autoAdvance = ConfigManager.autoAdvanceMessage
	}

	const Window_Message_clearFlags = Window_Message.prototype.clearFlags

	Window_Message.prototype.clearFlags = function()
	{
		Window_Message_clearFlags.apply(this, arguments)

		this._autoAdvancePending = false
	}

	Object.defineProperty(Window_Message.prototype, "autoAdvance",
	{
		get: function()
		{
			return this._autoAdvance
		},
		set: function(value)
		{
			if (this._autoAdvance !== value)
			{
				this._autoAdvance = value
				ConfigManager.autoAdvanceMessage = this._autoAdvance
				ConfigManager.save()
			}
		},
		configurable: true
	})

	const Window_Message_updateInput = Window_Message.prototype.updateInput

	Window_Message.prototype.updateInput = function()
	{
		if (this.isAnySubWindowActive())
		{
			return true
		}

		if (Input.isTriggered("skip"))
		{
			if ($advSystem)
			{
				$advSystem.resetStack()
			}

			this.pause = false
			this.terminateMessage()

			if ($advSystem)
			{
				//$advSystem.macroRun("@ev")
				$advSystem.macroStart(["@clear"])
			}

			return true
		}
		else if (Input.isTriggered("auto"))
		{
			this.autoAdvance = !this.autoAdvance
			this.pause = !this.autoAdvance

			return this.autoAdvance
		}

		return Window_Message_updateInput.call(this)
	}

	Window_Message.prototype.onEndOfText = function()
	{
		if (!this.startInput())
		{
			if (this.shouldPauseAtEnd())
			{
				this.startPause()
			}
			else
			{
				this.terminateMessage()
			}
		}

		this._textState = null
	}

	Window_Message.prototype.shouldPauseAtEnd = function()
	{
		return !this._pauseSkip && !this.autoAdvance
	}

	Window_Message.prototype.updateMessage = function()
	{
		if (this._textState)
		{
			while (true)
			{
				if (!this._autoAdvance)
				{
					if (this.isEndOfText(this._textState))
					{
						break
					}
				}

				if (this.needsNewPage(this._textState))
				{
					this.newPage(this._textState)
				}

				this.updateShowFast()
				this.processCharacter(this._textState)

				if (!this._showFast && !this._lineShowFast)
				{
					break;
				}

				if (this._autoAdvance)
				{
					if (this.isEndOfText(this._textState))
					{
						if (!this._autoAdvancePending && this._waitCount === 0)
						{
							//this.pause = false
							this._autoAdvancePending = true
							this.startWait(120)
						}
					}
				}
				/*
				if (this.isEndOfText(this._textState)
					&& this._autoAdvance && this.pause && this._waitCount === 0
					&& !this._autoAdvancePending)
				{
					//this.pause = false
					this._autoAdvancePending = true
					this.startWait(1200)
				}
				*/
				else
				if (this.pause || this._waitCount > 0)
				{
					break
				}
			}

			if (this.isEndOfText(this._textState))
			{
				 if (this._autoAdvance
					&& this._autoAdvancePending && this._waitCount > 0)
				 {
					return true
				 }

				this.onEndOfText()
			}

			return true
		}
		else
		{
			return false
		}
	}
}

})()
