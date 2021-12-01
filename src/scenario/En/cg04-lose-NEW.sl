
@through type=on
@through id=9 type=on
@through id=10 type=on
@through id=4 type=on


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

; bandits sees the opportunity.
@huki id=9 b=1
@huki id=10 b=1
@huki id=4 b=1
@wait t=300

; bandits jump on iris.
@c_jump id=9 y=4 wt=0
@c_jump id=10 y=4 wt=0
@c_jump id=4 y=2

; bandits turn to face iris.
@dir id=9 dir=r wt=0
@dir id=10 dir=l

; they're ready.
@huki id=9 b=4
@huki id=10 b=4
@huki id=4 b=4
@wait t=300


@through type=off
@through id=9 type=off
@through id=10 type=off
@through id=4 type=off
