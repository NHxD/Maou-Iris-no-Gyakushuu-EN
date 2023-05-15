; UNUSED: "041_1", and "041_2" are used instead.

;; ■ Oak Forest / Orc Settlement
;; ● Branch: Victory

@bgm f=battle5

; REMOVED
;@fb id=9 dir=back wt=1 spd=1
; NEW - this is more logical but then I'd have to fix the routing the map event too...
;@route id=9 route=u spd=1
; NEW
;@fb id=9 dir=for wt=1 spd=1

@move_f f=iris@reisyo in=r t=300

[Red Orc]「Eek! Please forgive me!」

; REMOVED - this is more logical but then I'd have to fix the routing the map event too...
;@route route=up
; REMOVED
;@bs f=iris@reisyo_z body_op=z
; NEW
@zoom_f f=iris@reisyo_z src=iris@reisyo in=r t=300

[Elise]「Well... As the Trash Devil, it is my responsibility to dispose of garbage like you. ♥」

; NEW MOVED
@zoom_f f=iris@bisyo src=iris@reisyo_z out=r t=300

@huki id=9 b=6

[Red Orc]「No, no, my Devil. It was only a joke! Ahah ahah!」

[Red Orc]「I'll work for you until the end! Please...please spare my life! Waaah!」

; REMOVED
;@bs f=iris@bisyo

[Elise]「So pathetic.」

; NEW
@move_speed id=9 spd=8
; NEW
@step_anime id=9 type=on

[Red Orc]「GOD, HELP ME!!!」

;; With the finest smile

; REMOVED
;@bs f=iris@takawarai_z body_op=z
; NEW
@zoom_f f=iris@takawarai_z src=iris@bisyo in=r t=300

[Elise]「Tsk... A disgusting pig until the very end.」

[Red Orc]「Oh, no!」

; NEW
@step_anime id=9 type=off

@move_f f=iris@takawarai_z body_op=z out=r t=100

;; Red flash + slashing sound
@flash col=255,0,0,255 t=200
;;SE
;;@se f=風切り音
@se f=斬る音

;; * Completely stop

;; ● Branch: Victory

;;[レッドオーク]「ぎゃああああああああぁ！！」

@move_f f=iris@kuyasii in=r t=300

[Elise]「An elite orc begging for mercy... So disgusting!」

@huki b=3
;; NEW
@bs f=iris@kuyasii

[Elise]「Tsk... I couldn't get my hands on a strong demon in the end.」

@bs f=iris@bisyo

[Elise]「Oh well, I better head back to the village to get my reward, at least.」

@dir dir=u
@huki id=10 b=8
@bs f=iris@odoroki

[Married Woman]「Oh! Thank you so, so very much!」

@huki id=11 b=8

[Girl 1]「I was so scared!」

@huki id=15 b=8

[Girl 2]「Please don't leave us here. Take us with you. Please!」


@huki b=9
@bs f=iris@kanasimi

[Elise]「Wow, I had completely forgotten that you were here.」

@huki b=8
@bs f=iris@kougeki1

[Elise]「Ah right, the village chief asked me to return you to your village.」

[Elise]「Fine. you all come with me.」

@huki id=10 b=1

[Married Woman]「Oh! Thank you! I'll never forget your kindness.」

@huki id=11 b=1
@huki id=15 b=1

[Girls]「Thanks!」

@route id=11 route=d spd=5 wt=0
@route id=15 route=d spd=5 wt=1
@dir id=15 dir=r
@dir id=11 dir=l

@huki b=6
@bs f=iris@odoroki
[Elise]「Wait... Why are you squeezing me all of a sudden!?」

@huki b=7
[Elise]「Tsk... Why I, the Devil, is saving some pathetic humans? Dammit.」

;; ※ Dark→Forced move to the village

@move_f f=iris@odoroki_hoho out=r t=300
