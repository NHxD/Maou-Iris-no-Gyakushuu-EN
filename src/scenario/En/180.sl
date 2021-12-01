
;; ● True Demon King Route (Fighting back to the hero)

;; Heading to the elder
;; Elder, appeared

@move_speed spd=3
@route route=up:2

@wait t=500

@map_scroll dir=up dis=6 spd=5


@move_f f=iris@bisyo in=r t=300

[Elise]「Are you the village elder? I have something to ask you...」

@huki id=13 b=2
[Elder]「Eh. What do you want from me?!」

@move_f f=iris@bisyo out=r t=300

@bgm

@fade type=out t=250

;;----------------------------------------------
@invisible type=on
@through type=on
@move_speed spd=4
@dot_move dir=up x=11 y=7
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=9 type=on
@change id=9 f=iris_nowBody num=0
@move_speed id=9 spd=3
;;-------------------------------------
@dot_move id=9 dir=up x=12 y=7
;;*************************************

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=sion num=0
@move_speed id=10 spd=3
;;-------------------------------------
@dot_move id=10 dir=up x=8 y=7
;;*************************************

@fade type=in t=250

@bgm f=bgm02

@move_f f=iris@bisyo in=r t=300

[Elise]「Do you know anything about divine energy?」

@huki id=13 b=2
[Elder]「Divine energy? Eh, why that thing again.」

@bs f=iris@reisyo

@huki id=9 b=8
[Elder]「It's a thing for adults! Youngins like you should stay away from it.」

@huki id=13 b=8
[Elder]「Hmm... But if you must know... and I've never seen it myself, but I heard about a magic sword being auctioned in the blackmarket.」

@bs f=iris@bisyo

@huki id=9 b=2
[Elise]「This could be just what we need... Where could we find it?」

@huki id=13 b=2
[Elder]「Are you really planning to purchase a magic sword?」

@huki id=9 b=8
[Elise]「Only if it's a good sword.」

@bs f=iris@kuyasii

@huki id=9 b=8
[Elise] (Of course, the truth is that I could simply steal it, but I should keep this from that old man.)

@bs f=iris@bisyo

@huki id=9 b=8
[Elise] (And... I want information about the source of the magic behind the sword more than the sword itself...)
[Elise] (Because if I know where to get the divine energy, I could forge my own magic sword.)

@huki id=13 b=2
[Elder]「Eh, well, I don't know where to find it so I'm afraid I can't help you...」

[Elder]「But you could ask the sleazy weapon merchant in the neighbor city to the south, I'm sure he would know something about this kind of shady thing.」

@huki id=9 b=8
[Elise]「A weapon merchant in another city? All right, let's go find him.」

@move_f f=iris@bisyo out=r t=300

@bgm

;;*****************************************************************

@fade type=out t=250
;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
@dot_move dir=up x=12 y=7
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=9 type=on
@change id=9 f=null num=0
@move_speed id=9 spd=4
;;-------------------------------------
@dot_move id=9 dir=down x=0 y=0
;;*************************************

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=null num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=down x=0 y=0
;;*************************************

@fade type=in t=250

;;*****************************************************************

;; Iris and Zion head to the city

