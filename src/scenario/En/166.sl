
;; ● True Demon King Route (This is a counterattack against the hero)

;; Enter the audience
;; Zion appears

;;EV10Iris
;;EV1Zion


@map_scroll dir=up dis=8 spd=5
;;----------------------------------------------
;; Replace while Iris is invisible
@invisible type=on
@through type=on

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=iris_nowBody num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=up x=20 y=17
;;*************************************

;;----------------------------------------------

@huki id=1 b=1
@wait t=1000
@dir id=1 dir=down

@move_speed spd=4

@map_scroll dir=down dis=8 spd=5

@fade type=out t=250
@dot_move dir=up x=20 y=18
@fade type=in t=250

@route route=up:5 wt=0
@route id=10 route=up:3

@bgm f=battle7

@huki id=1 b=8
@wait t=1000

@move_f f=sion@tuujou in=l t=300
[Chiot]「Devil Iblis, I never thought that I would face you again so soon.」

@move_f f=iris@reisyo in=r t=300

@huki id=8 b=10
@wait t=1000

; REMOVED
;@bs f=iris@reisyo_z body_op=z
; NEW
@zoom_f f=iris@reisyo_z src=iris@reisyo in=r t=300

[Elise]「Hero Chiot, the end is coming. I've been waiting for this moment for so long!」

; NOTE: avoid having zoomed faces in the background.

; REMOVED
;@bs f=iris@reisyo
; NEW
@zoom_f f=iris@reisyo src=iris@reisyo_z out=r t=300

@bs f=sion@kanasimi

[Chiot]「But if you came this far, then... my companions are all...」

@bs f=iris@emi

[Elise]「Don't worry... I'm going to make you join them soon enough.」

@move_f f=iris@emi out=r t=0
@move_f f=sion@kanasimi out=l t=300

@huki id=1 b=8
@wait t=1000

@move_f f=sion@reisei in=l t=300

[Chiot]「No, Devil. Do you understand how much I needed and loved my companions?」

@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Then, do you understand how much humiliation I have suffered because of you?」

@bs f=iris@kuyasii_hoho

[Elise]「Well, some people will just never understand each other. 『Friendship』 and 『Love』 are just silly illusions anyway.」

@bs f=sion@ikari1

[Chiot]「You may feel that way, but this world is made up of what you call 『silly illusions』. So I have to protect those feelings no matter what!」

@move_f f=iris@ikari_hoho out=r t=300
@move_f f=sion@ikari1 out=l t=300
;;　Event battle: Hero (If defeated, bad end or rematch)
