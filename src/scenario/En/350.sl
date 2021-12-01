;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ "Royal" room (midnight)

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Drink
;; Situation ■ The receptionist man invades with a duplicate key

@bgm f=dungeon2
@se f=Open1 vol=90
@variables id=201 val=1 calc=0
@route id=2 route=u:4,l:2,u:3 wt=1
@dir id=2 dir=l
@wait t=500
@huki id=2 b=3 wt=1

[Receptionist]「Hehehe...」

[Receptionist] (All right, have a good night sleep now. Accepting free drinks from strangers, how careless! Hehehe...)

;[Receptionist] (I'm so glad to have made duplicate keys of every room and stocked on sleeping pills.)

[Receptionist] (I would most certainly get fired if someone finds out what I do to guests... But I just can't help it.)

[Receptionist] (How could I forget the thrill I felt when I stole the virginity of that aristocrat maiden... Hehehe!)

[Receptionist] (... Or that naughty girl who kept coming while she was still sleeping...)

@huki id=2 b=4 wt=1

[Receptionist] (Anyway... Let's start by stripping this girl off her pretty clothes... Hehehehe!)

;; Effect ■ Fade to black
