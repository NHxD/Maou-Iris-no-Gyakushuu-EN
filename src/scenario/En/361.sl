
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Fallen asleep: Second stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ "Royal" room

;; Option ■ Option 1: Do not drink → Do not drink / Option 2: Drink → Drink
;; Flying ■ Drink
;; Situation ■ Iris wakes up

@bgm f=dungeon5
@huki b=8 wt=1

@move_f f=iris@odoroki body=sitagi in=r t=300
[Elise]「Ahhhh!!!」

@bs f=iris@kuyasii
[Elise]「It's already in the morning! Dammit... I must have fainted. What the hell happened then?!」

; NEW
@bs f=iris@kougeki2

[Elise]「How many times did he keep doing it while I was knocked unconscious?! DAMMIT! OH, I'M SO ANGRY!」

@huki b=5 wt=1

; NEW
@bs f=iris@kougeki1

[Elise]「Where the hell is he?! Dammit, that coward gave up his job and just ran away, uh?」

; NEW
@move_f f=iris@kougeki1 body=sitagi out=r t=300

@dir dir=r
@wait t=600
@dir dir=l
@wait t=600
@dir dir=u
@wait t=600
@dir dir=d
@wait t=600
@bs f=iris@kanasimi

; NEW
@move_f f=iris@kougeki1 body=sitagi in=r t=300

[Elise] (There are so many dried stains everywhere on the bedsheets... How many times did he ejaculated?! What am I going to do if I'm pregnant?)

@huki b=8 wt=1
@bs f=iris@kuyasii_hoho

[Elise]「I swear that I will find you and I will burn your soul with the fire of hell! DAMN YOU!」

@move_f f=iris@kuyasii_hoho out=r t=300

;; Jump ■ To the next scene
