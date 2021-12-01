
;; ● True Demon King Route (Fighting back to the hero)

;; Return to Demon Castle

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=19 y=23
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=null num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=right x=18 y=23
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=sonia_nowBody num=0
@move_speed id=11 spd=4
;;-------------------------------------
@dot_move id=11 dir=down x=19 y=13
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=null num=0
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=left x=20 y=23
;;*************************************

;; Change of clothes format
;;*************************************
@through id=13 type=on
@change id=13 f=zexy_nowBody num=0
@move_speed id=13 spd=4
;;-------------------------------------
@dot_move id=13 dir=down x=20 y=12
;;*************************************
@fade type=in t=250

@anime id=10 num=304 wt=0
@anime id=12 num=304 wt=0

@wait t=200
@flash t=300
@change id=10 f=iris_nowBody num=0
@change id=12 f=sion num=0

@huki id=12 b=8
@wait t=1200

@bgm f=dungeon10

@huki id=12 b=2
@move_f f=sion@tuujou in=r t=300

[Chiot]「―Oh, we're back already?!」

;; Sonia and Zexy appear

@dir id=10 dir=up
@dir id=12 dir=up

@move_f f=sonia@odoroki_hoho in=l t=300

[Sonia]「─Lord Chiot?! Welcome back!!!」

@move_f f=sonia@odoroki_hoho out=l t=300
@move_f f=sion@tuujou out=r t=300

@move_speed spd=6
@route route=up:10

@move_speed spd=5
@move_speed id=11 spd=5

@route route=down:10 wt=0
@route id=11 route=right,down:9

@dir id=10 dir=right

@move_f f=sonia@odoroki_hoho in=l t=300
@move_f f=sion@emi in=r t=300

@huki id=12 b=1
[Chiot]「Princess Sonia!」

@move_f f=sion@emi out=r t=300
; REMOVED
;@move_f f=iris@reisyo in=r t=300
; NEW
@move_f f=iris@kougeki1_hoho in=r t=300

@huki id=10 b=2
[Elise]「Hmph! Is Chiot the only one to return?」

@bs f=sonia@emi_hoho

@dir id=11 dir=left

@huki id=11 b=8
[Sonia]「Of course! Lady Elise, welcome back! Oh, I'm so glad to see you both are safe! Waaah～」

@bs f=sonia@kanasimi_hoho
;;@bs f=iris@kanasimi_hoho op2=ase
; NEW
@bs f=iris@kanasimi_hoho op2=ase

@huki id=10 b=6
[Elise]「What the hell are you crying for...!?」

@dir id=10 dir=up
@move_f f=sonia@kanasimi_hoho out=l t=300
@move_f f=zexy@bisyo_hoho in=l t=300

@huki id=13 b=8
[Zekushi]「Being kind-hearted is a good quality of the princess.」

@move_speed id=13 spd=6
@c_jump id=13 x=-1 y=4

@move_speed id=13 spd=3
@route id=13 route=down:5

@move_f f=iris@kanasimi_hoho out=r t=300
@move_f f=sion@emi in=r t=300

@dir id=10 dir=right

@huki id=12 b=8
[Chiot]「I agree, but worry no more, Princess. We came back safe and sound, like I promised.」

@move_f f=zexy@bisyo_hoho out=l t=300
; REMOVED
;@move_f f=sonia@kanasimi_hoho in=l t=300
; NEW
@move_f f=sonia@kuyasii_hoho in=l t=300

@huki id=11 b=8
[Sonia]「Waah～ Hmm. Yes... yes, I'm so glad, I really am... Waah～」

@move_f f=sion@emi out=r t=300
; REMOVED
;@move_f f=sonia@kanasimi_hoho out=l t=300
; NEW
@move_f f=sonia@kuyasii_hoho out=l t=300

;; Zion, Sonia, disappear
@fade type=out t=250
;;--------------------------------------------------
@dot_move id=11 dir=left x=20 y=7
@dot_move id=12 dir=right x=18 y=7

@dot_move id=10 dir=left x=20 y=23
@dot_move id=13 dir=right x=18 y=23
@wait t=2000
;;--------------------------------------------------
@fade type=in t=250

@move_f f=zexy@kanasimi in=l t=300

@huki id=13 b=2
[Zekushi]「So... Have you achieved the goal of your journey?」

@move_f f=iris@reisyo in=r t=300

@huki id=10 b=8
[Elise]「Hmph! Of course. What do you take me for? We were able to get TWO magic swords... and much quicker than expected.」

@bs f=zexy@kuyasii1

@huki id=13 b=2
[Zekushi]「Then, it's finally time...?」

