
;; ● True Demon King Route (Fighting back to the hero)

;; Arrive in the eastern island nation

;;----------------------------------------------

@invisible id=13 type=on
@invisible id=14 type=on
@invisible id=18 type=on
@invisible id=17 type=on
@invisible id=18 type=on

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=13 y=33
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=9 type=on
@change id=9 f=iris_nowBody num=0
@move_speed id=9 spd=3
;;-------------------------------------
@dot_move id=9 dir=left x=15 y=33
;;*************************************

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=sion num=0
@move_speed id=10 spd=3
;;-------------------------------------
@dot_move id=10 dir=left x=13 y=33
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=Nature num=7
@move_speed id=11 spd=4
;;-------------------------------------
@dot_move id=11 dir=down x=6 y=19
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=J_People5 num=2
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=up x=6 y=21
;;*************************************

@route route=left:2 wt=0
@route id=9 route=left:3 wt=0
@route id=10 route=left:3 wt=0

@fade type=in t=300 wt=0

@wait t=1000

@huki id=10 b=8
@wait t=1200

@dir id=10 dir=right

@huki id=10 b=2
@bgm f=field5

@move_f f=sion@tuujou in=l t=300

[Chiot]「I'm glad we finally arrived... But what should we do now?」

@move_f f=iris@kanasimi in=r t=300

[Elise]「Yeah, we don't even know where in this place is the source of the divine energy... or if that is even true...」

[Elise]「Well, I guess we should gather information for now until we find something useful.」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@kanasimi out=r t=300

@bgm
@huki id=9 b=1
@huki id=10 b=1

@dir id=10 dir=left

[Man in the harbor]「Oww! Somebody, help me please!」

@move_speed spd=6
@bgm f=dungeon2

@route route=left:7,up:5 wt=0
@wait t=500

@route id=11 route=down:5 wt=0
@route id=12 route=down:5

@dir id=12 dir=up
@step_anime id=12 type=on

@wait t=1200

@move_speed id=9 spd=5
@move_speed id=10 spd=5
@move_speed spd=4

@route id=9 route=left:5,up wt=0
@route id=10 route=left:5,up wt=0
@route route=down:3

@huki id=10 b=1
@move_f f=sion@kanasimi in=l t=300

[Chiot]「―Oh, isn't that...?」

@move_f f=sion@kanasimi out=l t=300

@move_speed spd=5
@route route=up:4
;; Human being attacked by an angel

@huki id=9 b=1
@move_f f=iris@odoroki in=r t=300

[Elise]「An angel?! Why is an angel... attacking a human?!」

@move_f f=iris@odoroki out=r t=300

@route id=10 route=up:7,right
@dir id=10 dir=up

@huki id=12 b=1
@step_anime id=12 type=off

@se f=剣構え01
;; Zion rushes to help humans
@wait t=500

@move_f f=sion@ikari1 in=l t=300

[Chiot]「Wait a second! Why in the heaven are you attacking humans?!」

@move_f f=sion@ikari1 out=l t=300

@huki id=11 b=8
[Angel]「...」

@anime id=11 num=669 wt=0
;; Angel disappears
@wait t=200
@change id=11 f=null num=0

@wait t=500
@move_f f=sion@kanasimi in=l t=300

[Chiot]「Ah... it just disappeared?!」

@move_f f=sion@kanasimi out=l t=300
;; Iris approaches the spot

@bgm f=field5

@move_speed spd=3
@move_speed id=9 spd=3
@move_speed id=10 spd=3

@se f=剣構え01

@route route=down:2 wt=0
@route id=9 route=up:3 wt=0
@route id=10 route=left,down:4 wt=0

@wait t=500
@dir id=12 dir=down

@wait t=1700

@dir id=9 dir=left
@dir id=10 dir=right

@huki id=10 b=8
@wait t=1200

@move_f f=sion@kanasimi in=l t=300
@move_f f=iris@kanasimi in=r t=300

[Chiot]「To think that we would find angels here...?」

@huki id=9 b=8
@bs f=iris@kuyasii

[Elise]「In other words... we don't have much time. Come on, let's hurry up!」

@huki id=10 b=2
@bs f=sion@tuujou

[Chiot]「I think you're right... But where should we go?」

@huki id=9 b=8
@bs f=iris@kanasimi

[Elise]「Let's go to Mad City for the time being. I have an acquaintance there who might be able to help us.」

@move_f f=iris@kanasimi out=r t=300
@move_f f=sion@tuujou out=l t=300

;;*****************************************************************

@fade type=out t=250
;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
@dot_move dir=up x=6 y=29
;;----------------------------------------------

@invisible id=13 type=off
@invisible id=14 type=off
@invisible id=18 type=off
@invisible id=17 type=off
@invisible id=18 type=off

;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=9 type=on
@change id=9 f=null num=0
@move_speed id=9 spd=3
;;-------------------------------------
@dot_move id=9 dir=left x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=null num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=left x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=null num=0
@move_speed id=11 spd=4
;;-------------------------------------
@dot_move id=11 dir=down x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=null num=2
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=up x=0 y=0
;;*************************************

@fade type=in t=250

;;*****************************************************************

;; Iris and Zion, move

