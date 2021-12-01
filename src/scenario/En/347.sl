;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ Inn of the Royal Capital

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Do not drink

@bgm f=Town1

[Receptionist]「Thank you for your patronage. We look forward to your next visit!」

@move_f f=iris@bisyo in=r t=300

[Elise]「Well, I will most certainly come back. The bed was so comfortable... ～♪」

@move_f f=iris@bisyo out=r t=300

;; Jump ■ To free action
