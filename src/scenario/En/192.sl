
;; ● True Demon King Route (Fighting back to the hero)

;; Arrive at the mad city

;;----------------------------------------------

@invisible id=30 type=on
@invisible id=31 type=on
@invisible id=37 type=on
@invisible id=43 type=on
@invisible id=35 type=on
@invisible id=44 type=on
@invisible id=38 type=on

;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=18 type=on
@change id=18 f=null num=0
@move_speed id=18 spd=3
;;-------------------------------------
@dot_move id=18 dir=up x=27 y=30
;;*************************************

;; Change of clothes format
;;*************************************
@through id=19 type=on
@change id=19 f=null num=0
@move_speed id=19 spd=4
;;-------------------------------------
@dot_move id=19 dir=up x=26 y=34
;;*************************************

;; Change of clothes format
;;*************************************
@through id=20 type=on
@change id=20 f=J_People5 num=3
@move_speed id=20 spd=4
;;-------------------------------------
; REMOVED
;@dot_move id=20 dir=left x=35 y=23
; NEW
@dot_move id=20 dir=down x=35 y=15
; NEW
@invisible id=20 type=on
;;*************************************

;; Change of clothes format
;;*************************************
@through id=21 type=on
@change id=21 f=Nature num=7
@move_speed id=21 spd=4
;;-------------------------------------
; REMOVED
;@dot_move id=21 dir=left x=37 y=23
; NEW
@dot_move id=21 dir=down x=37 y=13
; NEW
@invisible id=21 type=on
;;*************************************

;; Change of clothes format
;;*************************************
@through id=22 type=on
@change id=22 f=null num=0
@move_speed id=22 spd=4
;;-------------------------------------
@dot_move id=22 dir=right x=21 y=18
;;*************************************

@move_speed spd=3
@move_speed id=19 spd=3

@route route=up:2 wt=0

@change id=19 f=sion num=0
@wait t=100

@route id=19 route=up:2

@huki b=8
@wait t=1200

@move_f f=iris@bisyo in=r t=300

[Elise]「Who would have thought that I'd be back to this place so soon.」

@move_f f=iris@bisyo out=r t=300

@huki b=1
@huki id=19 b=1

@bgm

[Woman]「Aaah!!! Somebody help... Anybody!」

@bgm f=dungeon2


; NEW
@move_speed id=20 spd=6
; NEW
@move_speed id=21 spd=6

; NEW
@invisible id=20 type=off
; NEW
@invisible id=21 type=off

; NEW
@route id=20 route=down:8 wt=0
; NEW
@route id=21 route=down:10

@move_speed id=20 spd=5
@move_speed id=21 spd=5

@map_scroll dir=up dis=6 spd=6 wt=0
@route id=20 route=left:10 wt=0
@route id=21 route=left:10

@dir id=20 dir=right
@step_anime id=20 type=on


;;----------------------------------------------
@invisible type=on
@through type=on
;;----------------------------------------------
@dot_move id=19 dir=up x=25 y=30
@change id=18 f=iris_nowBody num=0

@wait t=500

@map_scroll dir=down dis=6 spd=5

@move_f f=sion@tuujou in=l t=300

[Chiot]「―Oh, is that...」

;; Angel, appeared

@move_f f=iris@odoroki in=r t=300

[Elise]「Dammit, they're here too.」

@se f=剣構え01
@bs f=sion@ikari1

[Chiot]「Ahhh... We can't just stand back. We've got to help her!」

@move_f f=sion@ikari1 out=l t=300
@move_f f=iris@odoroki out=r t=300

@move_speed id=18 spd=5
@move_speed id=19 spd=5
@move_speed spd=5

@route route=up:4 wt=0
@route id=18 route=up:4 wt=0
@route id=19 route=up:4

;; Sakuya appears

@se f=風切り音1
@flash t=300
@change id=22 f=sakuya_nowBody num=0

@step_anime id=20 type=off
@dir id=20 dir=left wt=0

@huki id=20 b=1
@huki id=21 b=1

@huki id=18 b=1
@huki id=19 b=1

@move_speed spd=6
; REMOVED
@route route=up:8,left:5
; NEW
;@route route=up:5 wt=0
; NEW
;@route route=left:5
; NEW
;@route route=up:3

@move_f f=sakuya@kougeki in=l t=300

[Sakuya]「Yahhhhh!!!」

@move_f f=sakuya@kougeki out=l t=300

