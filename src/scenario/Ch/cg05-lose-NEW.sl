
@through id=3 type=on


; iris turns around.
@wait t=500
@anime num=302 wt=0
@dir dir=l
@wait t=50
@dir dir=d

; iris collapses.
@wait t=100
@huki b=7 wt=0
@change num=1

; daika sees the opportunity.
@huki id=3 b=1
@wait t=300

; daika jumps near iris.
@c_jump id=3 y=2

; daika begins dancing.
@huki id=3 b=4 wt=0
@move_speed id=3 spd=8
@wait t=600


@through id=3 type=off
