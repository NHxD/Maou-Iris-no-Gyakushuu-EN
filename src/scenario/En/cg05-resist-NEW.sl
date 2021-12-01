@clear

@through type=on
@through id=3 type=on

; daika resumes normal stepping.
@move_speed id=3 spd=3

; iris counter attacks.
@huki id=3 b=1 wt=0
@anime id=3 num=38 wt=0
@wait t=50
@anime id=3 num=302 wt=0

; daika backs off.
@wait t=100
@dir_fix id=3 type=on
@c_jump id=3 y=-2
@dir_fix id=3 type=off

; iris stands up.
@wait t=30
@change num=0
@dir dir=up wt=0
@c_jump

; iris gets angry
@huki b=5 wt=1

@through type=off
@through id=3 type=off
@move_speed
