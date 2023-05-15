
;; ■ Small Village
;; *Event occurrence conditions: Arrive at the frontier village "Freon".
;; *There are residents who are about to be attacked by orcs when they enter the village.

@bgm f=Town2

@move_f f=iris@bisyo in=r t=300

[Elise]「What's happening over there?」

[Elise]「It's unusual to see orcs and humans together.」

@move_f f=iris@bisyo out=r t=300

@bgm

@map_scroll dir=u dis=2 spd=6
@wait t=1000

@bgm f=Dungeon2

@huki id=11 b=3

[Orc 1]「Ahah! There's nowhere to run!」

@huki id=8 b=6

[Resident 1]「Oh no!」

@huki id=9 b=3

[Orc 2]「Ah! What a pity! Only a few more steps and you'd have been outta the village!」

@huki id=11 b=4

[Orc 1]「Hey... Let's not kill the man right away...\nLet him watch us having fun with his wife first! Ahahah!」

@huki id=8 b=6

[Resident 1]「Oh no!」

@route route=u wt=1
@move_f f=iris@kougeki1 in=r t=300

[Elise]「Step aside, fools.」

@dir id=8 dir=d
@dir id=12 dir=d
@huki id=8 b=1
; REMOVED
;@huki id=12 b=1

[Resident 1]「Please, please, you got to help us!」

@huki b=2

; REMOVED
;@bs f=iris@kanasimi
; NEW
@bs f=iris@kougeki1

[Elise]「Requesting help from the Devil. Are you stupid, human?」

; NEW
@bs f=iris@kanasimi

[Elise] (Well, I do look like a human at the moment...)

@huki b=8
@bs f=iris@kuyasii
; REMOVED
;@wait t=1500
; REMOVED
;@bs f=iris@kanasimi

[Elise] (And I should have known... Orcs always bully those who are weaker than themselves.)

; NEW
@wait t=500

@bs f=iris@kougeki1

[Elise]「No. It's none of my business.」

@huki id=12 b=1

[Resident 2]「Oh no! Please, please, help us. Please don't leave us to die!」

; REMOVED
;@bs f=iris@takawarai
; NEW
@bs f=iris@kougeki1

[Elise]「I won't save you, stupid human. For the last time, step aside!」

;; Dot picture move: Iris ignores and tries to enter the village.

@move_f f=iris@reisyo out=r t=300

; NEW
@dir id=12 dir=l wt=0

@dir id=8 dir=turn_l wt=0
@fb id=8 dir=back wt=1
@route route=u:2 wt=1

@huki id=11 b=2

[Orc 1]「Stop right there!」

@move_f f=iris@kougeki1 in=r t=300

[Elise]「Get out of my way, you ugly pigs! I have something to do in this village.」

@huki id=11 b=5

[Orc 1]「How dare you call us ugly, you little bitch!」

@huki id=9 b=5

[Orc 2]「Let's see how you get past us!」

@huki b=7
; REMOVED
;@bs f=iris@kuyasii
; NEW
@bs f=iris@kougeki2

[Elise]「Dammit! You stupid orcs!」

@move_f f=iris@kuyasii out=r t=300

;; Event battle: Orcs x 2
;; *If you lose, game over or rematch
