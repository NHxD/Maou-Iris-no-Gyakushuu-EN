
;; ● True Demon King Route (plays back against the hero)

@anime id=3 num=651 wt=0
@anime num=652

@huki id=3 b=1
@anime num=653

@huki id=3 b=1
@anime id=3 num=654 wt=0
@wait t=500
@dir_fix id=3 type=on
@route id=3 route=up

@wait t=500
;; Eventually, Monk Sina appears
;;win

@bgm f=battle5

@huki id=3 b=7
[Sela]「How is this possible?! Your power is on a whole different level than from our last encounter... But...but Lord Chiot will definitely―」

;; Sina falls
@se f=blow6
@dir_fix id=3 type=off
@dir id=3 dir=up wt=0
@change id=3 f=brave num=5

@move_f f=iris@reisyo in=r t=300

[Elise]「Chiot? Oh please. No one can beat me now.」

@move_f f=iris@reisyo out=r t=300

@dir_fix id=3 type=on
@move_speed spd=4
;; go further
