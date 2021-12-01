
;; ● True Demon King Route (Fighting back to the hero)

@fade type=out t=500

;;----------------------------------------------
@invisible type=on
@through type=on
@move_speed spd=4
@dot_move dir=up x=24 y=24
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=38 type=on
@change id=38 f=iris_nowBody num=0
@move_speed id=38 spd=3
;;-------------------------------------
@dot_move id=38 dir=up x=25 y=23
;;*************************************

;; Change of clothes format
;;*************************************
@through id=39 type=on
@change id=39 f=sion num=0
@move_speed id=39 spd=3
;;-------------------------------------
@dot_move id=39 dir=up x=23 y=23
;;*************************************

;; Change of clothes format
;;*************************************
@through id=40 type=on
@change id=40 f=null num=2
@move_speed id=40 spd=3
;;-------------------------------------
@dot_move id=40 dir=down x=24 y=20
;;*************************************

; NEW
;@map_scroll dir=down dis=1 spd=3

@fade type=in t=500

@huki id=38 b=8
@wait t=1200

@move_f f=iris@kanasimi in=r t=300

@huki id=38 b=8
[Elise]「Hmm... Why am I feeling cold all of a sudden.」

@move_f f=sion@tuujou in=l t=300

@huki id=39 b=8
[Chiot]「You're right. It looks like time has stopped.」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@kanasimi out=r t=300

@huki id=38 b=1
@huki id=39 b=1

; NEW
;@map_scroll dir=up dis=1 spd=4 wt=0

@move_speed spd=5
@route route=up:4

@anime id=40 num=667 wt=0
@wait t=1000
@anime id=40 num=669 wt=0
@wait t=200
@change id=40 f=Nature num=7

@wait t=2000

@bgm f=battle7

@huki id=40 b=8
[Cherubim]「Cherubim has a question for you... What is time?」

; REMOVED
@move_f f=sion@tuujou in=l t=300
; NEW
;@move_f f=sion@taida in=l t=300

@huki id=39 b=2
[Chiot]「It... it spoke?」

@move_f f=iris@kuyasii in=r t=300

@huki id=38 b=8
[Elise]「Yeah... This angel doesn't seem to be like the others.」

@huki id=40 b=8
[Cherubim]「Cherubim asks you again... What is time?」

@bs f=sion@tuujou

@huki id=39 b=7
[Chiot]「Time is... well... something that keeps flowing...?」

@huki id=40 b=8
[Cherubim]「How is it flowing?」

@bs f=sion@kanasimi

@huki id=39 b=7
[Chiot]「Um... I... don't know...」

@huki id=40 b=2
[Cherubim]「Then why did you describe something you don't know as being stopped?」

@bs f=sion@kanasimi

@huki id=39 b=7
[Chiot]「Uh... I did... because... uh...」

@bs f=iris@ikari

@huki id=38 b=1
[Elise]「Why are you answering his stupid questions?! Let's just beat him up!」

@move_f f=sion@kanasimi out=l t=300
@move_f f=iris@ikari out=r t=300

;; NEW - START
@anime id=40 num=653 wt=0
@wait t=200
@anime id=40 num=667 wt=0
@wait t=500
@anime id=40 num=669 wt=0
@wait t=200
@change id=40 f=null num=2 wt=0
@step_anime id=40 type=on
@dir id=40 dir=l wt=0
@change id=40 f=$BigMonster1 num=1 wt=0
@wait t=100
;; NEW - END

@anime id=40 num=653
@anime id=40 num=671 wt=0

@wait t=500


;; Defeat the cherub
