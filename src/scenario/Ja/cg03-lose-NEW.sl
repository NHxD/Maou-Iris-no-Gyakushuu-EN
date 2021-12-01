
@through type=on
@through id=12 type=on
@through id=13 type=on
@through id=9 type=on


; iris steps back.
@wait t=500
@anime num=302 wt=0
@dir_fix type=on
@route route=d spd=3 wt=1
@dir_fix type=off
@move_speed

; iris collapses.
@huki b=7 wt=0
@change num=1

; red orc sees the opportunity.
@huki id=9 b=1
@wait t=300

; red orc jumps on iris.
@c_jump id=9 y=3

; red orc begins dancing.
@huki id=9 b=4 wt=0
@move_speed id=9 spd=5
@step_anime id=9 type=on
@wait t=600


@through type=off
@through id=12 type=off
@through id=13 type=off
@through id=9 type=off
