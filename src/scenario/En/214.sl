
;; ● True Demon King Route (Fighting back to the hero)

;; The castle room has returned to its original form
;; Awakening Iris

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=8 y=10
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=3 type=on
@change id=3 f=iris_nowBody num=2
@move_speed id=3 spd=3
;;-------------------------------------
@dot_move id=3 dir=down x=9 y=6
;;*************************************

;; Change of clothes format
;;*************************************
@through id=4 type=on
@change id=4 f=sion num=0
@move_speed id=4 spd=3
;;-------------------------------------
@dot_move id=4 dir=right x=8 y=6
;;*************************************

@wait t=500
@fade type=in t=1000

@bgm f=Town1

; NEW
@huki id=3 b=10 wt=1

@huki id=3 b=8
[Elise]「Hmm... Hmm......」

@move_f f=iris@kanasimi in=r t=300

@huki id=3 b=2
[Elise]「... Wh―Where am I...? Wait...\nIsn't this... my bedroom?!」

@move_f f=sion@tuujou in=l t=300

@huki id=4 b=2
[Chiot]「Are you awake?」

@move_f f=iris@kanasimi out=r t=300
@move_f f=sion@tuujou out=l t=300

; REMOVED
;@huki id=3 b=1
; REMOVED
;@wait t=1200
; NEW
@wait t=1000

; NEW
@huki id=3 b=1 wt=0

; NEW
@wait t=500

@change id=3 f=iris_nowBody num=0
; REMOVED
;@route id=3 route=left wt=0
; NEW
@dir id=3 dir=l wt=0
; NEW
@c_jump id=3 x=-1 wt=0
@fb id=4 dir=back

; NEW
@wait t=500

@huki id=3 b=8
@wait t=1200

@move_f f=iris@odoroki in=r t=300

@huki id=3 b=1
[Elise]「Chiot...? Wh-Where is God?! What happened?!!」

@move_f f=sion@kanasimi in=l t=300

@huki id=4 b=2
[Chiot]「Calm down, Elise. You defeated Him. Don't you remember...?」

@huki id=3 b=2
[Elise]「I... did? God is dead then...?」

@bs f=sion@tuujou

@huki id=4 b=8
[Chiot]「Yes. Before falling unconscious, you used up all your powers to defeat Him...」

@move_f f=iris@odoroki out=r t=300
@move_f f=sion@tuujou out=l t=300

@huki id=3 b=8
@wait t=1200

@move_f f=iris@odoroki_hoho in=r t=300

@huki id=3 b=1
[Elise]「Ack... Don't tell me...!」

@bs f=iris@kanasimi op2=konwaku

@huki id=3 b=7
[Elise]「Ugh... It's true, I feel like all my powers are gone...」

; NEW
@huki id=3 b=1 wt=0

; NEW
@bs f=iris@odoroki op2=kettei
[Elise]「... HAVE I REALLY LOST ALL MY POWERS AGAIN?!」

@move_f f=sion@kanasimi in=l t=300

@huki id=4 b=8
[Chiot]「It's good just to be alive though, isn't it? And you've managed to defeat God... I thought that you'd be happy...」

@bs f=iris@kanasimi_hoho

@huki id=3 b=8
[Elise]「Well yeah, I'm glad that I could get rid of that annoying god but... without my powers, I can no longer return to the demon realm.」

@bs f=sion@emi 

@huki id=4 b=3
[Chiot]「―Exactly!」

@bs f=iris@ikari

@huki id=3 b=7
[Elise]「... What are you so excited about?!」

@bs f=sion@tere

@huki id=4 b=2
[Chiot]「Oh... am I?」

@move_f f=iris@ikari out=r t=300
@move_f f=sion@tere out=l t=300

@dir id=4 dir=down
@route id=3 route=down:2

@huki id=3 b=8
@wait t=1200

@dir id=3 dir=up

@move_f f=iris@kuyasii in=r t=300

@huki id=3 b=2
[Elise]「... Were you staying by my side during all this time... while I was unconscious?」

@move_f f=sion@kanasimi in=l t=300

@huki id=4 b=2
[Chiot]「Oh? No, not all the time... We took turns...」

@bs f=iris@ikari_hoho

@huki id=3 b=3
[Elise]「Sexually harassing Hero.」

@move_f f=iris@ikari_hoho out=r t=300
@move_f f=sion@kanasimi out=l t=300

@huki id=4 b=7
@wait t=1200

; REMOVED
;@move_f f=sion@tuujou in=l t=300
; NEW
@move_f f=sion@ikari1 in=l t=300

@huki id=4 b=7
[Chiot]「N―No! I would never... I did nothing inappropriate...!」

@bs f=sion@emi
[Chiot]「O―Oh, wait... I should let everyone know that you finally woke up!」

@move_f f=iris@ikari_hoho out=r t=300
; REMOVED
;@move_f f=sion@tuujou out=l t=300
; NEW
@move_f f=sion@emi out=l t=300

@move_speed id=4 spd=4
@route id=4 route=down:4,left,down:4 wt=0


