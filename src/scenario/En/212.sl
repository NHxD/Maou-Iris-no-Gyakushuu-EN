
;; ● True Demon King Route (Fighting back to the hero)

; FIXME: the game freezes here and I'm not sure why, maybe because of the BGM loading?

@bgm f=battle3

@move_f f=iris@kougeki1 in=r t=300

[Elise]「Hah... Hahhhhhh....」

@mes_win back=1 pos=1

\fw:\m『HNNNGH... IGNORANT FOOLS!\n\mYOU CANNOT DEFY A SACRED GOD!』

@mes_win back=0 pos=2
@bs f=iris@takawarai

[Elise]「Hehehe... Are you afraid? Well, you should be 'cause it's all over for you now!」

@mes_win back=1 pos=1

\fw:\m『HNNNGH... NO... IMPOSSIBLE...\n\mI AM GOD... I CANNOT DIE...\n\mI...』

@mes_win back=0 pos=2
; REMOVED
;@bs f=iris@kougeki2_z body_op=z
; NEW
@bs f=iris@kougeki2
@flash t=300
@wait t=300
@flash t=100
@wait t=100
@flash t=1000

[Elise]「Aaaaaaaaahhh...」

; NEW
@move_f f=iris@kougeki2 out=r t=150

; NEW
@map_scroll dis=1 dir=d spd=2 wt=0

; NEW
@anime num=604 wt=0
; NEW
@anime num=52 wt=1

; NEW
@zoom_f f=iris@kougeki2_z src=iris@kougeki2 in=r t=300

[Elise]『\$SKILL[Emperor Devil Dust!!!]』

; REMOVED
@move_f f=iris@kougeki2_z body_op=z out=r t=150
; NEW
;@zoom_f f=iris@kougeki2 src=iris@kougeki2_z out=r t=300

; NEW
@map_scroll dis=2 dir=u spd=4 wt=0

@anime id=1 num=0703 wt=1
; NEW
@wait t=20
@anime id=1 num=0704 wt=0
; NEW
@wait t=1200
; NEW
@anime id=1 num=603 wt=0

; REMOVED
;@wait t=500
; NEW
@wait t=100

@mes_win back=1 pos=1
@qk t=500
; REMOVED
;@invisible id=4 type=on
;@invisible id=5 type=on
;@invisible id=6 type=on
;@invisible id=7 type=on
;@invisible id=8 type=on
;@invisible id=1 type=on
; REMOVED

; NEW
@anime id=4 num=306
;@anime id=4 num=1 wt=0
;@anime id=4 num=2 wt=0
@invisible id=4 type=on
; NEW
@se f=Darkness8
; NEW
@wait t=20

@anime id=5 num=306
;@anime id=5 num=1 wt=0
;@anime id=5 num=2 wt=0
@invisible id=5 type=on
; NEW
@se f=Darkness8
; NEW
@wait t=20

@anime id=6 num=306
;@anime id=6 num=1 wt=0
;@anime id=6 num=2 wt=0
@invisible id=6 type=on
; TODO: find a more appropriate sound
;@se f=Darkness8
; NEW
;@wait t=20

@anime id=7 num=306
;@anime id=7 num=1 wt=0
;@anime id=7 num=2 wt=0
@invisible id=7 type=on
; TODO: find a more appropriate sound
;@se f=Darkness8
; NEW
;@wait t=20

@anime id=8 num=306
;@anime id=8 num=1 wt=0
;@anime id=8 num=2 wt=0
@invisible id=8 type=on
; TODO: find a more appropriate sound
;@se f=Darkness8
; NEW
;@wait t=20

;@wait t=500

; MOVED HERE
@mes_win back=0 pos=2

; MOVED HERE
[Jervis]「―grrgh! Ahhhhhhhhhh... Noooooo...!」

@anime id=1 num=306
;@anime id=1 num=42 wt=0
;@anime id=1 num=48 wt=0
;@anime id=1 num=49 wt=0
;@anime id=1 num=109 wt=0
@anime id=1 num=119 wt=0
; NEW
@wait t=20
; NEW
@anime id=1 num=605 wt=0
@opacity id=1 start=255 end=0 step=5 t=300
@invisible id=1 type=on
; NEW

; MOVED ABOVE
;[Jervis]『―grrgh! Ahhhhhhhhhh...』

;@mes_win back=0 pos=2

; NEW
@map_scroll dis=2 dir=d spd=3 wt=0

@move_f f=iris@syuuti in=r t=300

[Elise]「Hah... Hah...」

;; Defeat the Holy God

@huki id=9 b=3

[Chiot]「You did it, Elise! We won... we won!」

@bgm

@bs f=iris@takawarai

[Elise]「Hehe, of course! Ohohoho～♪ I... am the... Devi―」

; REMOVED
;@bs f=iris@
; NEW
;@bs
; NEW
@move_f f=iris@takawarai out=r t=150


@se f=床にドサッ
@change num=1
@wait t=1000

; NEW
@c_jump id=9 wt=0

@huki id=9 b=1

[Chiot]「―Hey?!」

;; Iris collapses
@fadeout

[Chiot]「Elise?! Elise!!!」

[Chiot]「Elise, what's wrong...?! Elise!!!」


