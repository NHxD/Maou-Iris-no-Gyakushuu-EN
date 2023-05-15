
;; ■ Oak Forest / Orc Settlement
;; ● Branch: Victory

@bgm f=battle5

; REMOVED
;@fb id=9 dir=back wt=1 spd=1
; NEW - this is more logical but then I'd have to fix the routing the map event too...
;@route id=9 route=u spd=1
; NEW
;@fb id=9 dir=for wt=1 spd=1

@huki id=9 b=6
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

[Red Orc]「I'll work for you until the very end! Please...please spare my life! Waaah!」

; REMOVED
;@bs f=iris@bisyo

[Elise]「So pathetic.」

; NEW
@move_speed id=9 spd=8
; NEW
@step_anime id=9 type=on

[Red Orc]「GOD, HELP ME!!!」

;; With the finest smile

@bgm t=100

; REMOVED
;@bs f=iris@takawarai_z body_op=z
; NEW
;@move_f f=iris@bisyo out=l t=150
; NEW
;@move_f f=iris@takawarai_z body_op=z in=r t=150
; NEW
@zoom_f f=iris@takawarai_z src=iris@bisyo in=r t=300

[Elise]「Eh... A disgusting pig until the very end.」

; NEW
@zoom_f f=iris@takawarai src=iris@takawarai_z out=r t=300

; NEW
@move_speed id=9 spd=9

[Red Orc]「Oh, no!」

; REMOVED
;@move_f f=iris@takawarai_z out=r t=100
; NEW
@move_f f=iris@takawarai out=r t=100

; NEW
@step_anime id=9 type=off

;; Red flash + slashing sound
@flash col=255,0,0,255 t=200
;;SE
;;@se f=風切り音
@se f=斬る音
