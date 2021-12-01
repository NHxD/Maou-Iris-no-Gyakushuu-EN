
;; ● True Demon King Route (Fighting back to the hero)
;; Succeed in defeating the hero

@anime id=1 num=657 wt=0
@huki id=10 b=1

@wait t=250

@move_speed id=10 spd=6
@walk_anime id=10 type=off

@flash t=300
@route id=10 route=up:2

@huki id=1 b=1

@se f=Sword2
@qk
@flash t=300

@wait t=500


@se f=Blow4
@huki id=1 b=1

@walk_anime id=1 type=off
@dir_fix id=1 type=on
@move_speed id=1 spd=6
@route id=1 route=up:2
@se f=Blow7

@huki id=1 b=1
@anime id=10 num=652

@move_speed id=1 spd=5
@walk_anime id=1 type=on
@dir_fix id=1 type=off

@anime id=10 num=653 wt=0
@wait t=100
@route id=1 route=down:2
@dot_move id=11 dir=down x=20 y=11
@anime id=11 num=662 wt=0

@dir_fix id=1 type=on
@walk_anime id=1 type=off
@c_jump id=1 y=-1

@qk
@se f=Blow6
@change id=1 f=sion num=1

@huki id=1 b=7
@wait t=1000
@change id=1 f=sion num=0

@wait t=1000
@huki id=1 b=1
@se f=Blow6
@change id=1 f=sion num=1

@wait t=500

@bgm f=battle5
@move_f f=sion@kanasimi in=l t=300

[Chiot]「Aargh?! How come...」

@move_f f=iris@emi_hoho in=r t=300

[Elise]「Hehehe... Finally... I finally defeated that stupid hero!」

@bs f=sion@ikari1

[Chiot]「No... It can't be! Not here... not now...」

@move_f f=iris@emi_hoho out=r t=300
@move_f f=sion@ikari1 out=l t=300

@walk_anime id=1 type=on
@walk_anime id=10 type=on

@move_speed id=10 spd=3
@route route=up wt=0
@route id=10 route=up
@se f=剣構え01
@huki id=10 b=8
@wait t=1000
;;Iris thrusts his sword at Zion

@move_f f=iris@reisyo in=r t=300

[Elise]「Why don't you try begging me to spare your pitiful life? The proud Hero wailing like a wounded dog... Ohohoho～♪」

@move_f f=sion@ikari1 in=l t=300

[Chiot]「―Ngh?!」

@move_f f=iris@reisyo out=r t=300
@move_f f=sion@ikari1 out=l t=300

;;Sonia appears
@bgm

@huki id=10 b=1
@huki id=1 b=1
@dir id=10 dir=down wt=0

@move_f f=sonia@odoroki in=l t=300

[Sonia]「No! Please stop, Lady Elise!」

@move_f f=sonia@odoroki out=l t=300

;;----------------------------------------------
;; Sonia change clothes

;;Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=sonia_nowBody num=0
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=up x=20 y=19
;;*************************************

;;----------------------------------------------
@move_speed spd=5
@route route=down:8

@move_f f=iris@odoroki in=r t=300

[Elise]「Sonia...?」

@move_f f=sion@tuujou in=l t=300

[Chiot]「P―Princess?!」

@move_f f=iris@odoroki out=r t=300
@move_f f=sion@tuujou out=l t=300

@move_speed spd=4
@route id=12 route=up:6 wt=0
@route route=up:8

@move_f f=sonia@odoroki in=l t=300
@move_f f=iris@odoroki in=r t=300

@bgm f=dungeon5

[Sonia]「I beg you! Please don't take Lord Chiot's life! He's indispensable for the people of this country... and he's really important to me too!」

@huki id=1 b=1
@bs f=sonia@kanasimi

[Sonia]「I don't think taking my life will lessen your anger... But if you must kill someone... Please spare Lord Chiot's life and take mine instead!」

@bs f=iris@kanasimi

[Elise]「You...what...」

@move_f f=sonia@kanasimi out=l t=300
@move_f f=iris@odoroki out=r t=300

@wait t=250
@change id=1 f=sion num=0
@wait t=250

