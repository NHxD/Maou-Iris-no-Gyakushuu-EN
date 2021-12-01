
;; ■ A Forest near Royal Castle
;; ● Royal Route
;;28：

@bgm f=Ship3

@move_f f=zexy@odoroki in=l t=300

[Zekushi]「I cannot...lose. I must defeat you...to save the Elven―」

@move_f f=iris@kuyasii in=r t=300

[Elise]「Tsk... Well, it's true that I will conquer the world...」
[Elise]「However, I can assure you that I have absolutely no intention of killing any elves.」

@bs f=iris@ikari

[Elise]「The oracle that was given to you is just garbage. Ugh... It's so annoying.」

@bs f=zexy@kuyasii1

[Zekushi]「B―But it cannot be!」

@bs f=iris@reisyo

[Elise]「Well, tell me all about that so-called oracle you've received from God.」

@bs f=zexy@odoroki

[Zekushi]「I―I'll never tell you!」

@bs f=iris@odoroki_hoho

[Elise]「Oh really, so you're not willing to tell me?」

@bs f=zexy@ikari_hoho

[Zekushi]「O―Of course, I won't!」

; REMOVED
;@bs f=iris@kanasimi_hoho
; NEW
@bs f=iris@takawarai_hoho

[Elise]「Well, it can't be helped then. I'll compel you to tell me everything with just this one little curse, are you ready? Ohoho―」

@bgm

@bs f=iris@odoroki op2=kettei
@huki b=1

[Elise] (Oh... Someone is coming...)

@move_f f=zexy@ikari out=l t=300

@bgm f=battle7

;; Zion Appears
@route id=3 route=d:9 wt=0

[Chiot]「Oh, princess! You are safe!」

@move_f f=sonia@odoroki in=l t=300

[Sonia]「Lord Chiot!」

@move_f f=sonia@odoroki out=l t=300
@wait t=300

; NEW
@c_jump wt=0
; NEW
@huki b=1 wt=1

@route route=u:2 wt=1
@dir dir=l wt=1
@bs f=iris@ikari

[Elise]「Hero Chiot!!!」

@dir id=3 dir=r wt=1
@move_f f=sion@tuujou in=l t=300

[Chiot]「Uh?!」

; REMOVED
;@bs f=iris@reisyo_z body_op=z
; NEW
@zoom_f f=iris@reisyo_z src=iris@ikari in=r t=300

[Elise]「Ohohoho～♪ Are you surprised, Hero Chiot?! We finally meet again!」

@bgm

; REMOVED
;@bs f=iris@reisyo
; NEW
@zoom_f f=iris@reisyo src=iris@reisyo_z out=r t=300

@huki id=3 b=2

[Chiot]「I'm sorry but...who are you?」

@bgm f=Scene2

;; Iris stunned
@huki id=3 b=8

@bs f=iris@odoroki_hoho

[Elise]「W―What?! But you know who I am!」

@move_f f=sonia@yowaki in=c t=300

[Sonia]「Ah... Well...」

@move_f f=sonia@yowaki out=l t=300
@bs f=iris@reisyo_hoho

[Elise]「Ohohoho～♪ You are so brave to pretend to have forgotten about me...」

@move_f f=sonia@yowaki out=l t=300
@bs f=sion@tuujou

[Chiot]「Uh... Have we met before?」

@bs f=iris@kuyasii_hoho

[Elise]「Have you really already forgotten about me?! I'm Devil Eli――no, no... Devil Iblis!」

[Chiot]「W―What?! You're saying that you're the Devil Iblis... You?!」

@bs f=sion@kanasimi

[Chiot]「No, it cannot be! Although I heard some rumors back in the castle... But how could I ever believe that a little girl like you is the Devil?」

@bs f=iris@ikari_hoho

[Elise]「Hmph! That does it! Well... How about THIS?!」

; REMOVED
;@move_f f=iris out=r t=300
; NEW
@move_f f=iris@ikari_hoho out=r t=300 wt=0

; REMOVED
;@move_f f=sion out=l t=300
; NEW
@move_f f=sion@kanasimi out=l t=300

;; Iris releases negative aura
@anime num=209

@move_f f=sion@ikari1 in=l t=300

[Chiot]「Woah! This evil aura... This is the same dark magic that the Devil used!」

@move_f f=iris@reisyo in=r t=300

[Elise]「Ohohoho～♪ You finally believe me?」

@bs f=sion@reisei

[Chiot]「Well... It's the same kind of magic... but yours is certainly a lot weaker.」

@bs f=iris@ikari op2=kettei

[Elise]「―Gah!」

@bs f=iris@kuyasii op2=ase

[Elise] (He could see right through my weakened strength instantly! Tsk... Even so, I'll show him who's stronger now...)

; REMOVED
;@bs f=iris@kougeki2_z body_op=z
@zoom_f f=iris@kougeki2_z src=iris@kuyasii in=r t=300

[Elise]「All right, let's settle this, right here, right now, Hero Chiot!」

@move_f f=iris@kougeki2_z out=r t=300
; REMOVED
;@move_f f=sion out=l t=300
; NEW
@move_f f=sion@reisei out=l t=300

;; Event Battle: Zion
;; * When 5 or more turns have passed, you are forcibly defeated by a hero's special move.
