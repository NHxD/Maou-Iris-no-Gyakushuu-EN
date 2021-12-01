
;@change num=0
;@change id=16 num=0

;@huki id=14 b=1

; 16 = sakuya
; 14 = evil shogun

@clear

; shogun stops stepping.
@move_speed id=14 spd=4
@step_anime id=14 type=off

; iris and sakuya counter attack.
@huki id=14 b=1
@anime id=14 num=38 wt=0
@wait t=50
@anime id=14 num=302 wt=0

; shogun backs off.
@wait t=100
@c_jump id=14

; iris stands up.
@wait t=30

@change num=0 wt=0
@change id=16 num=0

@dir dir=l wt=0
@dir id=16 dir=r

@dir dir=up wt=0
@dir id=16 dir=up

; iris and sakuya get angry
@huki b=5
@huki id=16 b=5 wt=1
