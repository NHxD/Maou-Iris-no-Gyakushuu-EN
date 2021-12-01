
;; ★Diesel Mine "RPG2 Planning"
;; ■Sub-event 3: Sleep attack: 1st stage general purpose

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ Inn of the royal capital

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Drink

@se f=Open1 vol=90
@variables id=201 val=1 calc=0
@route id=2 route=u:4,l:2,u:3 wt=1
@dir id=2 dir=l
@wait t=500
@huki id=2 b=3 wt=1
