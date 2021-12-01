
;; ● True Demon King Route (Fighting back to the hero)
;; What to do when you come to the village

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=14 y=36
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=5 type=on
@change id=5 f=null num=0
@move_speed id=5 spd=4
;;-------------------------------------
@dot_move id=5 dir=up x=14 y=35
;;*************************************

;; Change of clothes format
;;*************************************
@through id=6 type=on
@change id=6 f=null num=0
@move_speed id=6 spd=4
;;-------------------------------------
@dot_move id=6 dir=up x=14 y=37
;;*************************************
@fade type=in t=250

@anime id=5 num=304 wt=0
@anime id=6 num=304 wt=0

@wait t=200
@flash t=300
@change id=5 f=iris_nowBody num=0
@change id=6 f=sion num=0

@wait t=1000

@move_speed id=5 spd=3
@move_speed id=6 spd=3

@route id=5 route=up wt=0
@route id=6 route=up

@huki id=5 b=8
@wait t=1000

@dir id=5 dir=down
@move_f f=iris@bisyo in=r t=300

[Elise]「We need to gather information concerning the divine energy.」

@bs f=iris@emi
[Elise]「Let's ask the villagers.」


@move_f f=iris@emi out=r t=300

@fade type=out t=250
;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
@dot_move dir=up x=14 y=34
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

