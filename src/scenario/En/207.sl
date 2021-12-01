
;; ○ Event battle: Holy God (event occurs when HP is below 60%)

; FIXME: the game freezes here and I'm not sure why?

@move_f f=sion@ikari1 in=l t=150
@se f=Flash2
@flash t=500

[Chiot]「Aaaaaaaaahhh...!!!」

@move_f f=sion@ikari1 out=l t=150

; NEW
@wait t=100

; NEW
@dir_fix id=7 type=on
; NEW
@through id=7 type=on
; NEW
@c_jump id=7 x=1 y=-2

; REMOVED
;@anime id=1 num=27 wt=1
; NEW
@anime id=1 num=27 wt=0

; NEW
;@c_jump id=7 x=-1 y=0
;@c_jump id=7 x=2 y=0
;@c_jump id=7 x=-2 y=0
;@c_jump id=7 x=1 y=0
; NEW
@wait t=200
; NEW
@c_jump id=7 x=-1 y=2
; NEW
@through id=7 type=off
; NEW
@dir_fix id=7 type=off

; REMOVED
;@wait t=1000
; NEW
@wait t=1200

; NEW
@huki id=7 b=7 wt=1

@move_f f=sion@kanasimi in=l t=300

[Chiot]「He... He's too strong, Elise...」

@move_f f=iris@kougeki2 in=r t=300
@bs f=sion@tuujou

[Elise]「Just keep trying... He's the mightiest God among all Gods. He won't falter so easily.」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@kougeki2 out=r t=300

@mes_win back=1 pos=1
@flash t=100
@wait t=100
@flash t=100
@wait t=100
@flash t=500

\fw:\m『ALL EVIL MUST BE DESTROYED!!!』


