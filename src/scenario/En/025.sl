
;; ■ Small Village / Inn

@bgm f=bgm02

@move_f f=iris@kuyasii in=r t=300

[Elise]「Fine. I'll go IF I'm interested.」

[Resident]「Could you please―」

;; A little tight glance

; REMOVED
;@bs f=iris@ikari_z body_op=z
; NEW
@zoom_f f=iris@ikari_z src=iris@kuyasii in=r t=300

[Elise]「―Why are you insisting so much? You humans are going to tell me what do now, uh...?」

; MOVED BELOW
;@huki id=8 b=6 wt=1
; REMOVED
;@bs f=iris@ikari
; NEW
@zoom_f f=iris@ikari src=iris@ikari_z out=r t=300

; NEW (removed because the villager's sprite is completely hidden behind iris' stand picture, so it's impossible to know where the forced wait is coming from)
;@huki id=8 b=6 wt=1
; NEW
@huki id=8 b=6

[Resident]「N―No. I didn't mean to... I―I'm sorry!」

; REMOVED
@move_f f=iris@ikari out=r t=300

;; *A villager who leaves in a hurry.
@route id=8 route=d:1 spd=5 wt=1
; REMOVED
;@route id=8 route=l:13 spd=5 wt=1
; NEW
@through id=8 type=on
; NEW
@route id=8 route=l:12,d:3 spd=5 wt=1
; NEW
@invisible id=8 type=on

@wait t=1000

@move_f f=iris@kuyasii in=r t=300

[Elise] (What the hell is it about then? I'll go only if I'm interested.)

@bs f=iris@bisyo

[Elise]「Anyway, let's find more information about the Hero and how to find more of those coins.」

; NEW
@move_f f=iris@bisyo out=r t=300

;; Walk for a few steps and then stop → look a little out of sync
@route route=d:2 wt=1
; NEW
;@dir id=4 dir=u wt=1
@se f=Close1
; NOTE: why make her look to the right?
@dir id=4 dir=r wt=1
@dir id=4 dir=l wt=1
@dir id=4 dir=d wt=1
@route route=left:4 wt=1
@huki b=6

; REMOVED
;@bs f=iris@odoroki
; NEW
@move_f f=iris@odoroki in=r t=300

[Elise]「Damn. I should have asked that human...」

@move_f f=iris@odoroki out=r t=300

;; * Free movement
