
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ Inn of the Royal Capital

@bgm f=Town1

[Receptionist]「Are you sure you want to stay in the "Royal" suite?」

@move_f f=iris@reisyo in=r t=300
[Elise]「Yes. I don't care how royal or luxurious it is, just prepare a room suitable for me to rest.」

[Receptionist]「Very well. A special luxury drink is offered on the house for premium guests like yourself. Would you like to drink it now?」

@huki b=8 wt=1
@move_f f=iris@reisyo out=r t=300

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
