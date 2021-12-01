
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ "Royal" room

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Drink

@bgm f=Town1

@move_f f=iris@bisyo in=r t=300
[Elise]「This room seems all right...」

@huki b=8 wt=1
@bs f=iris@kanasimi

[Elise]「... Hah. Weird. I'm not really tired, yet I can't keep my eyes open... Oh well, guess I'll take a nap now...」

@move_f f=iris@kanasimi out=r t=300

;; Situation ■ Iris goes to bed and goes to sleep

;; Effect ■ Fade to black
