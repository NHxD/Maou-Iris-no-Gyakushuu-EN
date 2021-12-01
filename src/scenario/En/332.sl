;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of the father in the tool shop: Introduction

;; Background ■ Tool shop

;; Situation ■Iris talking to a tool shop
;; ■ After that, an event occurs when you talk with three "Evil Eye's Eyes"
;; ■ Event occurrence conditions: Possessing 3 eyes of Evil Eye
;; ■ I have
;; Selection ■ Selection 1: Pass the eyes of Evil Eye / Selection 2: Buy tools
;; Flying destination ■ 1: Evil Eye

@bgm f=field5

; NEW
@huki b=8 wt=1

@huki b=3 wt=1

@move_f f=iris@bisyo in=r t=300

[Elise]「Well, it seems to be of good quality, so I guess it was worth the wait, after all...\nWell, I'll be going now.」

@move_f f=iris@bisyo out=r t=300

@route route=d:2 wt=1
@huki id=2 b=1

[Item shop owner]「Ah! Wait, wait!」


@dir dir=u wt=1
@huki b=5
@move_f f=iris@kougeki1 in=r t=300

[Elise]「What now?! Don't make me any more frustrated.」

@switches id=160 val=1

[Item shop owner]「Ah... Could you...look at this mirror for just a second?」

@huki b=2
@bs f=iris@ikari

[Elise]「What?! Why do you want me to do this? If it ends up being a waste of my time, I swear that I'm going to smash your stupid mirror.」

@c_jump id=2
@huki id=2 b=6

[Item shop owner]「Ah! Please don't... But I can assure you that you won't be disappointed. So go on... Just take a brief look at it.」

;; Situation ■ Iris looking into the mirror

@move_f f=iris@ikari out=r t=300

@route route=u:2 wt=1
@wait t=1000
@huki b=8 wt=1
@wait t=500
@huki b=5
@move_f f=iris@kougeki1 in=r t=300

[Elise]「Well...what is it then? It's just an ordinary mirror.」

@huki id=2 b=6 wt=1

[Item shop owner]「Ah. How― Hm... Could you please look at it carefully once more?」


@huki b=8 wt=1
@huki b=7
@bs f=iris@ikari


[Elise]「Tsk, fine. Well... Nothing unusual. It's just a stupid mir―」

@bgm f=dungeon2

@huki b=1
@bs f=iris@odoroki
@anime num=303 wt=1


[Elise]「―A magic mirror?! Ngh... No, no! If I keep staring at it, I will...I will...」

@anime num=303 wt=1
; REMOVED
;@wait=2000
; NEW
@wait t=2000

[Elise]「Ngh... I...can...not...stop. Aaah... No...no. But...ohhh～」

@anime num=101 wt=1

; NEW
@anime num=34 wt=1
; NEW
;@se f=催眠行使
; NEW
@flash t=300

@bs f=iris@saimin
; REMOVED
;@wait=500
; NEW
@wait t=500

;; Situation ■ Iris going into hypnosis

@huki id=2 b=3 wt=1


[Item shop owner]「Good. I was starting to doubt that it would work at all! Normally, the hypnosis takes effect right away. But somehow, it took longer with you.」

@huki id=2 b=4 wt=0

[Item shop owner]「But you see... I could activate the mirror's hypnotic effect only thanks to the demon eyeballs that you gave me. Hehehehe～♪」

@huki id=2 b=8 wt=0

[Item shop owner]「So... Let the fun begin. Hehehehe～♪」

@move_f f=iris@saimin out=r t=300
@c_jump id=2

;; Effect ■ Darkness
@bgm

;; Jump ■ Sub-event 2: Hypnosis of the father in the tool shop: Go to the first stage
