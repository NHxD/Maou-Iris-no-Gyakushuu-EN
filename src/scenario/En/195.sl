
;; ● True Demon King Route (Fighting back to the brave)

@bgm f=battle5

@anime id=13 num=201 wt=0
@qk

;; Battle: Kirin
[Kylin]「GYAAAA?!!」

@flash t=100
@se f=Thunder6
@wait t=100

@flash t=100
@se f=Thunder6
@wait t=100

@wait t=1000

@anime id=13 num=669 wt=0
@wait t=500

@dir id=13 dir=up wt=0
@change id=13 f=null num=0

@se f=Ice7
@flash t=500

@wait t=1000

@se f=Saint7
@flash t=1000
@wait t=500
@change id=13 f=!Door2 num=0

;; Kirin disappears

@move_speed spd=3

@route route=down:2 wt=0
@route id=10 route=up:4 wt=0
@route id=12 route=right,up:4,left wt=0
@wait t=300
@route id=11 route=up:5,right

@dir id=11 dir=up
@dir id=12 dir=up

;; Iris gets the sacred ball

@move_f f=sion@tuujou in=r t=300

[Chiot]「Yes! We defeated the apostle. Hey, but what is this...?」

@huki id=12 b=1
@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「Could this be...Shinsei-dama? It is said to be source of sacred power.」

@move_f f=sion@tuujou out=r t=300

@huki id=10 b=8
@move_f f=iris@bisyo in=r t=300

[Elise]「It must be... Because I can feel the overwhelming divine energy emanating from this vortex just by looking into it.」

@move_f f=sakuya@odoroki out=l t=300

@huki id=11 b=2
@move_f f=sion@tuujou in=l t=300

[Chiot]「I can feel the holy power too... So then, what should we do with it?」

@huki id=10 b=8
@bs f=iris@kuyasii

[Elise]「I'll use this to make the Divine Blade... All right, I need to focus so shush for now...」

;; Effect ■ Screen effect trying to create a god magic sword

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@kuyasii out=r t=300

@anime id=10 num=652
@move_f f=iris@kougeki2 in=r t=300

[Elise]『\$SKILL[Show yourself, Divine Blade! To me! In this hand of Devil Iblis!]』

@move_f f=iris@kougeki2 out=r t=300

@anime id=13 num=668 wt=0
@wait t=1700
@anime id=13 num=677

;; Effect ■ Screen effect trying to create a god magic sword
;; But it's getting weaker ...

@bgm f=Scene2

@move_f f=iris@odoroki in=r t=300

@huki id=10 b=1
[Elise]「Hm...?」

@move_f f=sion@reisei in=l t=300

@huki id=11 b=2
[Chiot]「Elise...?」

@move_f f=sion@reisei out=l t=300
@move_f f=sakuya@odoroki in=l t=300

@huki id=12 b=2
[Sakuya]「What's wrong?」

@bs f=iris@kanasimi

[Elise]「Tsk. Not a sound... I need to focus...」

; NEW: show iris speaking
@bs f=iris@kougeki2

[Elise]『\$SKILL[Show yourself, Divine Blade!!! To me!!! In this hand of Devil Iblis!!!]』

; REMOVED
;@move_f f=iris@kanasimi out=r t=300
; NEW
@move_f f=iris@kougeki2 out=r t=300

; NEW: hide sakuya
@move_f f=sakuya@odoroki out=r t=300

;; Effect ■ Screen effect that tries to create a god magic sword
;; But it's getting weaker again ...

@anime id=10 num=652
@anime id=13 num=668 wt=0
@wait t=1700
@anime id=13 num=677

@huki id=10 b=8

@move_f f=iris@kanasimi_hoho in=r t=300

[Elise]「...」

@move_f f=sakuya@odoroki out=l t=300

@huki id=11 b=8

@move_f f=sion@tuujou in=l t=300

[Chiot]「Um... Maybe...」

@move_f f=sion@tuujou out=l t=300

@huki id=12 b=2

@move_f f=sakuya@kanasimi in=l t=300

[Sakuya]「Maybe... the divine power here is too weak?」

@dir id=10 dir=down

@bs f=iris@kuyasii

[Elise]「No, it should work... This vortex overflows with divine energy.」

