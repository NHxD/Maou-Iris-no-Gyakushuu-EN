
;; ■ East Island / Farm
;; ● Royal Route
;; ※ voice

@bgm f=battle7

[???]「*whistle*」

[???]「I found her! She is over there! Quick!」

;; Samurai Appears, Surrounds Iris

@variables id=201 val=1 calc=1

@route id=9 route=r:6,u:1,r:1 wt=0
@route id=8 route=r:9 wt=0
@route id=10 route=r:12,u:3,l:1 wt=1
@dir id=8 dir=up wt=1

@dir dir=r wt=1
@wait t=500
@dir dir=l wt=1
@wait t=500
@dir dir=d wt=1
@wait t=500
@huki b=2 wt=1

; REMOVED
;@move_f f=iris@reisyo in=r t=300
; NEW
@move_f f=iris@odoroki in=r t=300

[Elise]「What? Who are―」

[Samurai]「We found you! It is you! You are foreign woman!」

@huki b=5 wt=1
@bs f=iris@ikari

[Elise]「How dare you speak to me like that!」

[Elise]「Tsk... Looks like someone needs to teach you humans good manners...」

[Samurai]「Men, catch her!」

@huki b=8 wt=1
@bs f=iris@kougeki1

[Elise]「As if I'm gonna let you, fools.」

@move_f f=iris@kougeki1 out=r t=300

;; Event battle: Samurai (The story continues even if you lose in battle.)
