
;; ● True Demon King Route (Fighting back to the hero)

; NEW
@dir id=10 dir=d wt=0
; NEW
;@step_anime id=10 type=off
; NEW
@change id=10 f=Nature num=7

@se f=Thunder6
@flash t=500
@qk

@move_speed id=10 spd=3

@huki id=10 b=1
@map_scroll dir=up dis=1 spd=3 wt=0
@fb id=10 dir=back

@anime id=10 num=669 wt=0
@wait t=200

; NEW
@anime id=10 num=119 wt=0

@change id=10 f=null num=0

@wait t=1000

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=null num=0
@move_speed id=10 spd=3
;;-------------------------------------
@dot_move id=10 dir=up x=0 y=0
;;*************************************

@map_scroll dir=down dis=7 spd=6

@fade type=out t=500

;; Defeat the Seraph