@move_f f=iris@odoroki in=r t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「No, princess! Listen, listen to me, Devil!」

@dir id=10 dir=up

[Chiot]「... I don't care whatever you do to me! But you must swear that you won't harm the princess nor the residents of this country!」

@bs f=iris@odoroki_hoho op2=kyohi

[Elise]「I'm the winner here, okay? So why do you think I will agree to any of your dumb requests?」

[Chiot]「Please! Please, promise me! Please... I beg you!」

@move_f f=sion@tuujou out=l t=300
; REMOVED
;@move_f f=sonia@odoroki_hoho_z body_op=z in=l t=300
; NEW
@move_f f=sonia@odoroki_hoho_z body_op=z in=c t=300

[Sonia]「Lord Chiot!」

@move_f f=sonia@odoroki_hoho_z out=l t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「I beg you, Devil!」

@huki id=10 b=8
@bs f=iris@kuyasii

[Elise]「...」

@move_f f=sion@tuujou out=l t=300
@move_f f=sonia@kanasimi_hoho in=l t=300

[Sonia]「Lady Elise, please! Don't take Lord Chiot away from me!」

@move_f f=sonia@kanasimi_hoho out=l t=300
@move_f f=sion@kanasimi in=l t=300

[Chiot]「Princess! Devil, I beg you! Please... Please...」

@move_f f=sion@kanasimi out=l t=300
@move_f f=iris@kuyasii out=r t=300

@huki id=10 b=8
@wait t=1200

@bgm

@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「... Pathetic.」

@move_f f=sonia@odoroki_hoho in=l t=300

[Sonia]「Lady Elise?」

; REMOVED
;@bs f=iris@kanasimi_z body_op=z
; NEW
@zoom_f f=iris@kanasimi_z src=iris@kuyasii_hoho in=r t=300

[Elise]「... I wondered if I could make the man who once let me, the Devil, go through the humiliation of being defeated, kneel and beg me.」

; REMOVED
;@bs f=iris@kuyasii
; NEW
@zoom_f f=iris@kuyasii src=iris@kanasimi_z out=r t=300

[Elise]「At that time I was just too careless and when you defeated me... I felt sad. Hmph!」

@move_f f=sonia@odoroki_hoho out=l t=300
@move_f f=iris@kuyasii out=r t=300

;; Iris, put the sword in.
@se f=剣構え01
@wait t=500


@route id=10 route=down:3 wt=0
@route route=down:3 wt=0

@wait t=300
@dir id=12 dir=left wt=0
@fb id=12 dir=back
@dir id=12 dir=down wt=0

@huki id=10 b=8
@wait t=1000

@move_f f=iris@kuyasii in=r t=300
@move_f f=sion@kanasimi in=l t=300

[Chiot]「Iblis...」

@move_f f=sion@kanasimi out=l t=300
@move_f f=sonia@bisyo_hoho in=l t=300

[Sonia]「Lady Elise!」

@huki id=10 b=8
@bs f=iris@kanasimi op2=konwaku

