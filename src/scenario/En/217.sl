
;; ● True Demon King Route (Fighting back to the hero)

@bgm f=Town4

;;----------------------------------------------
@invisible type=on
@through type=on
@move_speed spd=3
@dot_move dir=up x=34 y=18
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=6 type=on
@change id=6 f=null num=0
@move_speed id=6 spd=3
;;-------------------------------------
@dot_move id=6 dir=left x=34 y=18
;;*************************************

;; Change of clothes format
;;*************************************
@through id=7 type=on
@change id=7 f=null num=0
@move_speed id=7 spd=3
;;-------------------------------------
@dot_move id=7 dir=left x=34 y=18
;;*************************************

@fade type=in t=250

;; Then, a little later, Zion arrives.
@change id=6 f=iris_nowBody num=0
@wait t=50

@route id=6 route=left:6 wt=0
@route route=left:6 wt=0

@wait t=1000

@change id=7 f=sion num=0
@wait t=50

@route id=7 route=left:4

;; When Iris stops, Zion also stops.

@huki id=6 b=8
@wait t=1200

@route id=6 route=left:3 wt=0
@route route=left:3 wt=0
@route id=7 route=left:3

;; When Iris starts to move, Zion follows.

@huki id=6 b=8
@wait t=1200

@dir id=6 dir=right
@route route=right:2

@move_f f=iris@kanasimi in=l t=300

@huki id=6 b=2
[Elise]「... Hey you...! Why are you following me?!」

@move_f f=sion@tere in=r t=300

@huki id=7 b=2
[Chiot]「Oh, you noticed?!」

@bs f=iris@kuyasii op2=konwaku

@huki id=6 b=7
[Elise]「Hard to miss... Why the heck are you following me?!」

@bs f=sion@reisei

@huki id=7 b=8
[Chiot]「Hmm... For no particular reason?」

@bs f=iris@odoroki

@huki id=6 b=6
[Elise]「―What?!」

@bs f=sion@kanasimi

[Chiot]「Well, If I tell you the truth, you're likely to get angry...」

@bs f=iris@ikari op2=kyohi


@huki id=6 b=8
[Elise]「Then go back now. I'm leaving.」
; 'cause

@move_f f=sion@kanasimi out=r t=300
@move_f f=iris@ikari out=l t=300

@dir id=6 dir=left
@route route=left:2

;; Iris starts walking. Zion also arrives.

@route id=6 route=left:3 wt=0
@route route=left:3 wt=0
@route id=7 route=left:3

;; When Iris stops, Zion also stops.
@huki id=6 b=8
@wait t=1200

@route id=6 route=left:3 wt=0
@route route=left:3 wt=0
@route id=7 route=left:3

;; When Iris starts to move, Zion follows.
@huki id=6 b=7
@wait t=1200

@dir id=6 dir=right
@huki id=6 b=2

@move_speed spd=5
@route route=right:2
@move_speed spd=3

@move_f f=iris@ikari in=l t=300
@move_f f=sion@kanasimi in=r t=300

[Elise]「Just get on with it, tell me what it is already!」

@move_f f=iris@ikari out=l t=300
@move_f f=sion@kanasimi out=r t=300

@route route=left:2 wt=0
@route id=7 route=down,left:2

@dir id=6 dir=down

@move_f f=sion@tuujou in=l t=300

@huki id=7 b=8
[Chiot]「... Let's keep walking. I'll tell you along the way.」

@move_f f=iris@kanasimi in=r t=300

[Elise]「... Uh, why not here?」

@dir id=6 dir=left

@move_f f=iris@kanasimi out=r t=300
@move_f f=sion@tuujou out=l t=300

@move_speed spd=4
@move_speed id=7 spd=4
@route route=left:2 wt=0
@route id=7 route=left:2
@dir id=7 dir=right
@move_speed id=7 spd=3

@move_f f=sion@tere in=l t=300

[Chiot]「Come on, let's go...」

@huki id=6 b=6
@wait t=1200

; NEW MOVED HERE
@move_f f=iris@kuyasii out=r t=300

@route route=right:2
@move_speed spd=3
@move_f f=iris@kuyasii in=r t=300

@huki id=6 b=8
[Elise]「Weirdo.」

; REMOVED
;@move_f f=iris@kuyasii out=r t=300
@move_f f=sion@tere out=l t=300

;; Time elapses with ending or darkening
@bgm

@fade type=out t=1000 wt=0
@route id=6 route=left:20 wt=0
@wait t=700
@route id=7 route=left:20 wt=0
@wait t=2000

