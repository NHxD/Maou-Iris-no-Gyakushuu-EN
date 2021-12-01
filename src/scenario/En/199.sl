
;; ● True Demon King Route (Fighting back to the hero)

;; Screen change
;; Iris is looking at the moon alone

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=12 y=9
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=4 type=on
@change id=4 f=iris_nowBody num=0
@move_speed id=4 spd=3
;;-------------------------------------
@dot_move id=4 dir=down x=13 y=9
;;*************************************

;; Change of clothes format
;;*************************************
@through id=5 type=on
@change id=5 f=null num=0
@move_speed id=5 spd=3
;;-------------------------------------
@dot_move id=5 dir=down x=12 y=3
;;*************************************
@fade type=in t=250

@huki id=4 b=8
@wait t=1200

@change id=5 f=sion num=0
@wait t=50
@route id=5 route=down:2,left,down:4

@huki id=5 b=8
@wait t=1200


@bgm f=Town1

@move_f f=iris@bisyo in=r t=300

@huki id=4 b=8
[Elise]「.........」

@move_f f=sion@emi in=l t=300

@huki id=5 b=8
[Chiot]「What a wonderful moonlit sky.」

@bs f=iris@kanasimi

@huki id=4 b=8
[Elise]「... I'm not interested in the moon.」

@bs f=sion@reisei

@huki id=5 b=8
[Chiot]「But you've been staring at it for a while now.」

@dir id=4 dir=up
@bs f=iris@kuyasii_hoho

@huki id=4 b=8
[Elise]「The moon just happened to be in front of me.」

@bs f=sion@kanasimi

@huki id=5 b=8
@dir id=5 dir=right
[Chiot]「... You're not cute at all.」

@bs f=iris@kanasimi op2=konwaku

@huki id=4 b=7
@dir id=4 dir=left
[Elise]「This same comment again... Why should the Devil act cute? Did you talk to Zekushi?」
; NOTE: not sure of the original meaning concerning zexy.

@bs f=sion@tuujou

@huki id=5 b=2
[Chiot]「Uh?」

@bs f=iris@bisyo

@huki id=4 b=8
@dir id=4 dir=down
[Elise]「Never mind, I was just pondering about something meaningless... So, have you talked to Sonia?」

@bs f=sion@tere

@huki id=5 b=8
@dir id=5 dir=down
[Chiot]「I couldn't... The princess was so relieved to see us return home safely that she fell asleep, with tears still running down her cheeks.」

;NEW
@bs f=iris@kanasimi_hoho

@huki id=5 b=8
[Elise]「Is that so...?」

@move_f f=sion@tere out=l t=300
; REMOVED
;@move_f f=iris@bisyo out=r t=300
; NEW
@move_f f=iris@kanasimi_hoho out=r t=300

@huki id=5 b=8
[Chiot]「.........」

@huki id=4 b=8
[Elise]「.........」

@huki id=5 b=8
@wait t=1200

@move_f f=sion@tuujou in=l t=300

@huki id=5 b=8
[Chiot]「... I have something to ask you.」

@move_f f=iris@kanasimi in=r t=300

[Elise]「What is it?」

@bs f=sion@reisei

[Chiot]「After we defeat God... what would you do next?」

@bs f=iris@kanasimi

[Elise]「Ah...」

@bs f=sion@tuujou

[Chiot]「...」

@bs f=iris@kanasimi_hoho

[Elise]「Only a short while ago, I would have said 『I will conquer the world! Ohohoho～♪』... But I honestly don't feel like it anymore...」

@dir id=5 dir=right
[Chiot]「Then─」

@bs f=iris@bisyo

[Elise]「─I shall return to the demon realm.」

@bs f=sion@kanasimi

[Chiot]「...」

@bs f=iris@kanasimi

@dir id=4 dir=left
[Elise]「... What?!」

@bs f=sion@tere

[Chiot]「No, nothing... It's just... that I'm going to feel lonely then.」

@bs f=iris@ikari op2=ase

[Elise]「... What the hell is wrong with you?!」

@bs f=sion@tuujou

[Chiot]「Wh―Why?」

@bs f=iris@ikari_hoho

[Elise]「Shouldn't you be relieved upon hearing what I just told you?! With the Devil gone, peace shall return to your world.」

@bs f=sion@kanasimi

[Chiot]「Well, this might be true for a while. However, there are still countless seeds of conflict spread all over this world.」
[Chiot]「I was thinking that... "true peace" might just be an illusion.」

@bs f=iris@kuyasii_hoho

[Elise]「Isn't that way of thinking a bit problematic coming from a hero?」
;ironic

@bs f=sion@reisei

[Chiot]「Is it though? I just think that whoever keeps fighting for "true peace" is the real hero.」

@bs f=iris@ikari

@dir id=4 dir=down
[Elise]「This is so cheesy. It sends shivers down my spine.」

@bs f=sion@emi

@dir id=5 dir=down
[Chiot]「But Elise told me once... "You're the one who fought me to save the world", right?」

@bs f=iris@kanasimi_hoho op1=ase

@dir id=4 dir=left
[Elise]「... Why are you bringing this up now?」

@bs f=sion@tuujou

[Chiot]「When I learned that I was just a mere pawn in God's plan, I was so overwhelmed with confusion and anger that I collapsed to the ground.」
[Chiot]「But I am standing here today because of the words you spoke that day.」

; REMOVED
;@bs f=sion@kanasimi_z body_op=z
; NEW
@zoom_f f=sion@kanasimi_z src=sion@tuujou in=l t=300

@dir id=5 dir=right
[Chiot]「Without those words, I might not have been able to stand up ever again. What I am trying to say is that... I am very grateful to you.」

; REMOVED
;@bs f=sion@emi
; NEW
@zoom_f f=sion@emi src=sion@kanasimi_z out=l t=300

[Chiot]「Thank you very much, Elise.」

; REMOVED
;@bs f=iris@odoroki_hoho_z body_op=z
; NEW
@zoom_f f=iris@odoroki_hoho_z src=iris@kanasimi_hoho in=r t=300

[Elise]「Are you stupid?! The Hero thanking the Devil! This... this is a huge problem!」

; NEW
;@bs f=iris@kuyasii_hoho
@zoom_f f=iris@kuyasii_hoho src=iris@odoroki_hoho_z out=r t=300

[Elise]「Hmph! I'm going to bed.」

; NEW
@move_f f=iris@kuyasii_hoho out=r t=300
; NEW
@move_f f=sion@emi out=l t=300

@dir id=5 dir=up

@move_speed id=4 spd=4
@route id=4 route=up:3,left,up

; REMOVED
;@bs f=iris@odoroki_hoho

;; ↑ Makes his face slightly red and tries to go while suffering and being hated and tapping his mouth.

; REMOVED
;@bs f=sion@tuujou
@move_f f=iris@kuyasii_hoho in=r t=300
; NEW
@move_f f=sion@tuujou in=l t=300

[Chiot]「Yes, we should rest tonight... We need to be ready for tomorrow's battle. Good night, then... Elise.」

@huki id=4 b=7

@move_f f=iris@odoroki_hoho out=r t=300
@move_f f=sion@tuujou out=l t=300

; REMOVED
;@route id=4 route=up:3 wt=0
; REMOVED
;@wait t=100
; NEW
@route id=4 route=up:3 wt=0
; NEW
@wait t=1000
@invisible id=4 type=on

;; Zion sees off Iris leaving.