@se f=風切り音1
@flash t=300
@change id=22 f=null num=0

@wait t=250

@move_speed spd=6
; REMOVED
@route route=right:8,down:5
; NEW
;@route route=right:5 wt=0
; NEW
;@route route=down:5
; NEW
;@route route=right:3

;; Effect ■ Screen white flash
;; Decapitation sound
@dot_move id=22 dir=right x=29 y=23

@se f=Sword4
@flash t=300
@change id=22 f=sakuya_nowBody num=0

@wait t=600

@se f=剣構え01

@wait t=600

@anime id=21 num=659
@huki id=21 b=1

@dir id=20 dir=right

@move_speed id=21 spd=3
@fb id=21 dir=back

[Angel]「Gyaaaaaaaaaa!!!」

@anime id=21 num=669 wt=0
@wait t=500
@change id=21 f=null num=0

;; Angel disappears

@bgm f=field5

@move_f f=iris@bisyo in=l t=300

@huki id=22 b=1
[Elise]「Is that...Sakuya...?」

@dir id=22 dir=left
@move_f f=sakuya@odoroki in=r t=300

[Sakuya]「Eh? Elise?!」

@move_f f=sakuya@odoroki out=r t=300
@move_f f=iris@bisyo out=l t=300

@move_speed id=18 spd=4
@move_speed id=19 spd=4
@move_speed id=20 spd=6
@move_speed spd=3

; REMOVED
;@route id=20 route=left:7 wt=0
; NEW
@route id=20 route=left:11,d,l wt=0
@route route=left wt=0
@route id=18 route=up:3
@dir id=18 dir=right

;; Iris and Sakuya approach

@move_f f=sakuya@odoroki in=r t=300
@huki id=22 b=1
[Sakuya]「Is that really you...? Why are you here?! Did you get tricked by your pet Daika again? fufu～♪」

@huki id=18 b=7
@wait t=1200

@move_f f=iris@kuyasii_hoho in=l t=300

[Elise] (Argh! I never thought about it that way... but did Deca intentionally play a trick on me by bringing and leaving me stranded here?)

@bs f=sakuya@emi

[Sakuya]「Fufu～ It has been long time no see. How were you?」

@bs f=iris@kanasimi

[Elise]「Well, quite a few things happened sinced then... it's a long story―」

@move_f f=iris@kanasimi out=l t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「Um... Elise?」

@move_f f=sakuya@emi out=r t=300
@move_f f=sion@tuujou out=l t=300

@route id=19 route=up:2,right:1
;; Zion approaches two people

@move_f f=iris@kanasimi in=l t=300
@move_f f=sakuya@emi_hoho in=r t=300

[Sakuya]「Wait... I know I said long time no see, but you come back with handsome man already? Elise really should not be overlooked.」

@bs f=iris@kuyasii_hoho op2=ase

[Elise]「Gah... it's gonna be a pain to explain everything...」

@move_f f=iris@kuyasii_hoho out=l t=300
@move_f f=sion@tuujou in=l t=300

@huki id=19 b=2
[Chiot]「Umm... is this lady your acquaintance?」

@bs f=sakuya@bisyo

@huki id=22 b=3
[Sakuya]「Elise, please introduce us.」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@bisyo in=l t=300

@huki id=18 b=8
[Elise]「That man here is... Hero Chiot. It's complicated but for the time being, we're travelling together...」

[Elise]「And by the way, you can stop leering at him right now 'cause he already has a fiancée back home.」

@bs f=sakuya@emi

@huki id=22 b=3
[Sakuya]「Fufu～ Pleasure to meet you, I am Sakuya.」

@move_f f=iris@bisyo out=l t=300
@move_f f=sion@emi in=l t=300

[Chiot]「The pleasure is all mine! Uh... I am the Hero Chiot... Well, ex-Hero. Ahah...」

@move_f f=sion@emi out=l t=300
@move_f f=iris@kanasimi in=l t=300

@huki id=18 b=2
[Elise]「Ugh. Anyway, Sakuya... About the angels...?」

@bs f=sakuya@kanasimi

[Sakuya]「Eh, those? They recently started popping up everywhere around here.」

@bs f=sakuya@metoji

[Sakuya]「They are ferocious. They keep attacking humans, one after another... And all people who were attacked become angels too.」

