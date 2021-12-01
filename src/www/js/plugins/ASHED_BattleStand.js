//=========================================================
// BattleStand
//=========================================================

/*:
 * @param CharaList
 * @desc 立ち絵を表示するキャラ一覧
 * @default イリス+サクヤ+ソニア+ゼクシィ+シオン
*/

(function() {
	
	// 引数
	var parameters = PluginManager.parameters('BattleStand');
	var argCharaList = String(parameters['CharaList'] || 'イリス+サクヤ+ソニア+ゼクシィ+シオン').split('+');
	
	// 初期値
	var STAND_POS = {
		IN :1/6,
		OUT:1,
	};
	
	var STAND_ALPHA = 1.0;
	var MOVE_TIME = 15;
	
	// 服破れに切り替わるライン
	var BREAK_LINE = 0.50;
	var BREAK_NAME = 'yabure';
	//****************************************************************************
	// 戦闘中のスプライト拡張
	//****************************************************************************
	
	//---------------------------------
	// Spriteset_Battleの変更
	//---------------------------------
	
	// ○初期化部分拡張
	var _TS_BattleStand_Spriteset_Battle_createLowerLayer = Spriteset_Battle.prototype.createLowerLayer;
	Spriteset_Battle.prototype.createLowerLayer = function() {
		_TS_BattleStand_Spriteset_Battle_createLowerLayer.call(this);
		this.createStand();
	};

	Graphics._battlerOffsetX = 0
	Graphics._battlerOffsetY = 0
	const knownNudeBodyRegex = /(yabure|hadaka|mizugi)/i

	// △立ち絵用のスプライト追加
	Spriteset_Battle.prototype.createStand = function() {
		var members = $gameParty.battleMembers();
		this._mBattleStand = {};
		for (var i = 0; i < members.length; i++) {
			var chara_name = members[i]._name;
			if( argCharaList.indexOf(chara_name) == -1 ) continue;
			//var file_name = $advSystem.getBody(chara_name) + '_battle'+'.dm';
			var file_name = $advSystem.getBody(chara_name) + '_battle';
			var width = Graphics.boxWidth;
			var height = Graphics.boxHeight;
// [ASH] -{
			var x = (Graphics.width - width) / 2;
			var y = (Graphics.height - height) / 2;
// [ASH] -}
// [ASH] +{
// NOTE: no can do... the scene window clip area isn't aligned/match the box dimensions. and any overlapping graphics is clipped.
			//var x = Graphics._battlerOffsetX
			//var y = Graphics._battlerOffsetY
			//var x = Graphics.boxWidth / 2
			//var y = 624 - Graphics.boxHeight
// [ASH] +}

			var sprites = new Sprite_Stand();
			sprites.setFrame(x, y, width, height);
			sprites.x = Graphics.width*STAND_POS.OUT;
			sprites.y = y;
			sprites.alpha = STAND_ALPHA;
			sprites.bitmap = ImageManager.loadPicture(file_name);
			this._baseSprite.addChild(sprites);

// [ASH] -
			//this._mBattleStand[chara_name] = sprites;
// [ASH] +{
			this._mBattleStand[chara_name] = []
			this._mBattleStand[chara_name].push(sprites)
// [ASH] +}

// [ASH] +{
			if (!ConfigManager.showAdultContent)
			{
				file_name = $advSystem.STAND_NAME[chara_name] + '_ALLAGE';
				console.log("loading battle stand file_name", chara_name, $advSystem.STAND_NAME[chara_name])

				var body = $advSystem.getBodyCos(chara_name)
				var isNude = knownNudeBodyRegex.test(body)

				var sprites = new Sprite_Stand();
				sprites.setFrame(x, y, width, height);
				sprites.x = Graphics.width*STAND_POS.OUT;
				sprites.y = y;
				sprites.alpha = isNude ? 255 : 0;
				sprites.bitmap = ImageManager.loadPicture(file_name);
				this._baseSprite.addChild(sprites);

				this._mBattleStand[chara_name].push(sprites)
			}
// [ASH] +}
		}
		
		this._mViewStand = '';
	};
	
	Spriteset_Battle.prototype.changeStand = function(name) {
		
		if( this._mViewStand != '' ){
			//this._mBattleStand[this._mViewStand].x = Graphics.width*STAND_POS.OUT;
// [ASH] -
			//this._mBattleStand[this._mViewStand].startMove( Graphics.width*STAND_POS.OUT, 0, MOVE_TIME );
// [ASH] +
			this._mBattleStand[this._mViewStand].forEach(function(element) { element.startMove( Graphics.width*STAND_POS.OUT, 0, MOVE_TIME ); })
		}
		
		if( name != null && this._mBattleStand[name] != null ){
			//this._mBattleStand[name].x = Graphics.width*STAND_POS.IN;
// [ASH] -
			//this._mBattleStand[name].startMove( Graphics.width*STAND_POS.IN, 0, MOVE_TIME );
// [ASH] +
			this._mBattleStand[name].forEach(function(element) { element.startMove( Graphics.width*STAND_POS.IN, 0, MOVE_TIME ); })
			this._mViewStand = name;
		}else{
			this._mViewStand = '';
		}
	}
	
	// 破れ状態に変更
	Spriteset_Battle.prototype.standBreak = function(name) {
		//var sprite = this._mBattleStand[name];
		var battleStand = this._mBattleStand[name]
		//this._mBattleStand[name].forEach(function(element) {
			var sprite = battleStand[0]
			if( sprite != null ){
				var file_name = sprite.bitmap._url;
				// 既に破れ状態
				if( file_name.indexOf(BREAK_NAME) == -1 ){
					//var new_name = $advSystem.getBody(name) + '_yabure_battle'+'.dm';
					var new_name = $advSystem.getBody(name) + '_yabure_battle';
					sprite.bitmap = ImageManager.loadPicture(new_name);
				}
			}

			if (battleStand.length >= 2)
			{
				sprite = battleStand[1]
				sprite.alpha = 255
			}
		//})
	}
	
	
	//---------------------------------
	// 立ち絵表示用のスプライト作成
	//---------------------------------
	
	function Sprite_Stand() {
		this.initialize.apply(this, arguments);
	}

	Sprite_Stand.prototype = Object.create(Sprite.prototype);
	Sprite_Stand.prototype.constructor = Sprite_Stand;

	Sprite_Stand.prototype.initialize = function() {
		Sprite.prototype.initialize.call(this);
		this._addX = 0;
		this._addY = 0;
		this._targetOffsetX = NaN;
		this._targetOffsetY = NaN;
		this._movementDuration = 0;
	};

	Sprite_Stand.prototype.update = function() {
		Sprite.prototype.update.call(this);
		this.updateMove();
	};
	
	Sprite_Stand.prototype.updateMove = function() {
		if (this._movementDuration > 0) {
			this.x += this._addX;
			this.y += this._addY;
			this._movementDuration--;
			if (this._movementDuration === 0) {
				this.x = this._targetOffsetX;
				this.y = this._targetOffsetY;
			}
		}
	};
	
	Sprite_Stand.prototype.startMove = function(x, y, duration) {
		if (this._targetOffsetX !== x || this._targetOffsetY !== y) {
			this._targetOffsetX = x;
			this._targetOffsetY = y;
			this._movementDuration = duration;
			if (duration === 0) {
				this.x = x;
				this.y = y;
			}else{
				this._addX = (x - this.x) / duration;
				this._addY = (y - this.y) / duration;
			}
			
			
		}
	};
	
	//---------------------------------
	// Game_Actorの変更
	//---------------------------------
	// ○ダメージ後に服装変化
	var _TS_BattleStand_Game_Battler_gainHp = Game_Battler.prototype.gainHp;
	Game_Battler.prototype.gainHp = function(value) {
		_TS_BattleStand_Game_Battler_gainHp.call(this,value);
		
		// 戦闘中じゃなければ処理を行わない
		if( !$gameParty.inBattle() ) return;
		
		// 敵じゃない場合は服装チェック
		if( !this.isEnemy() ){
			var chara_name = this._name;
			// 服装があるキャラなのか？
			if( argCharaList.indexOf(chara_name) == -1 ) return;
			
			// 男キャラなので例外化
			if( chara_name == 'シオン' ) return;
			
			// 裸の場合は破れない
// [ASH] -
//			if( $advSystem.getBodyCos(chara_name) == 'hadaka' ) return;
// [ASH] +
			if ($advSystem.getBodyCos(chara_name).indexOf("hadaka") !== -1) return;

			// 体力が一定以下なら切り替え
			if( BREAK_LINE > this.hpRate() ){
				SceneManager._scene._spriteset.standBreak(chara_name);
			}
			
		}
	};

	
	//---------------------------------
	// Window_ActorCommandの変更
	//---------------------------------
	
	// ○キャラのコマンドセット時に立ち絵表示
	var _TS_BattleStand_Window_ActorCommand_setup = Window_ActorCommand.prototype.setup;
	Window_ActorCommand.prototype.setup = function(actor) {
		_TS_BattleStand_Window_ActorCommand_setup.call(this,actor);
		
		// キャラ画像変更
		SceneManager._scene._spriteset.changeStand(actor._name);
	};
	
	// ○ウィンドウを閉じる際に表示している立ち絵を消す
	Window_ActorCommand.prototype.close = function() {
		Window_Command.prototype.close.call(this);
		
		// キャラ画像を消す
		SceneManager._scene._spriteset.changeStand();
	};
	
})();
