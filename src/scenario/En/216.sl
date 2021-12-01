
;; ● True Demon King Route (Fighting back to the brave)

;; SE ■ Celebration fanfare
@bgm
@se f=fanfare5

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=21 y=22
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=iris_nowBody num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=up x=21 y=41
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=sonia_nowBody num=0
@move_speed id=11 spd=4
;;-------------------------------------
@dot_move id=11 dir=down x=21 y=39
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=sion num=0
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=down x=20 y=39
;;*************************************

;; Change of clothes format
;;*************************************
@through id=13 type=on
@change id=13 f=zexy_nowBody num=0
@move_speed id=13 spd=4
;;-------------------------------------
@dot_move id=13 dir=down x=22 y=39
;;*************************************

@fade type=in t=250

;;47：
;; Iris, Zion, Sonia, Zexy there is

@bgm f=Town4

@move_speed spd=4
@route route=down:19

@move_f f=sonia@kanasimi in=l t=300

@huki id=11 b=8
[Sonia]「Do you really have to go, Lady Elise?」

@move_f f=iris@bisyo in=r t=300

@huki id=10 b=8
[Elise]「Yes, in order to get back my original powers.」

@bs f=sonia@kanasimi_hoho

@huki id=11 b=8
[Sonia]「Peace has finally returned to this world, but we already have to say goodbye so soon...」

@bs f=iris@reisyo

@huki id=10 b=2
[Elise]「Shouldn't you feel more at ease with me gone from this world?」

@bs f=sonia@odoroki_hoho

@huki id=11 b=1
[Sonia]「N―no!」

@bs f=iris@emi

@huki id=10 b=3
[Elise]「We'll meet again someday, though you might regret ever meeting me in the first place. Hehehe～♪」」

@bs f=sonia@kanasimi_hoho

@huki id=11 b=8
[Sonia]「I won't. I'll be waiting for you, no matter how long, Lady Elise.」

@bs f=iris@kuyasii

@huki id=10 b=8
[Elise]「Oh, before I forget... I should set you free...」

@move_speed id=10 spd=3
@fb id=10 dir=for

@huki id=10 b=8
@wait t=1200

@bs f=iris@kougeki1

@huki id=10 b=1
[Elise]「In the name of the Devil Elise, release Sonia from this curse...」
[Elise]『\$SKILL[Slave Unbind!]』

@anime id=10 num=652

;; Curse magic activation

@anime id=11 num=653

@bs f=iris@bisyo

@fb id=10 dir=back

@huki id=10 b=2
[Elise]「Well, how are you feeling now? Did it work...?\nI don't have much power left...」

@bs f=sonia@emi

@huki id=11 b=8
[Sonia]「Yes, I think so... thank you, Lady Elise!」

@bs f=iris@kanasimi op2=ase

; REMOVED
;@huki id=10 b=7
; NEW
@huki id=10 b=6

[Elise]「Uh, are you really, REALLY sure that you're back to normal...?」
; NEW
@bs f=iris@bisyo
[Elise]「Well then, I better get going. Zekushi, you know what you have to do, right?」

@move_f f=sonia@emi out=l t=300
@move_f f=zexy@emi in=l t=300

@huki id=13 b=8
[Zekushi]「I know.」

@bs f=iris@emi

@huki id=10 b=8
[Elise]「Chiot, look after yourself and Sonia.」

@move_f f=zexy@emi out=l t=300
@move_f f=sion@emi in=l t=300

@huki id=12 b=8
[Chiot]「I will, you too.」

@bs f=iris@bisyo

@huki id=10 b=8
[Elise]「Well, that's it then...」

@move_f f=sion@emi out=l t=300
@move_f f=sonia@kanasimi in=l t=300

@huki id=11 b=8
[Sonia]「Be very careful on your journey!」

@move_f f=sonia@kanasimi out=l t=300
@move_f f=iris@bisyo out=r t=300

@move_speed id=10 spd=3
@route id=10 route=down:10 wt=0

@fade type=out t=1000
@wait t=2000
;; Iris leaving the castle