@move_f f=sakuya@kanasimi out=l t=300

@huki id=11 b=8

@move_f f=sion@tuujou in=l t=300

[Chiot]「Maybe... What if...」

@move_f f=sion@tuujou out=l t=300

@huki id=12 b=2

@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「It is perfect... yet useless?」

@bs f=iris@kanasimi

@huki id=10 b=7

[Elise]「Well, I don't understand either...」

@move_f f=sakuya@odoroki out=l t=300

@huki id=11 b=8

@move_f f=sion@tuujou in=l t=300

[Chiot]「Uh... Could it be...」

; REMOVED
;@bs f=iris@ikari
; NEW
;@bs f=iris@ikari_z body_op=z
; NEW
@move_f f=iris@kanasimi out=r t=300
; NEW
@move_f f=iris@ikari_z body_op=z in=r t=300

[Elise]「What is it, Chiot?! What are you murmuring for? If you have something to say, just say it!」

; NEW
@bs f=iris@ikari

@huki id=11 b=7
@wait t=1200

@huki id=11 b=8
@bs f=sion@kanasimi

[Chiot]「Ah well... um... I was just wondering that maybe you were refused the Holy power because... you are... um... the Devil?」

@huki id=10 b=1
; NEW: add exclamation expression
@bs f=iris@odoroki op2=kettei

[Elise]「Hah...」

@move_f f=sion@kanasimi out=l t=300
; NEW: add exclamation expression
@move_f f=sakuya@odoroki in=l t=300 op2=hatena
@huki id=12 b=2

[Sakuya]「... Ehhh, could it be?」

@bs f=iris@kanasimi_hoho op2=ase
@huki id=10 b=8

[Elise]「Well, this possibility did cross my mind but... but if that is the case, what then...?」

@bs f=sakuya@metoji
@huki id=12 b=2

[Sakuya]「Nanka, Elise cannot do it because she is Devil?」

@huki id=10 b=7
; NEW: add bs command to display annoyed expression
@bs f=iris@kuyasii op2=konwaku
@wait t=1200

@huki id=10 b=8
@bs f=iris@kanasimi op2=denkyu

[Elise]「So... I guess that leaves Chiot.」

@move_f f=sakuya@metoji out=l t=300
@move_f f=sion@tuujou in=l t=300

@huki id=11 b=2
[Chiot]「Uh... me?」

@bs f=iris@bisyo

[Elise]「In the hand of a Hero, your sword might receive the sacred blessing.」

@huki id=11 b=2
@bs f=sion@kanasimi

[Chiot]「Will it work though? Well, if this is to help you, Elise, I'll do it.」

@move_f f=sion@kanasimi out=l t=300
@move_f f=sakuya@bisyo in=l t=300

@huki id=12 b=2
[Sakuya]「Sou, sou, why not giving it a try?」

[Elise]「Here, take your place.」

@move_f f=iris@bisyo out=r t=300
@move_f f=sakuya@bisyo out=l t=300

@route id=10 route=right,up wt=0
@route id=11 route=left,up,left,up
@dir id=10 dir=left
@dir id=11 dir=right

;; Iris tries to hand over the sacred ball
;; Zion, receive

@bgm f=dungeon10

@move_f f=sakuya@bisyo out=l t=300
@move_f f=sion@kanasimi in=l t=300

@huki id=11 b=6
[Chiot]「I hope it works...」

; NEW
@move_f f=iris@kougeki1 in=r t=300

@huki id=10 b=8
[Elise]「Let's give it a try. First, lift your sword over your head...」

@bs f=sion@reisei

@huki id=11 b=2
[Chiot]「Um... like this...?」

; REMOVED
;@move_f f=iris@kuyasii in=r t=300
; NEW
@bs f=iris@kuyasii

@huki id=10 b=8
[Elise]「Perfect. Now, I'll chant the incantation...」

@move_f f=sion@reisei out=l t=300
@move_f f=iris@kuyasii out=r t=300
;; Iris raises his sword overhead
@anime id=10 num=652

; REMOVED
;@move_f f=iris@kougeki1 in=r t=300
; NEW
@move_f f=iris@ikari in=r t=300

[Elise]『\$SKILL[Show yourself, Divine Blade!!! To him!!! In the hand of the Sacred Hero!!!]』

