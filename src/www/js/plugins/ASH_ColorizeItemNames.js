/*:
 * @plugindesc	Add support for colorized item names.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// ConfigManager
	//=============================================================================

	ConfigManager.coloredItemNames = true

	const ConfigManager_applyData = ConfigManager.applyData

	ConfigManager.applyData = function(config)
	{
		ConfigManager_applyData.apply(this, arguments)

		if (config.hasOwnProperty("coloredItemNames"))
		{
			this.coloredItemNames = this.readFlag(config, "coloredItemNames")
		}
	}

	const ConfigManager_makeData = ConfigManager.makeData

	ConfigManager.makeData = function()
	{
		const config = ConfigManager_makeData.apply(this, arguments)

		config.coloredItemNames = this.coloredItemNames

		return config
	}

	//=============================================================================
	// Window_Options
	//=============================================================================

	const Window_Options_addGeneralOptions = Window_Options.prototype.addGeneralOptions

	Window_Options.prototype.addGeneralOptions = function()
	{
		Window_Options_addGeneralOptions.apply(this, arguments)

		this.addCommand(TS_Function.getLanguage("ColoredItemNames"), "coloredItemNames")
	}

	//=============================================================================
	// Window_ItemList
	//=============================================================================

	// override to recognize accessory items.
	Window_ItemList.prototype.includes = function(item)
	{
		switch (this._category)
		{
			case 'item':
				return DataManager.isItem(item) && item.itypeId === 1

			case 'weapon':
				return DataManager.isWeapon(item)

			case 'armor':
				return DataManager.isArmor(item) && item.etypeId === 4

			case 'accessory':
				return DataManager.isArmor(item) && item.etypeId === 5

			case 'keyItem':
				return DataManager.isItem(item) && item.itypeId === 2

			default:
				return false
		}
	}

	//=============================================================================
	// Window_Base
	//=============================================================================

	// override to optionally colorize based on the item's type.
	Window_Base.prototype.drawItemName = function(item, x, y, width)
	{
		width = width || 312

		if (item)
		{
			const iconBoxWidth = Window_Base._iconWidth + 4

			this.resetTextColor()
			//this.changePaintOpacity(true)

			this.drawIcon(item.iconIndex, x + 2, y + 2)

			// HACK-ish: keep in sync with colors used in ASH_TextUtils. (I could define globals or an interface but meh)

			if (ConfigManager.coloredItemNames)
			//if (!this.isEnabled(item))
			{
				if (DataManager.isWeapon(item))
				{
					this.changeTextColor(this.textColor(2))//21
				}
				else if (DataManager.isArmor(item))
				{
					// armor
					if (item.etypeId === 4)
					{
						this.changeTextColor(this.textColor(1))//23
					}
					// accessory
					else if (item.etypeId === 5)
					{
						this.changeTextColor(this.textColor(31))//27
					}
				}
				else if (DataManager.isItem(item))
				{
					if (item.itypeId === 1)
					{
						this.changeTextColor(this.textColor(3))
					}
					else if (item.itypeId === 2)
					{
						this.changeTextColor(this.textColor(27))
					}
				}
			}

			//this.changePaintOpacity(true)

			this.drawText(item.name, x + iconBoxWidth, y, width - iconBoxWidth)
			this.resetTextColor()
			//this.changePaintOpacity()
		}
	}

	//=============================================================================
	// Window_ShopBuy
	//=============================================================================

	Window_ShopBuy.prototype.priceWidth = function()
	{
		return 104	// 96
	}

	// override to change price width and color.
	Window_ShopBuy.prototype.drawItem = function(index)
	{
		const item = this._data[index]
		const rect = this.itemRect(index)

		rect.width -= this.textPadding()

		const priceOffset = rect.width - this.priceWidth()

		this.changePaintOpacity(this.isEnabled(item))
		this.drawItemName(item, rect.x, rect.y, priceOffset)
		//this.changeTextColor(this.systemColor())
		//this.drawText(this.price(item) + TextManager.currencyUnit
		//this.drawText("\\$CURRENCY[" + this.price(item)"]", rect.x + priceOffset, rect.y, priceWidth, "right")
		//this.resetTextColor()
		this.changeTextColor(this.textColor(14))
		this.drawCurrencyValue(this.price(item), TextManager.currencyUnit, rect.x + priceOffset, rect.y, this.priceWidth())
		this.resetTextColor()
		this.changePaintOpacity(true)
	}

	//=============================================================================
	// Window_Base
	//=============================================================================

	// override to colorize currency amount.
	Window_Base.prototype.drawCurrencyValue = function(value, unit, x, y, width)
	{
		const unitWidth = Math.min(80, this.textWidth(unit))

		this.changeTextColor(this.textColor(14))
		this.drawText(value, x, y, width - unitWidth - 6, "right")

		this.changeTextColor(this.systemColor())
		this.drawText(unit, x + width - unitWidth, y, unitWidth, "right")
	}

	//=============================================================================
	// Window_ShopNumber
	//=============================================================================

	const Window_ShopNumber_refresh = Window_ShopNumber.prototype.refresh

	// override to update buttons availability.
	Window_ShopNumber.prototype.refresh = function()
	{
		Window_ShopNumber_refresh.apply(this, arguments)

		this.updateButtonsAvailability()
	}

	Window_ShopNumber.prototype.updateButtonsAvailability = function()
	{
		this._buttons[0].opacity = this.canChangeNumber(-10) ? 255 : 127
		this._buttons[1].opacity = this.canChangeNumber(-1) ? 255 : 127
		this._buttons[2].opacity = this.canChangeNumber(+1) ? 255 : 127
		this._buttons[3].opacity = this.canChangeNumber(+10) ? 255 : 127
		//this._buttons[4].opacity = 255
	}

	Window_ShopNumber.prototype.canChangeNumber = function(amount)
	{
		return (this._number + amount).clamp(1, this._max) !== this._number
	}
}

})()
