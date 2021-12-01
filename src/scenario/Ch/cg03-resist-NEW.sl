
@clear

@through type=on
@through id=12 type=on
@through id=13 type=on
@through id=9 type=on

; red orc stops dancing.
@step_anime id=9 type=off
@move_speed id=9 spd=3

; iris counter attacks.
@huki id=9 b=1 wt=0
@anime id=9 num=38 wt=0
@wait t=50
@anime id=9 num=302 wt=0

; red orc backs off.
@wait t=100
@c_jump id=9 y=-3

; iris stands up.
@wait t=30
@change num=0
@dir dir=up wt=0
@c_jump y=-1

; iris gets angry
@huki b=5 wt=1

@through type=off
@through id=12 type=off
@through id=13 type=off
@through id=9 type=off
@move_speed
