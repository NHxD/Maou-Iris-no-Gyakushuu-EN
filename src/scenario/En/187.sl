
;; ● True Demon King Route (Fighting back to the hero)

;; Head to the taught place

;; Change of clothes format
;;*************************************
@through id=4 type=on
@change id=4 f=null num=0
@move_speed id=4 spd=3
;;-------------------------------------
@dot_move id=4 dir=up x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=5 type=on
@change id=5 f=null num=0
@move_speed id=5 spd=3
;;-------------------------------------
@dot_move id=5 dir=up x=9 y=14
;;*************************************

@route route=right,up wt=0

@se f=Open1
@wait t=50
@change id=5 f=sion num=0
@wait t=50

@route id=5 route=up:2

@bgm f=field5

@huki b=2

@move_f f=iris@bisyo in=r t=300

[Elise]「Do you have any weapons for sale?」

@huki id=3 b=2

[Weapons merchant]「... Who wants to know?!」

@move_f f=iris@bisyo out=r t=300

@move_speed id=5 spd=4

@route route=up:2,right:3,up wt=0
@route id=5 route=right:2,up:2,right,up

@move_f f=iris@reisyo in=r t=300

[Elise]「Someone who's looking for a magic sword forged from divine energy.」

@huki id=5 b=6
@move_f f=sion@tuujou in=l t=300

[Chiot]「Hey, aren't you being too blunt....」

@huki id=3 b=8
[Weapons merchant]「I see... Well, magic swords are very expensive.」

; NOTE: hide Chiot, he's taking too much screen space...

; NEW
@move_f f=sion@tuujou out=l t=300

@bs f=iris@bisyo

@huki b=2
[Elise]「Well, would you mind showing it to me?」

; NEW
@move_f f=iris@bisyo out=r t=300

; NEW
@dir id=3 dir=l
@dir id=3 dir=up
@huki id=3 b=8
@wait t=1000
; NEW
@dir id=3 dir=l
@dir id=3 dir=down
@se f=剣構え01

[Weapons merchant]「Sure, here it is... So...how about a billion gold coins?」

;; ↑ Say a ridiculous amount

@huki b=8
@huki id=5 b=1
; REMOVED
;@bs f=sion@kanasimi
; NEW
@move_f f=sion@kanasimi in=l t=300

[Chiot]「What?! That's so expensive...?!」

[Weapons merchant]「If you don't have the coins, then just don't buy it and leave.」

@bgm f=bgm03

@huki b=2

; NEW: he's taking too much space
@move_f f=sion@kanasimi out=l t=300

; NEW
@move_f f=iris@bisyo in=r t=300

[Elise]「Is this... really a magic sword forged with divine energy though?」

[Weapons merchant]「Oh, of... of course!」

@bs f=iris@reisyo

[Elise]「Being a holy weapon, it cannot hurt a honest person, right?」

[Weapons merchant]「Uh? I... Uh... What are you getting at...?」

@se f=剣構え01
;; Iris takes the sword and attaches to the weapons merchant

; NEW: he's taking too much space
@move_f f=sion@kanasimi in=l t=300

@huki id=5 b=1
[Chiot]「E―Elise...?!」

; NEW: he's taking too much space
@move_f f=sion@kanasimi out=l t=300

@bs f=iris@bisyo

@huki b=2
[Elise]「So let's try that again... Is this REALLY a magic sword forged with divine energy?」

@huki id=3 b=1
[Weapons merchant]「Sorry, I'm sorry! I lied to you! No, I don't sell any magic weapons in my shop!」

@huki b=2
@bs f=iris@reisyo

[Elise]「And...?」

@huki id=3 b=7
[Weapons merchant]「Uh, I only heard rumours and never actually seen it. It's expensive, of course, but more than that, it's super rare.」

@huki b=2
[Elise]「Well, do you know at least anything about the magic material used to forge such a weapon?」

@huki id=3 b=2
[Weapons merchant]「Divine energy, was it? Yeah, yeah, I know about that one. There is a mysterious place on an eastern island where you can get such material.」

@bs f=iris@kanasimi

@huki b=2
[Elise]「An eastern island...?! Where exactly is it?」

[Weapons merchant]「I don't know where exactly. I'm not lying, I swear!」

; REMOVED
;@bs f=sion@tuujou
; NEW: he's taking too much space
@move_f f=sion@tuujou in=l t=300

[Chiot]「Elise? I think this is enough... Please, let him go...」

@huki b=8
@wait t=1000

@bgm f=field5
@se f=剣構え01

; NEW
@bs f=iris@bisyo

[Elise]「―Hmph... Well, I think that I know where we need to go now anyway...」

[Weapons merchant]「Are you really leaving for the eastern island? Then, why don't you buy a weapon before you go, uh? It's fine quality, I swear!」

@bs f=iris@kuyasii op2=ase

[Elise]「Hmph! What a sleazy slimeball. Ugh, those humans...!」

; NEW
@bs f=sion@kanasimi
;@bs f=sion@taida

[Chiot]「E―Elise, let's get out of here quick and head to that island.」

@move_f f=iris@kuyasii out=r t=300
@move_f f=sion@tuujou out=l t=300

@bgm
;; Background ■ Screen black

@fade type=out t=250

;; Change of clothes format
;;*************************************
@through id=5 type=on
@change id=5 f=null num=0
@move_speed id=5 spd=4
;;-------------------------------------
@dot_move id=5 dir=down x=0 y=0
;;*************************************

@fade type=in t=250


