
;; ● True Demon King Route (Fighting back to the hero)

@bgm f=battle6

@dir_fix id=10 type=on
@dir_fix id=35 type=on
@walk_anime id=10 type=off
@walk_anime id=35 type=off
@move_speed id=10 spd=6
@move_speed id=35 spd=6
@move_speed spd=5

@route route=down wt=0
@route id=10 route=down wt=0
@route id=35 route=up

@se f=Thunder5
@flash t=1000

@wait t=1000

@huki id=10 b=1
@anime id=35 num=673

@move_speed id=10 spd=6
@move_speed id=35 spd=6
@move_speed spd=6

@se f=Thunder6
@flash t=500

@route route=up:2 wt=0
@route id=10 route=up:2 wt=0
@route id=35 route=down:2

@se f=Blow4

@wait t=1000

@move_f f=iris@ikari in=r t=300

[Elise]「Tsk... whoever that God is.... is so damn annoying!」

@bs f=iris@kanasimi

[Elise] (I'm so drained after my battle against Chiot... I wasn't prepared to take on another opponent. At this rate, I might suffer another defeat.)

@move_f f=zexy@ikari in=l t=300

[Zekushi]「Yaaahhhhhhhhh!!」

@move_f f=iris@ikari out=r t=300
@move_f f=zexy@ikari out=l t=300

@move_speed spd=5
@route route=down:4

@se f=風切り音1
@flash t=300
@invisible id=35 type=on

@move_speed spd=6

@route id=35 route=up:4 wt=0
@route route=up:4

@huki id=10 b=1
@wait t=1000

@se f=風切り音1
@flash t=300
@invisible id=35 type=off

@anime id=35 mum=657 wt=0

@move_f f=iris@odoroki in=r t=300

[Elise] (Dammit, she's already onto me! Am I done for...?!)

@move_f f=iris@odoroki out=r t=300
@move_f f=zexy@ikari out=l t=300

;; Zion appears (gets help)

@move_f f=sion@ikari1 in=l t=300

[Chiot]「I-I...!」

@move_f f=sion@ikari1 out=l t=300

@dir_fix id=1 type=on
@c_jump id=1 x=1 y=4 wt=0

@wait t=50
@huki id=35 b=1

;; Effect ■ Screen white flash
;; The sound of crossing blades
@se f=Thunder6
@flash t=500
@qk
@se f=Sword2

@route id=35 route=down:2

; MOVED sion above iris
@move_f f=sion@ikari1 in=l t=300
@move_f f=iris@odoroki_hoho_z body_op=z in=r t=300
; REMOVED
;@move_f f=sion@ikari1 in=l t=300

; NEW: (wait+bs)
;@wait t=1000
;@bs f=iris@odoroki_hoho

[Elise]「Chiot...?!」

; MOVED ABOVE
;@bs f=iris@odoroki_hoho
@bs f=sion@tuujou

[Chiot]「Hah... Let me help you, Iblis!」

[Grand Justice]「Heh heh... Hahahaha!!! A hero that can't even use the full power of the Sacred Sword... what do you think you can do?!」

@bs f=sion@kanasimi

[Chiot]「Well, it's true that I may no longer be qualified to be called a hero.」

@bs f=sion@ikari1

[Chiot]「But I still believe that the person who fights for the sake of others is the true hero... being chosen by God or not is irrelevant!」

@move_f f=sion@ikari1 out=l t=300
@move_f f=iris@odoroki_hoho out=r t=300

@wait t=250
@huki id=10 b=8
@wait t=1000

@move_f f=iris@reisyo in=r t=300

[Elise]「Inspiring speech coming from a man crying like a baby just a moment ago.」

@move_f f=iris@reisyo out=r t=300

@dir_fix id=1 type=off
@huki id=1 b=7
@dir id=1 dir=up wt=0
@wait t=1000

@move_f f=sion@tere in=l t=300

[Chiot]「Hah! I wasn't crying!! I... I... Come on!」

; NEW: show portrait of elise
@move_f f=iris@emi_hoho in=r t=300

; NOTE: moved this here.
[Elise]「Just pulling your leg... Hehe ♥」

@move_f f=sion@tere out=l t=300
; NEW
@move_f f=iris@emi_hoho out=r t=300

@dir_fix id=10 type=off
@walk_anime id=10 type=on

@move_speed id=1 spd=3
@move_speed id=10 spd=3
@move_speed spd=3

@route route=down wt=0
@route id=10 route=down wt=0

@dir id=1 dir=left wt=0
@fb id=1 dir=back

@dir id=1 dir=down

@wait t=500

@move_f f=iris@kougeki1 in=r t=300
@move_f f=sion@ikari1 in=l t=300

[Elise]「All right, let's do this!」

@move_f f=iris@kougeki1 out=r t=300
@move_f f=sion@ikari1 out=l t=300

;;------------------------------------------

@dir_fix id=10 type=off
@dir_fix id=34 type=off
@dir_fix id=35 type=off

@walk_anime id=10 type=on
@walk_anime id=34 type=on
@walk_anime id=35 type=on

@move_speed id=10 spd=4
@move_speed id=34 spd=4
@move_speed id=35 spd=4

;;------------------------------------------

;; ○ Event battle: Zexy (Hero ver)
;; * It will be a joint battle with the hero. Bad end if defeated.
