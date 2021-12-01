
;; ● True Demon King Route (Fighting back to the hero)
;; next morning. Screen change
;; Iris, Zion, Sonia, Zexy

@bgm f=Scene6

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=19 y=7
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=iris_nowBody num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=down x=19 y=6
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=sonia_nowBody num=0
@move_speed id=11 spd=4
;;-------------------------------------
@dot_move id=11 dir=up x=19 y=9
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=sion num=0
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=right x=17 y=7
;;*************************************

;; Change of clothes format
;;*************************************
@through id=13 type=on
@change id=13 f=zexy_nowBody num=0
@move_speed id=13 spd=4
;;-------------------------------------
@dot_move id=13 dir=left x=21 y=7
;;*************************************

@fade type=in t=250

@move_f f=iris@bisyo in=r t=300

[Elise]「... Then, are you ready, stupid Hero?」

@move_f f=sion@kanasimi in=l t=300

@dir id=12 dir=up
@dir id=13 dir=up
@dir id=11 dir=up
[Chiot]「Why are you so mean to me?! Last night were my honest feelings.」

@move_f f=sion@kanasimi out=l t=300
@move_f f=sonia@odoroki in=l t=300

[Sonia]「Last night? Wh―What happened?!!」

@bs f=iris@reisyo

[Elise]「Sexual harassment.」

@move_f f=sonia@odoroki out=l t=300
@move_f f=zexy@odoroki in=l t=300

[Zekushi]「Sexual harassment?! Elise assaulted Chiot?!」

@bs f=iris@ikari_hoho

[Elise]「Wh―Why would I do that, idiot?! The stupid Hero did it to me.」

@move_f f=zexy@odoroki out=l t=300
@move_f f=sonia@odoroki_hoho in=l t=300

@dir id=13 dir=down
@dir id=12 dir=right
@dir id=11 dir=left
[Sonia]「L―Lord Chiot?!」

@move_f f=sonia@odoroki_hoho out=l t=300
@move_f f=sion@ikari2 in=l t=300

; NEW
@dir id=13 dir=left

[Chiot]「No, she's lying! I never sexually harassed her! I was just─」

@bs f=iris@emi op2=onpu

@dir id=12 dir=up
@dir id=11 dir=up
[Elise]「You were so natural, in that place...」

@bs f=sion@tere

[Chiot]「... Uh?」

@bs f=iris@syuuti_hoho

[Elise]「Oh, just thinking back at what I was told yesterday makes be blush...」

@move_f f=sion@tere out=l t=300
@move_f f=sonia@odoroki_hoho in=l t=300

@dir id=12 dir=up
@dir id=11 dir=up
[Sonia]「Well then, there's no doubt about it...\nHero Chiot DID sexually harass Lady Elise?!!」

@move_f f=sonia@odoroki_hoho out=l t=300
; REMOVED
;@move_f f=sion@tuujou in=l t=300
; NEW
@move_f f=sion@ikari2 in=l t=300

[Chiot]「Wait... no, I said that I did NOT sexually harass her!!!」

@bs f=iris@reisyo_hoho op2=onpu

@dir id=12 dir=up
@dir id=11 dir=up
[Elise]「Pervert.」

@bs f=sion@tere_hoho

[Chiot]「Oh, stop it, Elise! I feel like I'm being toyed here...」

@move_f f=sion@tere_hoho out=l t=300
@move_f f=zexy@emi_hoho in=l t=300

; NEW
@dir id=12 dir=r

[Zekushi]「You're blushing like a red apple, sexually harassing Hero.」
; NOTE: I like the original translation because elves should reference nature (e.g., apples).

@move_f f=zexy@emi_hoho out=l t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「What?! S―Sexually harassing Hero?!」

@bs f=iris@kuyasii

[Elise]「Tsk... The final battle against God is fast approaching, and look at what the lot of you are talking about.」

@bs f=sion@ikari1

[Chiot]「Isn't it all your fault though?!!」

@bgm f=Theme1

@move_f f=sion@ikari1 out=l t=300
@move_f f=sonia@bisyo in=l t=300

[Sonia]「Hihihi～ I wish that I could go with you...」

@bs f=iris@bisyo

[Elise]「Don't worry. We'll be back soon. Zekushi...」

@move_f f=sonia@bisyo out=l t=300
@move_f f=zexy@bisyo in=l t=300

[Zekushi]「I know. Even if angels find this place and attack us here, I will protect Princess Sonia.」

@bs f=iris@emi

[Elise]「Thank you. Let's get going then, Chiot.」

@move_f f=iris@emi out=r t=300
@move_f f=sion@tuujou in=r t=300

[Chiot]「Ah... Goodbye!」

@move_f f=zexy@bisyo out=l t=300
@move_f f=sonia@emi in=l t=300

[Sonia]「Good luck and be careful!」

@move_f f=sion@tuujou out=r t=300
@move_f f=sonia@emi out=l t=300

@move_f f=iris@bisyo out=r t=300
@move_f f=sion@reisei out=l t=300

@anime id=10 num=652

@anime id=10 num=653 wt=0
@anime id=12 num=653

@anime id=10 num=304 wt=0
@anime id=12 num=304 wt=0

@wait t=200
@flash t=300
@change id=10 f=null num=0
@change id=12 f=null num=0

@wait t=1000

;; Iris and Zion are sent off by the princesses and leave the Demon Castle
;; Start moving

