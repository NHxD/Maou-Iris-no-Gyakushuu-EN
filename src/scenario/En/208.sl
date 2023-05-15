
;; ● True Demon King Route (Fighting back to the hero)

; FIXME: the game freezes here and I'm not sure why, maybe because of the BGM loading?

@bgm f=battle6

;;@move_f f=sion@ikari2 in=l t=150

@huki id=9 b=1

; NEW
@se f=Blow6

[Chiot]「Gah!!!」

;; Zion blown away

@huki b=1
@dir dir=l
@move_f f=iris@odoroki in=r t=150

[Elise]「Chiot?!」

@huki id=9 b=6
;;@bs f=sion@kanasimi

[Chiot]「Ouch... ow...」


;REMOVED
;@bs f=iris@ikari

[Elise]「Chiot! Get up! Chiot... CHIOT!!!」

;;@bs f=sion@tere_hoho
@huki id=9 b=8

[Chiot]「I―I'm somehow still alive... But more importantly, I feel like it's the first time that I've seen you worried about me... Hah Haha.」


@bs f=iris@kougeki2_hoho op2=konwaku

[Elise]「Wha―?! You idiot! This isn't the time to be joking around!」

@dir dir=u
@mes_win back=1 pos=1

\fw:\m『ALL EVIL MUST BE ANNIHILATED!\n\mTHIS IS YOUR DESTINY.\n\mJUST ACCEPT YOUR FATE!』

@mes_win back=0 pos=2
@bs f=iris@takawarai

[Elise]「You are the one who needs to accept that it's my destiny to rule over this world someday!」

@huki id=9 b=6
;;@bs f=sion@kanasimi

[Chiot]「Uh... Could you give this up already?!」

@dir dir=l
@huki b=7
@bs f=iris@kougeki1_hoho

[Elise]「Zip it! If you won't fight anymore, then let me borrow your Divine Blade.」

@huki id=9 b=8

[Chiot]「But... but I can―」

@huki b=1
@bs f=iris@ikari

[Elise]「Give it to me, quick! Or... I'll go back home without you!」

; NEW
@huki id=9 b=1 wt=1

@change id=9 num=0

; NEW
@c_jump id=9

@route id=9 route=up spd=2
@dir id=9 dir=r
@wait t=500
; REMOVED
;@huki id=9 b=8
; NEW
@huki id=9 b=8 wt=1
@move_f f=sion@reisei in=l t=300

[Chiot]「... Elise.」

@huki b=1
@bs f=iris@kougeki2

[Elise]「Chiot!!!」

@huki id=9 b=8
@bs f=sion@emi

[Chiot]「Ha... Haha... The fate of the world―」

@huki id=9 b=1
@bs f=sion@ikari1

[Chiot]「―I hereby entrust everyone's future to you!」

@move_f f=sion@ikari1 out=r t=150
@move_f f=iris@ikari out=l t=150
@wait t=500
@anime id=9 num=701
@anime num=702 wt=1
@wait t=500
@anime id=1 num=126
@wait t=300
@fadeout t=300 t=300

