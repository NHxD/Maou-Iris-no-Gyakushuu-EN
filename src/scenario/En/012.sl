
;; ■ Devil Castle (Prologue)

;; ● victory
;; ↓ The invisible command did not work well, so I processed it on the Maker side.
;;[オーク]「がはっ……ち、ちくしょう…」
;;@anime id=12 num=207 wt=1
;;@invisible id=12 type=on wt=1
;;So far

@bgm f=dungeon5
@huki b=6
@move_f f=iris@kanasimi_hoho in=r t=300

[Iblis]「I can't believe it... I'm so weak!」

;; Iris breathes and calms down

@bs f=iris@kuyasii

[Iblis]「Demons only obey masters stronger than themselves. So it is only natural that they would betray me in my current state.」

@bs f=iris@kanasimi op2=ase

[Iblis]「No― Even worse... They will all gang up on me if they learn about my weakened state...」

;; pondering

; REMOVED
;@huki b=8 wt1
; NEW
@huki b=8 wt=1
@bs f=iris@kuyasii

[Iblis]「It'll only get worse if I stay here with such a frail body.」

@bs f=iris@kougeki1

[Iblis]「I should leave immediately through the portal before stronger demons return.」

@move_f f=iris@kanasimi_hoho out=r t=300

@map_scroll dir=r dis=10 spd=5
@map_scroll dir=d dis=13 spd=5

@wait t=1500

@map_scroll dir=u dis=13 spd=6
@map_scroll dir=l dis=10 spd=6

;; ● Free movement
;; *You cannot move to maps other than the throne.
