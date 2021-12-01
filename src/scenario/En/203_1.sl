
;; ● True Demon King Route (Fighting back to the hero)

; NEW
@dir id=40 dir=d wt=0
; NEW
;@step_anime id=40 type=off
; NEW
@change id=40 f=Nature num=7

@se f=Thunder6
@flash t=500
@qk

; REMOVED
;@move_speed spd=3
@move_speed id=40 spd=3
@huki id=40 b=1
; REMOVED
;@route rotue=up wt=0
; NEW
;@route route=up
; NEW
@map_scroll dir=up dis=1 spd=3 wt=0
@fb id=40 dir=back


@anime id=40 num=669 wt=0
@wait t=200

; NEW
@anime id=40 num=119 wt=0

@change id=40 f=null num=0

@wait t=1000

; NEW
@map_scroll dir=down dis=1 spd=4

@bgm
; REMOVED
;@fade type=out t=500
; NEW
@fade type=out t=700


;; Change of clothes format
;;*************************************
@through id=38 type=on
@change id=38 f=null num=0
@move_speed id=38 spd=3
;;-------------------------------------
@dot_move id=38 dir=up x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=39 type=on
@change id=39 f=null num=0
@move_speed id=39 spd=3
;;-------------------------------------
@dot_move id=39 dir=up x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=40 type=on
@change id=40 f=null num=2
@move_speed id=40 spd=3
;;-------------------------------------
@dot_move id=40 dir=down x=0 y=0
;;*************************************

;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
@dot_move dir=up x=24 y=24
;;----------------------------------------------

@fade type=in t=500


;; Defeat the cherub