; REMOVED
;@move_f f=iris@kougeki1 out=r t=300
; NEW
@move_f f=iris@ikari out=r t=300

@anime id=13 num=668 wt=0
@wait t=1700
@anime id=13 num=679

;; Effect ■ Screen effect that tries to create a god magic sword
;; Then, the screen effect will become more powerful this time.

@move_f f=sion@tuujou in=l t=300
;;@bs f=sion@tuujou op2=kettei

[Chiot]「Oh! My sword...is glowing!」

@move_f f=sion@tuujou out=l t=300
@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「Sugoi! Your sword is glowing too, Elise!」

; REMOVED
;@move_f f=iris@kougeki2 in=r t=300
; NEW
@move_f f=iris@kougeki1 in=r t=300

[Elise]「It... It's working! Come on, come on now...」

; NEW
@bs f=iris@kougeki2

[Elise]『\$SKILL[Show yourself, Divine Blade!!!]』

@move_f f=iris@kougeki2 out=r t=300
@move_f f=sakuya@odoroki out=l t=300

@anime id=10 num=604 wt=0
@anime id=11 num=668

;; The magic square emerges
@anime id=13 num=678 wt=0
@wait t=1000
@anime id=13 num=680 wt=0
@wait t=1000
@flash t=5000
@wait t=1000
@change id=13 f=null num=0
@wait t=4000

;; A dazzling flash
;; Finally, I can make a sword

@move_f f=sakuya@odoroki in=l t=300
[Sakuya]「Did it work...?」

@move_f f=sakuya@odoroki out=l t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「What... happened? Is the sword Elise holding the―」

@move_f f=iris@odoroki_z body_op=z in=r t=300

[Elise]「―No. This isn't the Divine Blade... This is the Demon Blade?!」

@bs f=iris@odoroki

@move_f f=sion@tuujou out=l t=300
@move_f f=sakuya@kanasimi in=l t=300

[Sakuya]「Nani, Demon Blade? Did you mess up?」

@move_f f=sakuya@kanasimi out=l t=300
@move_f f=sion@kanasimi in=l t=300

[Chiot]「Um... But then... What am I holding here...?」

@move_f f=sion@kanasimi out=l t=300
@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「... Eeeh? What is this sword?!」

@bgm f=battle5

@bs f=iris@odoroki

[Elise]「That... That's it! That's the Divine Blade!」

@move_f f=sakuya@odoroki out=l t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「Is this... really the Divine Blade?」

@bs f=iris@kanasimi op2=kettei

[Elise]「Yes! Well, for some reason, the energy scattered, so not only one, but two magic swords were created...」

@move_f f=sion@tuujou out=l t=300

; NEW
@move_f f=iris@bisyo out=r t=300

; NEW
@huki id=10 b=8 wt=1

; NEW
\$ACTOR[Elise] obtained \$WEAPON[29].
; NEW
\$ACTOR[Chiot] obtained \$WEAPON[41].

@move_f f=sakuya@odoroki in=l t=300

; NEW
@huki id=12 b=9

[Sakuya]「Maybe we could say this is... so-called miracle?!」

; NEW
@bs f=sakuya@emi
; REMOVED
;@bs f=iris@bisyo_hoho
; NEW
@move_f f=iris@bisyo_hoho in=r t=300

[Elise]「Hmm, maybe it is...」

; REMOVED
;@move_f f=sakuya@odoroki out=l t=300
; NEW
@move_f f=sakuya@emi out=l t=300
@move_f f=sion@emi in=l t=300

; NEW
@huki id=11 b=3

[Chiot]「Hooray! We did it!」

@bs f=iris@emi

; NEW
@huki id=10 b=3

[Elise]「Well, to be honest, this was completely unexpected... But we just doubled our chances to vanquish God. Hehe～♪」

@bs f=iris@reisyo

[Elise]「Just you wait and see, God. I'll make you regret ever crossing the Devil!」

@move_f f=sion@emi out=l t=300
@move_f f=iris@reisyo out=r t=300


;@fadeout wt=1

;\$ACTOR[2] Obtained \$WEAPON[134].
;\$ACTOR[1] Obtained \$WEAPON[135].
