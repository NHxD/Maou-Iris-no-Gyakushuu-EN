
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ "Royal" room (midnight)

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Drink
;; Situation ■ Iris wakes up

@bgm f=Town1
@huki b=8 wt=1

[Elise]「Wow, it's already in the morning?! Ahah... I must have slept really well...」


@move_f f=iris@bisyo body=sitagi in=r t=300

[Elise]「I really had a good night's sleep. This room is quite comfortable.」

@move_f f=iris@bisyo out=r t=300

;; Situation ■ Iris leaves the room

;; Jump ■ To the next scene
