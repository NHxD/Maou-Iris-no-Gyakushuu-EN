
@wait t=600

@flash col=255,0,0,255 t=200
@se f=Thunder12

@wait t=100
;@c_jump id=7 y=0
;@fb id=7 dir=back spd=2
;@fb id=7 dir=back spd=1
@change id=7 num=1 wt=0

;@flash col=255,0,0,255 t=500
;@se f=Thunder12

;@c_jump y=0
;@fb dir=back spd=2
;@fb dir=back spd=1
@change num=1

@wait t=600
@fade type=out t=1500
