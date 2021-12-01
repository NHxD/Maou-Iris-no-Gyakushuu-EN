
; 5 = sonia
; 6 = thug a
; 7 = thug b

@through id=5 type=on wt=0
@through id=6 type=on wt=0
@through id=7 type=on

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

; thugs sees the opportunity.
@huki id=6 b=1 wt=0
@huki id=7 b=1
@wait t=300

; iris and sonia face downward.
@dir dir=d wt=0
@dir id=5 dir=d wt=0

; thug drags sonia in front.
@c_jump id=6 x=1 y=-3

; thug jumps behind her.
@c_jump id=6 x=-1 y=2 wt=0
@dir id=6 dir=d wt=0

; sonia thrown to the ground.
@c_jump id=5 x=-1 y=2
@change id=5 num=1

; iris thrown to the ground.
@c_jump id=7 x=-1 y=-1
@dir id=7 dir=d wt=0

@wait t=30

; thugs are ready.
@huki id=7 b=4
@huki id=6 b=4

@through id=5 type=off wt=0
@through id=6 type=off wt=0
@through id=7 type=off
