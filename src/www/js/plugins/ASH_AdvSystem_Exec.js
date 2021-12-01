/*:
 * @plugindesc	
 *
 * @author		ash
 *
 * @require		ADVsystem
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Game_Interpreter
	//=============================================================================

	const Game_Interpreter_pluginCommand = Game_Interpreter.prototype.pluginCommand

	Game_Interpreter.prototype.pluginCommand = function(command, args)
	{
		if (command === "AdvExec")
		{
			$advSystem.macroStart(args)
		}

		Game_Interpreter_pluginCommand.call(this, command, args)
	}

	//=============================================================================
	// ADV_System
	//=============================================================================

	// unused...
	ADV_System.prototype.macroExpandAndRun = function(macro)
	{
		const c_macro = this.macroChange(macro)

		c_macro.forEach(function(element)
		{
			this.macroAdd(element)
			this.viewMacro()
		}, this)
	}

	ADV_System.prototype.macroStart = function(args, reset)
	{
		if (reset == undefined) reset = true
		if (reset) this.resetStack()
		
		const s_list = args
		const new_stack = this.parseMacroList(s_list)

		new_stack.forEach(function(element)
			{
				this.mStack.push(element)
			}, this)

		if (reset)
		{
			this.mRun = true

			$gameMap._interpreter.setAdvRun(true)
			
			this.stackRun()
		}
	}

	ADV_System.prototype.parseMacroList = function(s_list)
	{
		const new_stack = []

		for (let i = 0, len = s_list.length; i < len; ++i)
		{
			const text = this.chomp(s_list[i]).trim()

			if (!text)
			{
				continue
			}

			let add_stack

			if (text.charAt(0) === ';')
			{
				add_stack = this.parseComment(text)

				if (!add_stack || !add_stack.length)
				{
					continue
				}
			}
			else if (text.charAt(0) === '@')
			{
				add_stack = this.parseMacro(text)
			}
			else if (text.charAt(0) === '*')
			{
				add_stack = this.parseLabel(text)
			}
			else
			{
				add_stack = this.parseDialogueLineForMacro(text)
			}
			
			add_stack.forEach(function(element)
				{
					new_stack.push(element)
				}, this)
		}

		return new_stack
	}

	ADV_System.prototype.parseDialogueLineForMacro = function(text)
	{
		const add_stack = []

		let add_text = text
		
		if (add_text.indexOf('/') !== -1)
		{
			const voice = add_text.slice(add_text.indexOf('/') + 1, add_text.indexOf(']'))

			add_stack.push("@voice f=" + voice)
		}
		
		add_text = this.nameVoiceCut(add_text)
		add_text = this.viewMesAdjust(add_text)

		add_stack.push(add_text)

		return add_stack
	}
}

})()
