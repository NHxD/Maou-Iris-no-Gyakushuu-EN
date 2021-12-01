
;; ● True Demon King Route (Fighting back to the hero)

;; Heading to the elder
;; Elder, appeared

;;----------------------------------------------
@invisible type=on
@through type=on
@move_speed spd=4
@dot_move dir=up x=5 y=10
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=5 type=on
@change id=5 f=null num=0
@move_speed id=5 spd=4
;;-------------------------------------
@dot_move id=5 dir=down x=5 y=9
;;*************************************

;; Change of clothes format
;;*************************************
@through id=6 type=on
@change id=6 f=null num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=6 dir=down x=5 y=9
;;*************************************
@fade type=in t=250

@se f=Open1
@dir id=12 dir=left
@wait t=30
@dir id=12 dir=right
@wait t=30
@dir id=12 dir=up

@wait t=50
@change id=5 f=iris_nowBody num=0
@wait t=50
@route id=5 route=down,right:2
@dir id=5 dir=left

@change id=6 f=sion num=0
@route id=6 route=down

@dir id=6 dir=up

@se f=Close1
@dir id=12 dir=right
@wait t=30
@dir id=12 dir=left
@wait t=30
@dir id=12 dir=down
@wait t=100

@dir id=6 dir=right wt=0

@move_speed spd=4
@route route=down,right:1

@huki id=5 b=8

@move_f f=iris@bisyo in=r t=300
[Elise]「All right, we should leave this village and head south then.」

@move_f f=iris@bisyo out=r t=300
;;*****************************************************************

@fade type=out t=250
;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
@dot_move dir=right x=7 y=10
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=6 type=on
@change id=6 f=null num=0
@move_speed id=6 spd=4
;;-------------------------------------
@dot_move id=6 dir=down x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=5 type=on
@change id=5 f=null num=0
@move_speed id=5 spd=4
;;-------------------------------------
@dot_move id=5 dir=down x=0 y=0
;;*************************************

@fade type=in t=250

;;*****************************************************************

;; Iris and Zion head to the city

