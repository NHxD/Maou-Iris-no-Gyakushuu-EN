
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Falling asleep: Second stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ "Royal" room

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Drink
;; Situation ■ Iris wakes up

;; Sound effects ■Tweet of small birds Pippi, Chun Chun, etc.

@bgm f=dungeon5

@move_f f=iris@kanasimi body=sitagi in=r t=300
[Elise]「... Huh? I'm feeling weird... I was sleeping well but...」

@wait t=1000

; REMOVED
;@bs f=iris@odoroki op2-hatena
; NEW
@bs f=iris@odoroki op2=hatena
[Elise]「... Uh? What... Why are there stains on the bedsheets...?!」

@huki b=8 wt=1

@bs f=iris@kanasimi
[Elise] (It doesn't seem to be sweat... Wait?! Eww～ It's all sticky and stinky.)

; NEW
@move_f f=iris@kanasimi body=sitagi out=r t=300

@dir dir=r
@wait t=600
@dir dir=l
@wait t=600
@dir dir=u
@wait t=600
@dir dir=d
@wait t=600

; NEW
@move_f f=iris@kanasimi body=sitagi in=r t=300

[Elise] (I can't possibly have wet the bed?! Ahah no. But then what is it? Has someone poured something on the bed?)


@bs f=iris@kuyasii

[Elise] (But if a human indeed came in... I should have sensed it and woke up right away.)

@bs f=iris@kanasimi
[Elise] (Tsk... Forget it. I will just be more careful from now on... I won't let this incident ruin a refreshing morning.)

@move_f f=iris@kanasimi out=r t=300
;; Jump ■ To the next scene