@bs f=iris@bisyo

@huki id=10 b=8
[Elise]「Yes. Well... not before tomorrow. I want to get some rest now... I need to be in top form for the final battle.」

@bs f=zexy@bisyo

@huki id=13 b=8
[Zekushi]「I see. Well, I'm ready to go.」

@bs f=iris@kuyasii

@huki id=10 b=8
[Elise]「─Zekushi. Please, you must stay here.」

@bs f=zexy@odoroki op2=kettei

@huki id=13 b=1
[Zekushi]「Why... I want to fight too!」

@bs f=iris@kanasimi

@huki id=10 b=8
[Elise]「No can do. Without a magic sword, you'll only get in the way and get yourself killed.」

@bs f=zexy@kanasimi

@huki id=13 b=8
[Zekushi]「But...」

@bs f=iris@kuyasii

@huki id=10 b=8
[Elise]「If you stay here with the princess, you would give Chiot the peace of mind he needs to fight God without having to worry about the princess.」
[Elise]「Can you fulfill this mission for us...?\nTHIS is your battle.」

@huki id=13 b=7
[Zekushi]「Uh... Understood.」

@bs f=iris@bisyo

@huki id=10 b=8
[Elise]「Good.」

@bs f=zexy@kanasimi_hoho

@huki id=13 b=8
[Zekushi]「But... but you must come back alive, all right?!」

@bs f=iris@kanasimi_hoho

@huki id=10 b=8
[Elise]「Who do you think you are talking to, uh? I'm the Devil Iblis! And now that I have the Demon Blade, it's EVEN MORE impossible for me to lose.」

@bs f=zexy@bisyo

@huki id=13 b=8
[Zekushi]「... Okay, okay.」

@bs f=iris@bisyo

@huki id=10 b=8
[Elise]「I entrust Sonia to you then.」

@bs f=zexy@emi

@huki id=13 b=8
[Zekushi]「Leave it to me. Well then, I'm going to find Princess Sonia─」

@move_speed id=13 spd=3
@move_speed spd=3

@dir id=10 dir=up
@route id=13 route=up:2 wt=0
@route route=up:2

;; Zexy tries to go to Sonia

@bs f=iris@odoroki_hoho op2=ase

@huki id=10 b=6
[Elise]「No, wait... are you stupid?」

@dir id=13 dir=down
@bs f=zexy@odoroki

@huki id=13 b=1
[Zekushi]「Why are you calling me stupid?!」

@bs f=iris@emi_hoho op2=onpu

@huki id=10 b=8
[Elise]「Now's not the time to be her bodyguard. Leave her alone for the time being...」

@dir id=13 dir=up

@move_speed spd=6
@route route=up:13

@bs f=zexy@odoroki_hoho op2=kettei

@huki id=13 b=8
[Zekushi]「Oh... So that's why...」

@move_speed spd=6
@route route=down:13

@dir id=13 dir=down

@bs f=iris@ikari_hoho

@huki id=10 b=8
[Elise]「You're such an airhead, it's no wonder you got tricked by the high priest.」

@bs f=zexy@ikari_hoho op2=konwaku

@huki id=13 b=7
[Zekushi]「W─What does it have to do with this...?!」


@dir id=10 dir=down
@bs f=iris@bisyo

@huki id=10 b=8
[Elise]「Hahah... Well, I'm hungry now. Let's have fried squid... Deca-yaki, it is!」

@bs f=zexy@kanasimi_hoho op2=ase

@huki id=13 b=7
[Zekushi]「You heartless demon who can't shed blood nor tears. You'd even eat your own lovely pet...!」
; NOTE: she might be calling her being a white ghost because of the color of her hair.

@dir id=10 dir=up
@bs f=iris@emi

@huki id=10 b=8
[Elise]「I'm not A demon. I am THE Devil. Zekushi, come with me, we're going out for dinner.」

@bs f=zexy@kanasimi

@huki id=13 b=7
[Zekushi]「If it's fried squid, you can forget it.」

@dir id=10 dir=down
@bs f=iris@reisyo op2=onpu

@huki id=10 b=8
[Elise]「Then, let's have something else. Hmmm, I wonder what should we eat...」

@bs f=zexy@kuyasii1

@huki id=13 b=6
[Zekushi]「You're not cute at all...」

; NEW
@fade type=out t=4500 wt=0

@move_f f=iris@reisyo out=r t=300
@move_f f=zexy@kuyasii1 out=l t=300

@move_speed id=10 spd=2
@move_speed id=13 spd=2

@route id=10 route=down:3 wt=0
@route id=13 route=down:3 wt=0

;; Iris and Zexy disappear
