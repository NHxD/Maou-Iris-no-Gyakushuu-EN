/*:
 * @plugindesc	apply discount based on current party member clothing.
 *
 * @author		ash
 *
 * @require		ASH_HasActorNote
 */

(function() {
	"use strict"

{
	const discounts =
	[
		{ check: function(actor) { return actor.hasNote(2, "BODY contains hadaka"); }, value: .333 },
		{ check: function(actor) { return actor.hasNote(2, "BODY contains mizugi"); }, value: .25 },
		{ check: function(actor) { return actor.hasNote(2, "BODY contains sitagi"); }, value: .15 },
		{ check: function(actor) { return actor.hasNote(2, "BODY contains kubiwa"); }, value: .1 },
	]

	//=============================================================================
	// Scene_Shop
	//=============================================================================

	Scene_Shop.prototype.sellingPrice = function()
	{
		return Math.floor(this._item.price * 0.25)
	}

	//=============================================================================
	// Window_ShopBuy
	//=============================================================================

	Window_ShopBuy.prototype.makeItemList = function()
	{
		this._data = []
		this._price = []
		this._shopGoods.forEach(function(goods)
		{
			let item = null

			switch (goods[0])
			{
				case 0:
					item = $dataItems[goods[1]]
					break

				case 1:
					item = $dataWeapons[goods[1]]
					break

				case 2:
					item = $dataArmors[goods[1]]
					break
			}

			if (item)
			{
				this._data.push(item)
				this._price.push(this.applyDiscount(goods[2] === 0 ? item.price : goods[3]))
			}
		}, this)
	}

	Window_ShopBuy.prototype.applyDiscount = function(basePrice)
	{
		return Math.ceil(basePrice * this.discount())
	}

	Window_ShopBuy.prototype.discount = function(basePrice)
	{
		let total = 1

		$gameParty.allMembers().forEach(function(actor)
		{
			discounts.forEach(function(evaluator)
			{
				if (evaluator.check(actor))
				{
					total -= evaluator.value
				}
			})
		})

		return Math.max(0, total)
	}
}

})()
