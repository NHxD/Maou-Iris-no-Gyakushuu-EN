
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ Inn of the Royal Capital

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Do not drink

@bgm f=Town1
@wait t=500

@move_f f=iris@reisyo in=r t=300
[Elise]「No thanks. I'm not thirsty right now.」

[Receptionist]「I see. Well then, I'll take you to your room.」

@huki id=9 b=7 wt=1
[Elise] (... You can't trick the Devil, foolish human. Nothing good is ever free. That drink must taste awful...)

@move_f f=iris@reisyo out=r t=300

;; Effect ■ Dark (map movement)
