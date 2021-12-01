
;; ● True Demon King Route (Fighting back to the hero)

@bgm
@fade type=out t=500

@fade type=in t=500

@huki b=8
@wait t=1200

@move_f f=sion@reisei in=l t=300

[Chiot]「This... feels even worse than before.」

@move_f f=iris@kuyasii in=r t=300

[Elise]「Yeah... don't let it distract you.」

@move_f f=iris@kuyasii out=r t=300
@move_f f=sion@reisei out=l t=300

; REMOVED
;@map_scroll dir=up dis=7 spd=6
; NEW
@map_scroll dir=up dis=6 spd=6

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=null num=2
@move_speed id=10 spd=3
;;-------------------------------------
@dot_move id=10 dir=down x=19 y=17
;;*************************************

@anime id=10 num=667 wt=0
@wait t=1000
@anime id=10 num=669 wt=0
@wait t=200
@change id=10 f=Nature num=7

@wait t=1500

@map_scroll dir=down dis=1 spd=3 wt=0
@route id=10 route=down

@bgm f=Battle7

@huki id=10 b=8
[Seraphim]「Seraphim has a question for you... Why do you defy God?」

; REMOVED
;@map_scroll dir=down dis=4 spd=6
; NEW
@map_scroll dir=down dis=3 spd=6

@move_f f=iris@ikari in=r t=300

@huki b=8
[Elise]「I'll ask you the same. Why are you against us?」

; MOVED HERE
@bs f=iris@reisyo

[Elise]「Perhaps... God is scared of us?」

@huki id=10 b=8
[Seraphim]「God does not fear anything or anyone.」

; MOVED ABOVE
;@bs f=iris@reisyo

@huki b=2
[Elise]「If that is the case, would you just let us through without causing us trouble?」

@huki id=10 b=8
[Seraphim]「If you would understand your mistakes, you wouldn't face God.」

@move_f f=sion@reisei in=l t=300

[Chiot]「It's the same lines over and over again...」

@bs f=sion@ikari2 in=l t=300

[Chiot]「Let's just force our way through!」

@move_f f=iris@reisyo out=r t=300
; REMOVED
;@move_f f=sion@reisei out=l t=300
; NEW
@move_f f=sion@ikari2 out=l t=300

; REMOVED
;@map_scroll dir=up dis=4 spd=6
; NEW
@map_scroll dir=up dis=3 spd=6

;; NEW - START
@anime id=10 num=653 wt=0
@wait t=200
@anime id=10 num=667 wt=0
@wait t=500
@anime id=10 num=669 wt=0
@wait t=200
@change id=10 f=null num=2 wt=0
@step_anime id=10 type=on
@dir id=10 dir=d wt=0
@change id=10 f=$BigMonster1 num=1 wt=0
@wait t=100
;; NEW - END

@anime id=10 num=653
@anime id=10 num=671 wt=0
@wait t=500

;; Defeat the Seraph

