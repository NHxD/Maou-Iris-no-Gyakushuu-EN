
;; ■ East Island / Farm
;; ● Royal Route

@bgm f=battle6
@anime id=8 num=302 wt=0
@anime id=9 num=302 wt=0
@anime id=10 num=302 wt=0
@fb id=8 dir=back wt=0
@fb id=9 dir=back wt=0
@fb id=10 dir=back wt=1
@move_f f=iris@kuyasii op2=ase in=r t=300

@se f=床にドサッ
@variables id=201 val=2 calc=1

@wait t=600
@route id=12 route=r:7 wt=0
@route id=15 route=r:7 wt=0
@route id=14 route=r:7 wt=1

@dir dir=l
@huki b=7 wt=1

;; NEW
@bs f=iris@odoroki

[Elise]「What?! You humans are like cockroaches!」

;; NEW
@bs f=iris@kuyasii

[Elise] (Tsk... Normally, I would enjoy crushing them one after another...)
[Elise] (But in my current condition, I won't be able to keep this up for too long...)

;; Iris, when she sweats, she smokes.
@huki b=6 wt=1
@anime num=301 wt=0
@variables id=201 val=3 calc=1
@route id=13 route=d:3 wt=1

@move_speed spd=6
@c_jump x=-14 wt=0
@c_jump id=13 x=-14 wt=1
@move_speed spd=4

; REMOVED
;@bs f=iris@odoroki_z body_op=z
; NEW
@zoom_f f=iris@odoroki_z src=iris@kuyasii in=r t=300

[Elise] (Ehh...what the―)

; REMOVED
;@bs f=iris@odoroki
; NEW
@zoom_f f=iris@odoroki src=iris@odoroki_z out=r t=300

;; ※ Sakuya, appeared

[???]「Come here.」

@dir dir=right wt=0
@huki b=2 wt=0

[Elise]「Who are you?!」

[???]「Come on! Quick!」

@huki b=8 wt=1
@bs f=iris@kanasimi

[Elise]「Well, there's no time for hesitation...」

@move_f f=iris@kanasimi out=r t=300

;; Move map after dark
