
;; ● Demon King Route (If you choose Dominate the World)
;; ● Satan route branch: When defeated by a hero in the final battle

@bgm f=Scene3

@move_f f=iris@odoroki body_op=yabure in=r t=300
@huki b=7

[Elise]「Ah...Ngh...! Why?! Why can't I defeat the Hero?!」

@huki id=21 b=8
@fb id=21 dir=for
@move_f f=sion@kanasimi in=l t=300

[Chiot]「Devil Iblis. I tried... I wanted to save you...」

@bs f=iris@reisyo body_op=yabure

[Elise]「Heh... Idiot... You've been trying to save...me? All this time... You're such a fool.」

[Chiot]「Devil...」

; NEW
@move_f f=iris@reisyo body_op=yabure out=r t=300
; NEW
@move_f f=sion@kanasimi out=l t=300

; NEW
@wait t=600

; TODO?
;@move_f f=iris@reisyo out=4 t=300 body_op=yabure
; REMOVED
;@fb dir=back
; NEW
@fb dir=back wt=1
; NEW
@wait t=600
; NEW
;@move_speed
;@wait t=500
;@move_f f=iris@reisyo_hoho in=4 t=300
; REMOVED
;@bs f=iris@reisyo_hoho body_op=yabure
; NEW
@move_f f=iris@reisyo_hoho body_op=yabure in=r t=300

[Elise]「I guess it's finally time for me to die. I wanted to say some decent last words...but I can't think of anything.」

; REMOVED
;@bs f=sion@tuujou
; NEW
@move_f f=sion@tuujou in=l t=300

[Chiot]「Devil Iblis... I...」

@bs f=iris@bisyo body_op=yabure

; NEW
@bgm

[Elise]「Farewell... Chiot... Ohoho―」

@move_f f=iris@bisyo out=r t=300
@move_f f=sion@kanasimi out=l t=300

; NEW
@map_scroll dis=1 dir=d wt=0

;; Iris, extinction production
@anime num=604 wt=0
@anime num=605 wt=0
@wait t=500
@change num=8

@huki b=8 id=2

[Chiot]「N―No! Iblis!」

;; Background ■ Screen black