; REMOVED
;@move_f f=iris@kanasimii out=l t=300
; NEW
@move_f f=iris@kanasimi out=l t=300
@move_f f=sion@kanasimi in=l t=300

@huki id=19 b=7
[Chiot]「This is terrible! Those angels are...like vampires?」

@move_f f=sion@kanasimi out=l t=300
@move_f f=iris@kuyasii in=l t=300

@huki id=18 b=8
[Elise] (If that is the case, I fear the worst has come to the Royal Capital... I wonder if Sonia and Zekushi are all right.)

@bs f=iris@kanasimi

[Elise]「Even so, I wonder why angels have chosen to invade en masse the most remote, middle of nowhere, island.」

@bs f=sakuya@ikari_hoho

@huki id=18 b=7
[Sakuya]「Eh, sorry for being isolated island.」

@bs f=iris@bisyo

[Elise]「I'm just stating facts. So, do you have any idea?」

@bs f=sakuya@metoji

[Sakuya]「No, nothing in particular.」

[Elise]「... Maybe they're looking for the divine energy too. Do you know anything about it?」

@bs f=sakuya@odoroki op2=denkyu

@huki id=22 b=2
[Sakuya]「Sacred power? Eeto... maybe... you mean Mount Fuji?」

@move_f f=iris@bisyo out=l t=300
@move_f f=sion@reisei in=l t=300

@huki id=19 b=8
[Chiot]「A sacred peak...」

@move_f f=sion@reisei out=l t=300
@move_f f=iris@kanasimi in=l t=300

@huki id=18 b=2
[Elise]「... Fuji?」

@bs f=sakuya@metoji

[Sakuya]「This mountain is so full of sacred energy that even evil shōgun did not dare approach it. But where is the connection with angels...?」

@move_f f=sakuya@metoji out=r t=300

@dir id=18 dir=left
@huki id=19 b=1

@move_f f=iris@kanasimi out=l t=300
@move_f f=sion@reisei in=l t=300

[Chiot]「―Elise!」

@move_f f=iris@bisyo in=r t=300

[Elise]「Well, I think we just got our first clue. Sakuya, could you please guide us to that Mount Fuji?」

@move_f f=iris@bisyo out=r t=300
@move_f f=sakuya@odoroki in=r t=300

[Sakuya]「Of course, you can count on―Ara～Ara, I remember now!!!」

@dir id=18 dir=right

@move_f f=sion@reisei out=l t=300
@move_f f=iris@odoroki in=l t=300

[Elise]「What?! Why are you yelling all of a sudden...?!」

@bs f=sakuya@odoroki op2=kettei

[Sakuya]「Gomen. Gomen. I just remembered that I have heard rumors of supposed messenger of god seen at top of Mount Fuji.」

@move_f f=iris@odoroki out=l t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「An apostle?」

@bs f=sakuya@metoji

[Sakuya]「Well, it is only rumor... but it may explain sudden appearance of angels on island.」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@kuyasii in=l t=300

[Elise]「Anyway, I made up my mind, our objective is in that mountain so let's get going.」

@move_f f=iris@kuyasii out=l t=300
@move_f f=sakuya@metoji out=r t=300

;;42：

;;*****************************************************************

@fade type=out t=250
;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
@dot_move dir=up x=27 y=23
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=18 type=on
@change id=18 f=null num=0
@move_speed id=18 spd=3
;;-------------------------------------
@dot_move id=18 dir=up x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=19 type=on
@change id=19 f=null num=0
@move_speed id=19 spd=4
;;-------------------------------------
@dot_move id=19 dir=up x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=20 type=on
@change id=20 f=null num=3
@move_speed id=20 spd=4
;;-------------------------------------
@dot_move id=20 dir=left x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=21 type=on
@change id=21 f=null num=7
@move_speed id=21 spd=4
;;-------------------------------------
@dot_move id=21 dir=left x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=22 type=on
@change id=22 f=null num=0
@move_speed id=22 spd=4
;;-------------------------------------
@dot_move id=22 dir=right x=0 y=0
;;*************************************


;;----------------------------------------------

@invisible id=30 type=off
@invisible id=31 type=off
@invisible id=37 type=off
@invisible id=43 type=off
@invisible id=35 type=off
@invisible id=44 type=off
@invisible id=38 type=off

;;----------------------------------------------

@fade type=in t=250

;;*****************************************************************

;; Iris, Zion, Sakuya leave Kyoto and head for Mt. Fuji
