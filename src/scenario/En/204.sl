
;; ● True Demon King Route (Fighting back to the hero)


@bgm

@fade type=in t=500

@move_speed spd=5

@huki b=8
@wait t=1200

@fb dir=for num=9
@route route=up:2

@huki b=8
@wait t=1200

@move_f f=sion@tuujou in=l t=300

[Chiot]「That feeling again...」

@move_f f=iris@reisyo in=r t=300

@huki b=8
[Elise]「Yup... Another angel must be nearby.」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@reisyo out=r t=300

@map_scroll dir=up dis=3 spd=6

;; Change of clothes format
;;*************************************
@through id=34 type=on
@change id=34 f=null num=2
@move_speed id=34 spd=3
;;-------------------------------------
@dot_move id=34 dir=down x=24 y=39
;;*************************************

@anime id=34 num=667 wt=0
@wait t=1000
@anime id=34 num=669 wt=0
@wait t=200
@change id=34 f=Nature num=7

@wait t=2000

@bgm f=battle7

@huki id=34 b=8
[Kyrios]「Kyrios has a question for you... Why won't you bow down before the Majesty of God?」

@move_f f=sion@reisei in=l t=300

[Chiot]「Because... I believe God is wrong.」

; NEW
;@move_f f=sion@reisei out=l t=300

@huki id=34 b=8
[Kyrios]「God does not make mistakes. Only humans and demons do. And God guides them in the rightful path.」

; REMOVED
@bs f=sion@ikari1
; NEW
;@move_f f=sion@ikari1 in=l t=300

[Chiot]「This path God chose is a matter of opinion and the decision should be left to the person, not something that should be forced upon them!」

; NEW
;@move_f f=sion@ikari1 out=l t=300

@huki id=34 b=8
[Kyrios]「People makes mistakes. That is why God gives them revelations.」

@move_f f=iris@ikari in=r t=300

@huki b=1
[Elise]「Hmph! You just assume that God is always right.」

; TODO: check - is it iris or sion who says that?
[Elise]「It's a waste of time talking with these angels... Let's beat him up!」

; REMOVED
@move_f f=sion@ikari1 out=l t=300
@move_f f=iris@ikari out=r t=300

@move_speed spd=4

;; NEW - START
@anime id=34 num=653 wt=0
@wait t=200
@anime id=34 num=667 wt=0
@wait t=500
@anime id=34 num=669 wt=0
@wait t=200
@change id=34 f=null num=2 wt=0
@step_anime id=34 type=on
@dir id=34 dir=u wt=0
@change id=34 f=$BigMonster1 num=1 wt=0
@wait t=100
;; NEW - END

@anime id=34 num=653
@anime id=34 num=671 wt=0
@wait t=500


;; Defeat the Dominions
