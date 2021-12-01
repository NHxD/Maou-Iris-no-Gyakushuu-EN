
;; ■ Oak Forest / Orc Settlement
;; ● Branch: Victory

;;[レッドオーク]「ぎゃああああああああぁ！！」

@move_f f=iris@kuyasii in=r t=300

[Elise]「An elite orc begging for mercy. How shameful.」

@bgm f=Airship
@huki b=3
@bs f=iris@bisyo

[Elise]「Tsk... I couldn't get my hands on a strong demon in the end.」

[Elise]「Oh well, I better head back to the village to get my reward, at least.」

@dir dir=u
@huki id=10 b=8
; NEW
@c_jump id=10
@bs f=iris@odoroki

[Married Woman]「Oh! Thank you so, so very much!」

@huki id=15 b=8
; NEW
@c_jump id=15

[Girl 1]「I was so scared!」

@huki id=11 b=8
; NEW
@c_jump id=11

[Girl 2]「Please don't leave us here. Take us with you. Please!」


@bs f=iris@kanasimi

[Elise]「Wow, I had completely forgotten that you were here.」

@bs f=iris@kuyasii
@huki b=8 wt=1
@bs f=iris@kougeki1

[Elise]「Ah right, the village chief asked me to return you to your village.」

[Elise]「Fine. You all come with me.」

@huki id=10 b=1

; NEW
@route id=10 route=d:1 spd=5 wt=1

[Married Woman]「Oh! Thank you! I'll never forget your kindness.」

;; BUGFIX: the girls couldn't move further down because of the orcs.
@through id=15 type=on
@through id=11 type=on

@huki id=15 b=1
@huki id=11 b=1
@route id=11 route=d:2 spd=5 wt=0
@route id=15 route=d:2 spd=5 wt=1
@dir id=15 dir=r
@dir id=11 dir=l

[Girls]「Thanks!」

;; WORKAROUND: pull Elise towards the girls.
@dir dir=u spd=5

@huki b=6
@bs f=iris@odoroki
[Elise]「Wait... Why are you squeezing me all of a sudden?!」

@huki b=7
@bs f=iris@syuuti

@huki b=7
[Elise]「Tsk... Why I, the Devil, is saving some pathetic humans? Dammit.」

;; ※ Dark→Forced move to the village

@move_f f=iris@odoroki_hoho out=r t=300

@bgm
