
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of the father in the tool shop: 3rd stage

;; Background ■ Tool shop

@bgm f=field5


;; Situation ■ Customers return

@huki id=2 b=4

[Item shop owner]「Thank you for today. The customers looked very satisfied. Hehehehe～♪」

@huki b=7
@move_f f=iris@kougeki1 in=r t=300

[Elise]「Hmmm... What the hell are you talking about...? I can't remember anything.」

@huki id=2 b=4

[Item shop owner]「Don't worry about it, you were great! Well then, please look forward to next ti―」

@move_f f=iris@kougeki1 out=r t=300

;; Situation ■ Old man looks in the mirror

@switches id=160 val=1
@huki id=2 b=8 wt=1
@huki id=2 b=1
@c_jump id=2

[Item shop owner]「Oh no! The magic is almost gone already!」

@huki b=2
@move_f f=iris@kanasimi in=r t=300

[Elise]「What magic...?」

@switches id=160 val=0
@dir id=2 dir=u wt=1
@wait t=1000
@huki id=2 b=8 wt=1
@dir id=2 dir=d wt=1

[Item shop owner]「Um... M―Miss Elise. Please could you find me more demon eyeballs?」

@bs f=iris@syuuti

@huki b=2
[Elise]「What?」

@bs f=iris@kuyasii
@huki b=8 wt=1

@bs f=iris@kougeki1

[Elise]「No. It's too bothersome. Well, I'm leaving now.」

@move_f f=iris@kougeki1 out=r t=300
@dir dir=d

@huki id=2 b=6

[Item shop owner]「Hah... Could you please reconsider, Miss Elise? Miss?! If― If you don't, the mirror will... No! Please, come back!!!」

;; Situation ■ The father collapses and Iris leaves the store

@route route=d:3,r:2,d:3