[Elise] (This is so surreal... Only a short while ago, I would definitely have dealt the final blow already...)
[Elise] (But right now...? I'm really not in the mood to do that anymore...)


@move_f f=sonia@bisyo_hoho out=l t=300
@move_f f=iris@kanasimi out=r t=300

@huki id=10 b=8
@wait t=1200

@bgm f=Theme2
@move_f f=iris@kanasimi_hoho in=r t=300

[Elise]「... Well, I'm leaving.」

@huki id=1 b=1
@move_f f=sion@kanasimi in=l t=300

[Chiot]「... Uh? How... Why?」

@dir id=10 dir=up
; REMOVED
;@bs f=iris@bisyo_z body_op=z
; NEW
@zoom_f f=iris@bisyo_z src=iris@kanasimi in=r t=300

[Elise]「Well, I've had so many adventures just to find you, that... I might have changed a little bit since then.」

; REMOVED
;@bs f=iris@bisyo
; NEW
@zoom_f f=iris@bisyo src=iris@bisyo_z out=r t=300

@move_f f=sion@kanasimi out=l t=300
@move_f f=sonia@emi_hoho in=l t=300

[Sonia]「Lady Elise...」

@bs f=iris@kanasimi_hoho

[Elise]「If I kill you now... I feel like I will lose the zeal to conquer this world.」
[Elise]「Well, now I wonder if maybe it's not time for me to return to the demon realm...」

@move_f f=sonia@emi_hoho out=l t=300
@move_f f=sion@kanasimi in=l t=300

[Chiot]「... Iblis.」

@dir id=10 dir=up
@bs f=iris@kanasimi op2=hatena

[Elise]「What's with that face...?」

[Chiot]「Ah... because of the oracle I received from God, I tried to defeat the Devil... But we should have never fought at all.」

@bs f=iris@odoroki op2=kyohi

[Elise]「... Are you stupid?」

@bs f=sion@tuujou

[Chiot]「... Ah?」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@odoroki out=r t=300

@route route=up:3 wt=0
@route id=10 route=up:3
@dir id=12 dir=up wt=0

@huki id=10 b=8
@wait t=1000

@move_f f=sion@tuujou in=l t=300
@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Only a short while ago, I would have certainly have killed you, but today I let you live just on a whim... so you... you better remember this!」

;; Iris glaring at Zion

@bgm f=Town4

@bs f=iris@ikari
@bs f=sion@tere_hoho

[Chiot]「Hey, wait, wait... You're too close!」

@bs f=iris@ikari_hoho

[Elise]「Too close? We were this close so many times during our battle just now. You weirdo!」

@bs f=sion@emi

[Chiot]「Ah, no... Ah～ahah... Well, anyway... It's really a relief that I no longer have to fight such a cute Devil.」

@move_f f=sion@emi out=l t=300
@move_f f=sonia@emi in=l t=300

[Sonia]「Hihihi～」

@huki id=10 b=2
@dir id=10 dir=down
@bs f=iris@odoroki op2=hatena

[Elise]「What are you laughing at, Sonia?」

[Sonia]「Oh... No, nothing! Hihi～」

@move_f f=sonia@emi out=l t=300
@move_f f=sion@emi in=l t=300

[Chiot]「Haha... Ahahahaha...」

@bs f=iris@odoroki_hoho op2=konwaku

[Elise] (Hmm... What... what is this warm feeling? I'm not ashamed or anything, so why...?!)

@huki id=10 b=6
[Elise]「Hey, hey, both of you...cut it out before I change my mind―)

@bgm

@move_f f=sion@emi out=l t=300
; REMOVED
;@move_f  f=iris@odoroki_hoho out=r t=300
; NEW
@move_f f=iris@odoroki_hoho out=r t=300

@huki id=1 b=1
@huki id=10 b=1
@huki id=12 b=1


@dir id=1 dir=down wt=0
@dir id=10 dir=down wt=0
@dir id=12 dir=down

;; Change of clothes format
;;*************************************
@through id=34 type=on
@change id=34 f=Evil num=2
@move_speed id=34 spd=4
;;-------------------------------------
@dot_move id=34 dir=up x=20 y=19
;;*************************************

;;@bs f=sonia@yowaki

[???]「Hahahahah! The Devil and the Hero warmly laughing together right after trying to kill each other. What a shameful display!」

@move_speed spd=5
@route route=down:7

@wait t=500

@move_f f=iris@odoroki in=r t=300
@move_f f=sion@tuujou in=l t=300

; REMOVED: chiot is moved last so he's in front, yet it's elise who's talking...
;[Elise]「Who...?!」
; NEW
[Chiot]「Who...?!」

@move_f f=iris@odoroki out=r t=300
@move_f f=sion@tuujou out=l t=300

;;36：
;; Appearance of the Great Priest
@bgm f=Scene2

@move_speed spd=3
@move_speed id=34 spd=3
@route id=34 route=up:4 wt=0
@route route=up:6

[Grand Justice]「You can't. There shall be no reconciliation between the Hero and the Devil. God shall never allow such an unholy union.」

@move_f f=iris@odoroki in=r t=300
@move_f f=sonia@odoroki in=l t=300

[Sonia]「High priest...?」

@move_speed id=10 spd=3
@route id=10 route=down
@bs f=sonia@yowaki
@bs f=iris@kuyasii

[Elise]「Hmm... I really wonder how you managed to survive... you're quite the tenacious little bug. But hey, I had something to ask you anyway.」

@huki id=10 b=2
@bs f=iris@ikari

[Elise]「What is exactly the plan of your so-called god?」

[Grand Justice]「Hehe... Hehehe! God plans nothing! God just banishes all evil!」

@bs f=iris@kuyasii

[Elise]「Tsk.」


@move_f f=sonia@yowaki out=l t=300
@move_f f=iris@kuyasii out=r t=300

@move_speed spd=4
@route route=down:3
@huki id=34 b=8
@wait t=1200

[Grand Justice]「God wants to build a paradise with only good and kind persons. To that end, I carefully prepared and put the chess pieces in their place.」
[Grand Justice]「This pawn was supposed to destroy the Devil... but the so-called Hero turned out to be a complete failure, after all.」

;;37：

@move_speed spd=5
@route route=up:5

@move_f f=sion@tuujou in=l t=300

[Chiot]「Wha...?!」

[Grand Justice]「I gave you the oracle to kill the Devil. Why then am I seeing you enjoying her company? It seems that you've been tainted by evil.」


@bs f=sion@kanasimi

[Chiot]「Why... if I am just a pawn to God.... then what did my companions fight and die for....」

@move_f f=sion@kanasimi out=l t=300

;; Zion falls down to his knees.
@huki id=12 b=1
@dir id=12 dir=up wt=0
@dir id=10 dir=up

@wait t=500

@move_f f=sion@kanasimi in=l t=300
@move_f f=sonia@odoroki_hoho in=r t=300

[Sonia]「Chiot, oh dear Chiot...」

@move_f f=sion@kanasimi out=l t=300
@move_f f=sonia@odoroki_hoho out=r t=300

@wait t=250

@move_speed id=12 spd=5
@route id=12 route=up:3
@dir id=12 dir=left

@wait t=250

@move_f f=sion@kanasimi in=l t=300
@move_f f=sonia@odoroki_hoho in=r t=300

[Chiot]「I've been fooled... controlled... manipulated.」

@move_f f=sion@kanasimi out=l t=300
@move_f f=sonia@odoroki_hoho out=r t=300

@move_speed spd=3
@route route=down:2

@huki id=10 b=8
@wait t=1200

@bgm f=Theme1

@dir id=10 dir=down
; REMOVED
;@move_f f=iris@ikari_z body_op=z in=r t=300
; NEW
@move_f f=iris@ikari_z body_op=z in=c t=300

@huki id=12 b=1
@huki id=1 b=1
@dir id=12 dir=down wt=0

[Elise]「Tsk. Just you wait, you little pest. I won't let you keep toying with this man's feeble heart.」

; REMOVED
;@move_f f=iris@ikari_z out=r t=300
; NEW
@move_f f=iris@ikari_z body_op=z out=r t=300

@move_speed spd=5
@route route=up:2

@move_f f=sion@tere in=l t=300

[Chiot]「Elise...?」

@move_f f=sion@tere out=l t=300

@dir id=10 dir=up wt=0
@move_speed spd=4
@route route=down:1

@move_f f=sion@tere in=l t=300
@move_f f=iris@kuyasii in=r t=300

[Elise]「Unfortunately, even I can feel your shame. But how can you let all his nonsense get to you? Where's your pride as a Hero?」

@bs f=iris@ikari

[Elise]「God chosen or not, it was up to your own free will to decide whether you wanted to save the world by fighting me or not.」

@bs f=sion@tuujou

[Chiot]「Oh...」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@ikari out=r t=300

@bgm

@dir id=10 dir=down wt=0

[Grand Justice]「Hehehe... Devil, no matter what you could say to him now, that man is no longer a hero but a completely useless pawn.」

[Grand Justice]「The time for a new Hero has arrived... Come forth, child!」

@dir id=34 dir=down
@wait t=500

;; Change of clothes format
;;*************************************
@through id=35 type=on
@change id=35 f=zexy_ex num=0
@move_speed id=35 spd=4
;;-------------------------------------
@dot_move id=35 dir=up x=20 y=20
;;*************************************

@move_speed spd=6
@route route=down:8
@wait t=500

@move_f f=iris@odoroki in=r t=300

[Elise]「Whaa....?!」

@move_f f=iris@odoroki out=r t=300

;; Zexy appears
@move_speed spd=3
@move_speed id=35 spd=3

@route id=35 route=up:5 wt=0
@route route=up:7 wt=0

@wait t=1500
@dir id=34 dir=right wt=0
@fb id=34 dir=back
@dir id=34 dir=up

@wait t=1500

@move_f f=iris@odoroki in=r t=300
@move_f f=zexy@ikari in=l t=300

@bgm f=battle7

[Zekushi]「Smite The Enemies Of God.」

[Elise]「Zekushi?! Why are you―」

@move_f f=iris@odoroki out=r t=300
@move_f f=zexy@ikari out=l t=300

;; Zexy, who has the power of God in his body

@anime id=35 num=661

;;---------------------------------
@anime id=13 num=660 wt=0

@through id=13 type=on
@change id=13 f=!Other2 num=3
@move_speed id=13 spd=4
@dir id=13 dir=left wt=0
@step_anime id=13 type=on
;;---------------------------------

;;---------------------------------
@anime id=14 num=660 wt=0

@through id=14 type=on
@change id=14 f=!Other2 num=3
@move_speed id=14 spd=4
@dir id=14 dir=left wt=0
@step_anime id=14 type=on
;;---------------------------------

;;---------------------------------
@anime id=15 num=660 wt=0

@through id=15 type=on
@change id=15 f=!Other2 num=3
@move_speed id=15 spd=4
@dir id=15 dir=left wt=0
@step_anime id=15 type=on
;;---------------------------------

;;---------------------------------
@anime id=16 num=660 wt=0

@through id=16 type=on
@change id=16 f=!Other2 num=3
@move_speed id=16 spd=4
@dir id=16 dir=left wt=0
@step_anime id=16 type=on
;;---------------------------------

;;---------------------------------
@anime id=17 num=660 wt=0

@through id=17 type=on
@change id=17 f=!Other2 num=3
@move_speed id=17 spd=4
@dir id=17 dir=left wt=0
@step_anime id=17 type=on
;;---------------------------------

;;---------------------------------
@anime id=18 num=660 wt=0

@through id=18 type=on
@change id=18 f=!Other2 num=3
@move_speed id=18 spd=4
@dir id=18 dir=down wt=0
@step_anime id=18 type=on
;;---------------------------------

;;---------------------------------
@anime id=19 num=660 wt=0

@flash t=2000 wt=0
@through id=19 type=on
@change id=19 f=!Other2 num=3
@move_speed id=19 spd=4
@dir id=19 dir=down
@step_anime id=19 type=on
;;---------------------------------

@move_f f=sonia@odoroki in=l t=300

[Sonia]「Aaah!!!」

@move_f f=sonia@odoroki out=l t=300

;;---------------------------------
@anime id=20 num=660 wt=0

@through id=20 type=on
@change id=20 f=!Other2 num=3
@move_speed id=20 spd=4
@dir id=20 dir=left wt=0
@step_anime id=20 type=on
;;---------------------------------

;;---------------------------------
@anime id=21 num=660 wt=0

@through id=21 type=on
@change id=21 f=!Other2 num=3
@move_speed id=21 spd=4
@dir id=21 dir=left wt=0
@step_anime id=21 type=on
;;---------------------------------

;;---------------------------------
@anime id=22 num=660 wt=0

@through id=22 type=on
@change id=22 f=!Other2 num=3
@move_speed id=22 spd=4
@dir id=22 dir=left wt=0
@step_anime id=22 type=on
;;---------------------------------

;;---------------------------------
@anime id=23 num=660 wt=0

@through id=23 type=on
@change id=23 f=!Other2 num=3
@move_speed id=23 spd=4
@dir id=23 dir=left wt=0
@step_anime id=23 type=on
;;---------------------------------

;;---------------------------------
@anime id=24 num=660 wt=0

@through id=24 type=on
@change id=24 f=!Other2 num=3
@move_speed id=24 spd=4
@dir id=24 dir=left wt=0
@step_anime id=24 type=on
;;---------------------------------

;;---------------------------------
@anime id=25 num=660 wt=0

@through id=25 type=on
@change id=25 f=!Other2 num=3
@move_speed id=25 spd=4
@dir id=25 dir=down wt=0
@step_anime id=25 type=on
;;---------------------------------

;;---------------------------------
@anime id=26 num=660 wt=0

@flash t=2000 wt=0
@through id=26 type=on
@change id=26 f=!Other2 num=3
@move_speed id=26 spd=4
@dir id=26 dir=down
@step_anime id=26 type=on
;;---------------------------------

; CHANGED: normal => angry
;@move_f f=sion@tuujou in=l t=300
@move_f f=sion@ikari1 in=l t=300

[Chiot]「Princess, watch out!!!」

; CHANGED: normal => angry
;@move_f f=sion@tuujou out=l t=300
@move_f f=sion@ikari1 out=l t=300

@dir_fix id=1 type=off
@dir_fix id=12 type=off

@dir id=1 dir=right wt=0
@dir id=12 dir=left wt=0

@dir_fix id=1 type=on
@dir_fix id=12 type=on

@se f=風切り音1
@c_jump id=1 y=-2 x=-1 wt=0
@c_jump id=12 y=-2 x=-1

@dir_fix id=1 type=off
@dir_fix id=12 type=off

;;---------------------------------
@anime id=27 num=660 wt=0

@through id=27 type=on
@change id=27 f=!Other2 num=3
@move_speed id=27 spd=4
@dir id=27 dir=left wt=0
@step_anime id=27 type=on
;;---------------------------------

;;---------------------------------
@anime id=28 num=660 wt=0

@through id=28 type=on
@change id=28 f=!Other2 num=3
@move_speed id=28 spd=4
@dir id=28 dir=left wt=0
@step_anime id=28 type=on
;;---------------------------------

;;---------------------------------
@anime id=29 num=660 wt=0

@through id=29 type=on
@change id=29 f=!Other2 num=3
@move_speed id=29 spd=4
@dir id=29 dir=left wt=0
@step_anime id=29 type=on
;;---------------------------------

;;---------------------------------
@anime id=30 num=660 wt=0

@through id=30 type=on
@change id=30 f=!Other2 num=3
@move_speed id=30 spd=4
@dir id=30 dir=left wt=0
@step_anime id=30 type=on
;;---------------------------------

;;---------------------------------
@anime id=31 num=660 wt=0

@through id=31 type=on
@change id=31 f=!Other2 num=3
@move_speed id=31 spd=4
@dir id=31 dir=left wt=0
@step_anime id=31 type=on
;;---------------------------------

;;---------------------------------
@anime id=32 num=660 wt=0

@through id=32 type=on
@change id=32 f=!Other2 num=3
@move_speed id=32 spd=4
@dir id=32 dir=down wt=0
@step_anime id=32 type=on
;;---------------------------------

;;---------------------------------
@anime id=33 num=660 wt=0

@flash t=2000 wt=0
@through id=33 type=on
@change id=33 f=!Other2 num=3
@move_speed id=33 spd=4
@dir id=33 dir=down
@step_anime id=33 type=on
;;---------------------------------

;; Zion evacuates with Sonia in her arms

@dir id=1 dir=down wt=0
@dir id=12 dir=down wt=0

@move_f f=zexy@ikari in=l t=300
@move_f f=iris@kougeki1 in=r t=300

[Elise]「Tsk... so you became the disciple of God. Even though I'm tired, I guess I have no choice but to fight you now, uh?」

@move_f f=iris@kougeki1 out=r t=300
@move_f f=zexy@ikari out=l t=300

;; ○ Event battle: Zexy (Hero ver)

;; * After 5 turns, you will be defeated with a special move (Zexy cannot be defeated)
