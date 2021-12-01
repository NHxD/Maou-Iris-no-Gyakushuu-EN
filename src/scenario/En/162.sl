
;; ● True Demon King Route (plays back against the hero)

;; Female Warrior Milina Appears

;;----------------------------------------------------
@fade type=out t=250 wt=1
;;----------------------------------------------------

@bgm
;;----------------------------------------------------
;; Crimina's surprise
@move_speed id=14 spd=6
;**********************
;; Change clothes

@change id=14 f=brave num=0
@through id=14 type=on

;**********************

@if eval=v(353)==1 ok=jump:*left_root bad=jump:*right_root

;;*********************
*left_root

@dot_move id=14 dir=down x=6 y=6
@dot_move dir=down x=6 y=17
@fade type=in t=250 wt=1

@se f=風切り音2
@flash t=300 wt=0

@huki b=1 wt=0

@c_jump id=14 y=11 wt=0

@jump target=*root_end
;;*********************
*right_root
@dot_move id=14 dir=down x=34 y=6
@dot_move dir=down x=34 y=17
@fade type=in t=250 wt=1

@se f=風切り音2
@flash t=300 wt=0

@huki b=1 wt=0

@c_jump id=14 y=11 wt=0

@jump target=*root_end
;;*********************
*root_end
;;----------------------------------------------------
;; Avoiding Iris
@move_speed spd=5
@dir_fix type=on
@wait t=220
@c_jump y=-3
@dir_fix type=off
;;----------------------------------------------------
;; Crimina's surprise fell off
@se f=Blow4
@flash t=2000
@qk pow=30 vel=30 t=2000
;;----------------------------------------------------

@bgm f=battle7
@move_speed id=14 spd=3
@route id=14 route=up:1
;;----------------------------------------------------

[Mileena]「It's all over, Devil! I won't let you anywhere near Chiot! Give up now!」

@move_f f=iris@ikari in=r t=300

[Elise]「They just keep coming one after another. Get out of my way!」

@move_f f=iris@ikari out=r t=300

;; Battle with Myrina
