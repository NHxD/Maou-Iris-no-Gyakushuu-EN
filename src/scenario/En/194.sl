
;; ● True Demon King Route (Fighting back to the brave)

;; Climb the sacred mountain Fuji

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=left x=14 y=18
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=iris_nowBody num=0
@move_speed id=10 spd=3
;;-------------------------------------
@dot_move id=10 dir=up x=14 y=18
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=sion num=0
@move_speed id=11 spd=3
;;-------------------------------------
@dot_move id=11 dir=up x=14 y=20
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=sakuya_nowBody num=0
@move_speed id=12 spd=3
;;-------------------------------------
@dot_move id=12 dir=up x=13 y=19
;;*************************************

;; Change of clothes format
;;*************************************
@through id=13 type=on
@change id=13 f=null num=0
@move_speed id=13 spd=3
;;-------------------------------------
@dot_move id=13 dir=down x=14 y=12
;;*************************************

@fade type=in t=250

@move_speed id=10 spd=3
@move_speed id=11 spd=3
@move_speed id=12 spd=3
@move_speed spd=3

@route id=10 route=up wt=0
@route id=11 route=up wt=0
@route id=12 route=up wt=0
@route route=up

@route route=down wt=0
@huki id=12 b=8
@wait t=1200

@dir id=10 dir=down

@bgm f=dungeon10

@huki id=12 b=7

@move_f f=sakuya@metoji in=l t=300

[Sakuya]「We finally reached top of mountain! It was not so easy, ne?」

@move_f f=sakuya@metoji out=l t=300

@dir id=11 dir=right

@move_speed spd=5

@dir id=10 dir=right wt=0
@dir id=12 dir=right wt=0

@route id=11 route=right

@huki id=11 b=8
@wait t=1200

@route route=right:15

@move_f f=sion@emi in=l t=300

[Chiot]「Woah! Such a wonderful view...」

@move_f f=sion@emi out=l t=300

@move_speed spd=6
@route route=left:15

@huki id=10 b=6
@huki id=12 b=6
@wait t=1200


@huki id=10 b=7

@dir id=10 dir=up
@dir id=11 dir=up
@dir id=12 dir=up

@move_f f=sion@emi in=l t=300
@move_f f=iris@kanasimi in=r t=300

[Elise]「Who cares about the view... Besides, I can feel something is coming to... greet us.」

@move_f f=sion@emi out=l t=300
@move_f f=iris@kanasimi out=r t=300
;; Kirin, appeared

@dir id=10 dir=up


@flash t=500
@se f=地鳴りの音

@flash t=100
@se f=Thunder6
@wait t=100

@flash t=100
@se f=Thunder6
@wait t=100

@huki id=11 b=1
@huki id=12 b=1

@move_speed spd=4
@route route=up:7

@flash t=100
@se f=Thunder6
@wait t=100

@flash t=100
@se f=Thunder6
@wait t=100

@wait t=1000

@anime id=14 num=676 wt=0
@wait t=100
@anime id=15 num=676 wt=0
@wait t=100
@anime id=16 num=676 wt=0
@wait t=50
@change id=13 f=$BigMonster3 num=0
@step_anime id=13 type=on
@wait t=50


@wait t=1000

@anime id=13 num=201 wt=0
@qk
[???]「GRRRRRRRRR...」

; REMOVED
;@move_f f=iris@kanasimi in=r t=300
@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「Nanka, that creature is...Kylin?!」

; NEW
@move_f f=sakuya@odoroki out=l t=300

@move_speed spd=5
@route route=down:6

@huki id=10 b=2
; REMOVED
;@bs f=iris@kuyasii

; NEW
@move_f f=iris@kanasimi in=r t=300

[Elise]「So this is the so-called messenger of god.」

@move_f f=iris@kuyasii out=r t=300
; REMOVED
;@move_f f=sakuya@odoroki out=l t=300

@move_speed spd=6
@route route=up:5 wt=0
@flash t=500
@qk

@huki id=10 b=1
@huki id=11 b=1
@huki id=12 b=1

;; Screen shake, effect effect
@wait t=1200

@huki id=13 b=8

; NEW
@mes_win back=1 pos=1

\fw:\m『WHO DARE DISOBEY GOD'S WILL?』

; NEW
@mes_win back=0 pos=2

@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「Eeee, I can hear it speak directly to me?!」

@move_f f=iris@odoroki in=r t=300

[Elise]「Ugh... I hate telepathy, it's so annoying!」

@move_f f=sakuya@odoroki out=l t=300
; NEW
@move_f f=iris@ikari out=r t=300

@move_speed spd=5
@route route=down:7 wt=0

@route id=11 route=left
@dir id=11 dir=up

@dir id=10 dir=down wt=0
@dir id=12 dir=down wt=0

@huki id=11 b=8
@wait t=1200

@move_f f=sion@kanasimi in=l t=300

[Chiot]「What should we do? Is it really okay for us to be beating an apostle?」

; REMOVED
;@bs f=iris@ikari
; NEW
@move_f f=iris@ikari in=r t=300

[Elise]「Do you really wanna call it quits now? Are you serious? After we climbed all the way up here?!」
[Elise]「We've travelled this far in search of a way to defeat God. I'll show no mercy to anyone who gets in my way now.」

@dir id=10 dir=up wt=0
@dir id=12 dir=up wt=0
@move_f f=iris@ikari out=r t=300
@move_f f=sion@ikari1 out=l t=300

@move_speed spd=4
@route route=up:6

@flash t=500
@qk

; NEW
@mes_win back=1 pos=1

\fw:\m『SUBMIT YOURSELVES TO GOD'S JUDGEMENT!』

; NEW
@mes_win back=0 pos=2

@anime id=13 num=201 wt=0
@qk

[Kylin]「GRAAAAAAAAH!!!」

@fade type=out t=20

;; Battle: Kirin
