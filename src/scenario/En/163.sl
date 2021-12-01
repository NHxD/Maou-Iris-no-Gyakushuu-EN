
;; ● True Demon King Route (plays back against the hero)

;; Female Warrior Milina Appears
;;win

@dir_fix type=on
@dir_fix id=14 type=on

@se f=風切り音1
@c_jump id=14 y=1 wt=0
@c_jump y=-1


@walk_anime type=off
@walk_anime id=14 type=off

@move_speed spd=5
@move_speed id=14 spd=5

@se f=風切り音2
@route route=down:2 wt=0
@route id=14 route=up:2

@se f=Skill2
@flash t=500 wt=0


;**********************

@if eval=v(353)==11 ok=jump:*left_root bad=jump:*right_root

;;*********************
*left_root

@dot_move dir=down x=6 y=16
@dot_move id=14 dir=down x=6 y=15

@jump target=*root_end
;;*********************
*right_root

@dot_move dir=down x=34 y=16
@dot_move id=14 dir=down x=34 y=15

@jump target=*root_end
;;*********************

*root_end

;;*********************

@wait t=500

@walk_anime type=on
@walk_anime id=14 type=on

@dir_fix type=off
@dir_fix id=14 type=off

@move_speed spd=3
@route route=down:1

@huki id=14 b=1
@anime id=14 num=659

@se f=潰れる
@dir id=14 dir=down
@flash col=255,0,0,255 t=1000
@qk
@wait t=500

@bgm f=battle5

[Mileena]「D―Dammit! But, Devil... Your evil ambitions will definitely be crushed by Lord Chiot...!」

;; Milina, fall
@se f=blow6
@dir id=14 dir=down wt=0
@change id=14 f=brave num=4


@wait t=500

@huki b=8
@wait t=500

@move_f f=iris@kuyasii in=r t=300

[Elise]「Unfortunately for you, I'm not so weak now that I could be defeated by Chiot. Well, see you... Ohohoho～♪」

@move_f f=iris@kuyasii out=r t=300
@move_speed spd=4
;; go further
