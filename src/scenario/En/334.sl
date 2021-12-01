
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of the father in the tool shop: 1st stage

;; Background ■ Tool shop

@bgm f=dungeon5
@huki b=8 wt=1

[Elise]「Ugh...」

@move_f f=iris@kanasimi in=r t=300

[Elise]「Uh? What...was I...doing?」

@dir dir=r wt=1
@wait t=600
@dir dir=l wt=1
@wait t=600
@dir dir=u wt=1
@wait t=600
@huki b=7 wt=1

@bs f=iris@kuyasii

[Elise] (Why...my head hurts when I try to remember...)

; REMOVED
;@huki b=3 wt=1
; NEW
@huki id=2 b=3 wt=1

[Item shop owner]「Thank you so much for today, Elise.\nIf you want to look after the shop for me again, you're always welcome.」

;; Hypnotic sound (ultrasonic sound like bell)

@se f=催眠行使
@flash t=300
@huki b=8 wt=1

@bs f=iris@kanasimi

[Elise]「Ah? Y―Yes. Although it's troublesome to keep shop, I'll come back if I feel like it.」

@huki id=2 b=4

[Item shop owner]「Yes, please come back whenever you feel like it. Plenty of times. Hehehehe～♪」

@move_f f=iris@kanasimi out=r t=300

;; Jump ■ To the next scene
