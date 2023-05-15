
;; ■ Royal Castle / 2F / Lannan's Room
;; ● 2nd place in succession to the throne

;; screen, return to the original
;; There is Iris and Sonia

@bgm f=field5

@move_f f=sonia@emi in=l t=300

[Sonia]「Lady Elise! Where have you been? As expected, my brother is innocent!」

@move_f f=iris@reisyo in=r t=300

[Elise]「Ahah... That's what you really think, uh?」

@bs f=sonia@odoroki

[Sonia]「What I think?」

@bs f=iris@emi

[Elise] (Well, I already made him my puppet. Now I just need to keep this from her, and enjoy her expression when she will learn the truth ♪)

@bs f=iris@bisyo

[Elise]「Everything is in place now. I have total control over the royal family. So far, everything is going according to plan...」

@bgm

@bs f=sonia@odoroki

[Sonia]「Wah～ Lady Elise!」

; REMOVED
;@bs f=iris@odoroki_z body_op=z
; NEW
@zoom_f f=iris@odoroki_z src=iris@bisyo in=r t=300

[Elise]「Uh? Ah—」

@bgm f=battle7

; REMOVED
;@bs f=iris@odoroki
; NEW
@zoom_f f=iris@odoroki src=iris@odoroki_z out=r t=300

@move_f f=sonia@odoroki out=l t=300

;; Dark Knight Zexy appears

@invisible id=12 type=off
@anime num=214

@fb id=2 dir=back spd=5

@huki b=1
@bs f=iris@ikari

[Elise]「What?! Who are you?!」

@dir id=12 dir=r wt=1

@move_f f=zexy@odoroki in=l t=300

[Zekushi]「This is surprising... To think this flat-chested girl is actually Devil Iblis...」

@bs f=iris@ikari

[Elise]「You... How did you figure out my real identity?!」

@bs f=zexy@ikari

[Zekushi]「I will show you no mercy...even if you are a cute little girl. Your evil conspiracy has already been seen through by God!」

@bs f=iris@odoroki

[Elise]「God?!」

;; Iris catches Zexy's attack
@anime num=215

[Zekushi]「I have received the oracle that you will deracinate the Elven Forest.」
[Zekushi]「Henceforth I have been tracking you all this time. I cannot let you accomplish your evil plans!」

;; Surrounded by Iris, Zexy and soldiers
@invisible id=14 type=off
@invisible id=28 type=off
@invisible id=29 type=off
@route id=14 route=d:4,r:2 wt=0
@route id=28 route=d:4,r:2 wt=0
@route id=29 route=d:4,r:2 wt=0

; REMOVED
;@move_f f=zexy out=l t=300
; NEW
@move_f f=zexy@ikari out=l t=300

@bs f=iris@ikari

[Elise]「Tsk... God, uh? A real nuisance, as always.」

@move_f f=zexy@kuyasii1 in=l t=300

[Zekushi]「You demon! You used magic to control Princess Sonia?!」

@bs f=iris@bisyo

; NEW
@huki b=3

[Elise]「I don't know what you're talking about. Hehe ～♪」

@bs f=zexy@sikari

[Zekushi]「That's right, pretend to know nothing, but I will figure it out soon enough. Devil Iblis, I sha―」

@bs f=iris@ikari

[Elise]「Sonia, come over here! Quick!」

[Sonia]「Wh―Why?」

@move_f f=iris@ikari out=r t=300

;; Escape with Iris and Sonia
@anime num=208
@invisible type=on
@invisible id=2 type=on

@bs f=zexy@ikari

[Zekushi]「You cannot escape...」

@move_f f=zexy@ikari out=l t=300

;;27：

;; Background ■ Screen black
@bgm
@fade type=out t=1000

........................

;;@wait t=1000
;;@fade type=in t=1000 wt=1
