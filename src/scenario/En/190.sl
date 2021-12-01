
;; ● True Demon King Route (Fighting back to the hero)

;; ○ On the sea

;;----------------------------------------------
@invisible type=on
@through type=on
; REMOVED
;@dot_move dir=up x=4 y=12
; NEW
@dot_move dir=up x=19 y=12
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=4 type=on
@change id=4 f=iris_nowBody num=0
@move_speed id=4 spd=4
;;-------------------------------------
; REMOVED
;@dot_move id=4 dir=left x=4 y=12
; NEW
@dot_move id=4 dir=left x=19 y=12
;;*************************************

;; Change of clothes format
;;*************************************
@through id=5 type=on
@change id=5 f=sion num=0
@move_speed id=5 spd=4
;;-------------------------------------
; REMOVED
;@dot_move id=5 dir=left x=5 y=11
; NEW
@dot_move id=5 dir=left x=20 y=11
;;*************************************
@fade type=in t=250

@bgm f=Town1

@huki id=5 b=2
@move_f f=sion@tuujou in=l t=300

[Chiot]「... But why would there be anything related to the divine energy on this eastern island?」

@move_f f=sion@tuujou out=l t=300

@huki id=4 b=8
@wait t=1200

@move_f f=sion@tuujou in=l t=300
@move_f f=iris@kanasimi in=r t=300

@huki id=4 b=8
[Elise]「You're thinking too much... In any case, I know we're heading in the right direction because I'm sensing major upheavals ahead.」

@move_f f=iris@kanasimi out=r t=300
@move_f f=sion@tuujou out=l t=300

;; Go through the sea
