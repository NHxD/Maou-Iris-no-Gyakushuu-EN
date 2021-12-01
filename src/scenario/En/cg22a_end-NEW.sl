
; while the customer leaves.
@route id=4 route=d:4,r:2,d:3 spd=4

; customer has left the store.
@invisible id=4 type=on

; the owner moves aside.
@route id=2 route=l

; iris walks up.
@route route=u spd=4

; the owner moves behind iris and strips her.
@route id=2 route=d,r
@dir id=2 dir=u
@wait t=500
@fade type=out t=500
@equip_restore etypeid=4
;@change f=iris_nowBody num=0
@fade type=in t=500
@wait t=500

; iris walks around the counter.
@through type=on

@dir id=2 dir=r
@route route=r:3 spd=4
@dir dir=l
@wait t=100
@if eval=true ok=calc:$gameMap.setDataMany([6,4,1,3184],[6,5,1,3184],true);
@wait t=100
@route route=d:3 spd=4
@dir id=2 dir=d
@route route=l:3 spd=4
@dir dir=u
@move_speed

@through type=off
