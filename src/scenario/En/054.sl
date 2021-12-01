
;; ■ Near Harvest Town
;; ⑨ a carriage passes by, there is a noise from inside

@bgm f=Town3

[???]「Hey, Sela! You're too close!」

[???]「Heh ♥ I won the rock-paper-scissors game, so it's my due right! ♥」

[???]「What are you even talking about?!」

@huki id=6 b=6
@c_jump id=6

[???]「Woah... The carriage is swaying dangerously!\nGet back to your seat and stay calm, please!」

;; Dialogue after Iris silence balloon
@huki b=8

@move_f f=iris@kuyasii in=r t=300

[Elise]「Ugh... I hate noisy humans!」



@huki b=5
@bs f=iris@kougeki2

[Elise]「Should I blow up their carriage...?」

@huki b=2
@bs f=iris@syuuti

[Elise]「Wait― Why does this voice seem familiar, though? Maybe I heard it somewhere else before?」

@huki b=8 wt=1
@bs f=iris@bisyo

[Elise]「Ugh... I must be out of my mind. I don't have any human acquaintance, so how could I possibly know this voice?!」

@move_f f=iris@kanasimi out=r t=300

;; Iris moving forward. After dark, in the town

@route id=5 route=r:5 wt=0
@route id=6 route=r:5 wt=0
@route route=l:2,u,l:4 wt=0

@bgm
