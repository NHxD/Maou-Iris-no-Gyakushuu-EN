
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event 3: Fallen asleep: Third stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ Inn of the Royal Capital

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Drink

@bgm f=dungeon2

@huki id=9 b=3 wt=1
[Receptionist] (Just drink it and have a good, long and deep sleep... Hehehe!)

;; Situation ■ Iris gazes at the drink

@wait t=500
@huki b=8 wt=1
@move_f f=iris@reisyo in=r t=300

[Elise]「...」

@huki id=9 b=6 wt=1

[Receptionist]「...? Wha― Hm... Anything wrong, miss?」

; REMOVED
;@huki b=8 wt=1
; NEW
@huki b=9 wt=1
@bs f=iris@kanasimi

[Elise]「Hey, you added something special to the drink, right?」

; REMOVED
;@huki id=9 b=2 wt=1
@huki id=9 b=1 wt=1

[Receptionist]「Oh? Uh... Well, yes... I added squeezed juice from fresh fruits and uh...some healthy herbs that helps with sleeping―」

; REMOVED
;@huki b=8 wt=1
; NEW
@huki b=9 wt=1
@bs f=iris@bisyo

[Elise]「So that's it. Whenever I have this drink, I always end up sleeping like a log until the next morning. This drink is really good!」

[Elise]「*gulp* *gulp*」

;; Situation ■ Iris drinking a drink

@wait t=1000

[Receptionist]「Ohhh... I'm just glad that you enjoy it, thank you very much!」

@huki id=9 b=8 wt=1

; NEW
@huki id=9 b=6

[Receptionist] (Phew... She's not aware of my fraudulent scheme, after all. Yep, she's even drinking it again...)

@wait t=1000

[Elise]「Ahhh... That hit the spot.」

;; Situation ■ Iris finished drinking and handed it to the receptionist

; REMOVED
;@huki id=9 b=1 wt=1
; NEW
@huki id=9 b=3 wt=1

[Receptionist]「Yes, I'll take you to your room now, miss.」

@move_f f=iris@bisyo out=r t=300

;; Effect ■ Fade to black
