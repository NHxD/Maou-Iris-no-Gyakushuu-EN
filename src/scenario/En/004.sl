
;; ■ Devil Castle (Prologue)

@bgm f=battle5


@c_jump id=8 x=0 y=0

@c_jump id=8 x=0 y=0

[Sela]「Ah! You did it! My Hero! ♥」

@c_jump id=9 x=0 y=0

[Mileena]「Oh, my Chiot! ♥ I knew you could do it! ♥」

[Grace]「That's my handsome Hero! ♥」



@c_jump id=8 x=0 y=-2 wt=0
@c_jump id=9 x=1 y=-2 wt=1
@dir id=8 dir=r
@dir id=9 dir=l
@huki b=1 id=7
@route id=10 route=l,u wt=0

; NEW
@huki id=7 b=1

[Chiot]「Thank you. Oh― Aaah... Mileena, Sela. You really don't have to hug me so tight...」

; NEW
@dir id=7 dir=r

[Chiot]「Hey, Mileena! Could you please stop pushing your breasts against my face...?! I can't breathe!!!」


;; //☆☆☆ Ruby function is not working

@huki b=4 id=8
@dir id=7 dir=l

[Sela]「Teehee ♥ You are my Hero ♥」

@huki b=5 id=9
@dir id=7 dir=r

[Mileena]「Grrr... Sela! Stay away from Chiot, he's mine!」

@huki b=5 id=8
; REMOVED
;@dir id=7 dir=r
; NEW
@dir id=7 dir=l

[Sela]「Hey, you're the bitch trying to seduce him with your shameless attire!」

@huki b=1 id=7
@dir id=7 dir=d

; REMOVED
;@huki b=1 id=7
; REMOVED
;@dir id=7 dir=d

[Chiot]「Stop it, you two! Grace, please...\nDon't just stand there and watch... Help me!」

; NEW
;@huki id=10 b=3

[Grace]「Hoho～ Enjoy it while you still can ♥\nI shall join in this women's quarrel...\nFor the princess is not here ♪」

@huki b=7 id=7

;;@bs f=sion@tere_hoho

[Chiot]「Oh, please let me go already...\nWe must return to the royal castle at once!」

;;@move_f f=sion@tere_hoho out=l t=300

@bgm

;; The heroes leave the castle while flirting on the sidelines.

;;　………………………………

;;　……………………

;;　…………
