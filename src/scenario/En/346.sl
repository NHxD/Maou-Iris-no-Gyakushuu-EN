
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ "Royal" room

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Don't drink\

;; ■ If you select "Sleep in bed", you will have a break.

@bgm f=Town1

@move_f f=iris@kuyasii in=r t=300

[Elise]「Just going to have a little nap. Oooh～ I really can't go on without a break...」

@move_f f=iris@kuyasii out=r t=300

;; Effect ■ Dark (map movement)
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1

