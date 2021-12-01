
;@wait t=500

;@change num=1
;@change id=16 num=1

;@wait t=100

;@huki id=14 b=9

; 16 = sakuya
; 14 = evil shogun

; iris and sakuya turn around.
@wait t=500
@anime num=302 wt=0
@anime id=16 num=302 wt=0
@dir dir=l wt=0
@dir id=16 dir=r
@wait t=50
@dir dir=d wt=0
@dir id=16 dir=d

; iris and sakuya collapse.
@wait t=100
@huki b=7 wt=0
@huki id=16 b=7 wt=0
@change num=1 wt=0
@change id=16 num=1

; shogun sees the opportunity.
@huki id=14 b=1
@wait t=300

; shogun jumps near iris.
;@c_jump id=16 y=2

; shogun begins dancing.
@huki id=14 b=4 wt=0
@move_speed id=14 spd=1
@step_anime id=14 type=on
@wait t=600
