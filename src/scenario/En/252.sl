
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Merchant: Second stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1
@bgm f=dungeon5

[Merchant]「Hah... It was great, Elise. Beautiful foreign girl♪ Your vagina has become the shape of my penis! Hah hah hah!」

;; Situation ■ The merchant is leaving

@route id=1 route=d:9 wt=1
@se f=Open1 vol=90
@switches id=208 val=1
@wait t=500
@dir dir=d
@huki b=8 wt=1
@move_f f=iris@kanasimi body=oiran in=r t=300

[Elise]「Phew... I'm so exhausted... Mmm...」

@bs f=iris@kuyasii
[Elise] (It was so uncomfortable with that man... Would it be too rash to kill him?)

[Elise] (Forget it, after all, he's my moneymaker now...)

@move_f f=iris@kuyasii out=r t=300

;; Jump ■ To the next scene
