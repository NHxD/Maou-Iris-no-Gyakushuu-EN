/*:
 * @plugindesc	Draw an HP gauge behind the enemy's name.
 *
 * @author		ash
 *
 * @require		
 */

(function() {
	"use strict"

{
	//=============================================================================
	// Window_BattleEnemy
	//=============================================================================

	Window_BattleEnemy.prototype.drawItem = function(index)
	{
		const enemy = this._enemies[index]
		const name = enemy.name()
		const rect = this.itemRectForText(index)
		const color1 = this.hpGaugeColor1()
		const color2 = this.hpGaugeColor2()

		//this.drawActorHp(enemy, rect.x, rect.y, rect.width)
		this.drawGauge(rect.x, rect.y, rect.width, enemy.hpRate(), color1, color2)
		//this.changeTextColor(this.systemColor());
		//this.drawText(TextManager.hpA, x, y, 44)
		//this.drawCurrentAndMax(enemy.hp, enemy.mhp, rect.x, rect.y, rect.width, this.hpColor(enemy), this.normalColor())

		this.resetTextColor()
		this.drawText(name, rect.x, rect.y, rect.width)
	}
}

})()
