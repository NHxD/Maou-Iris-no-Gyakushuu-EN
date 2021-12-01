
;; ● True Demon King Route (Fighting back to the hero)

; NEW
@dir id=34 dir=d wt=0
; NEW
;@step_anime id=34 type=off
; NEW
@change id=34 f=Nature num=7

@bgm f=battle7
@flash t=500
@qk

@se f=Thunder6
@flash t=500
@qk

@move_speed id=34 spd=3

@huki id=34 b=1
@map_scroll dir=up dis=1 spd=3 wt=0
@fb id=34 dir=back

@anime id=34 num=669 wt=0
@wait t=200

; NEW
@anime id=34 num=119 wt=0

@change id=34 f=null num=0

@wait t=1000

;; Change of clothes format
;;*************************************
@through id=34 type=on
@change id=34 f=null num=0
@move_speed id=34 spd=3
;;-------------------------------------
@dot_move id=34 dir=up x=0 y=0
;;*************************************

@map_scroll dir=down dis=4 spd=4

@fade type=out t=500

;; Defeat the Dominions

