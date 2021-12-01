
; iris walks around the counter.
@through type=on
@route route=r:3 spd=4
; the owner looks right.
@dir id=2 dir=r
@route route=u:3 spd=4
@wait t=100
@if eval=true ok=calc:$gameMap.setDataMany([6,4,1,3196],[6,5,1,0],true);
@wait t=100
@route route=l:3 spd=4
@through type=off

; the owner looks up.
@dir id=2 dir=u

; iris changes to swimsuit.
@dir dir=u
@wait t=300
@fade type=out t=500
@change f=iris_mizugi
@fade type=in t=500
@wait t=300
@dir dir=d

; the owner moves aside.
@dir id=2 dir=r
@fb id=2 dir=back

; iris walks behind the counter.
@route route=d:3 spd=4
@move_speed

; owner jumps behind iris.
@c_jump id=2 x=1 y=-1
@dir id=2 dir=d

; a customer walks in.
@invisible id=4 type=off
@route id=4 route=u:3,l:2,u:4 spd=4

@huki id=2 b=4
@huki id=4 b=1 wt=1
