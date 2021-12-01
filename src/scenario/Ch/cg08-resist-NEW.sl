
@clear

@through id=5 type=on wt=0
@through id=6 type=on wt=0
@through id=7 type=on

; iris counter attacks.
@huki id=6 b=1 wt=0
@huki id=7 b=1
@anime id=6 num=38 wt=0
@anime id=7 num=38 wt=0
@wait t=50
@anime num=302 wt=0

; thugs back off.
@wait t=100
@c_jump id=6 x=-1 y=1 wt=0
@c_jump id=7 x=1 y=1
@dir id=6 dir=r wt=0
@dir id=7 dir=l

; iris and sonia stand up.
@wait t=30
@change num=0 wt=0
@change id=5 num=0

;@dir dir=r wt=0
;@dir id=5 dir=l

;@dir dir=up wt=0
;@dir id=5 dir=up

; sonia runs away
@route id=5 route=u:2,r spd=5
@dir id=5 dir=d wt=0
@move_speed id=5 spd=4 wt=0

; thug steps forward
;@fb id=6 dist=1 dir=for spd=5
@route id=6 route=r spd=5
@move_speed id=6 spd=4 wt=0

; iris faces thug b
@dir dir=l
;@dir dir=l
;@fb dist=1 dir=for

; iris gets angry
@huki b=5 wt=1

@through id=5 type=off wt=0
@through id=6 type=off wt=0
@through id=7 type=off
