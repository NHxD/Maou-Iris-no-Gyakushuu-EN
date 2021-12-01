
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Merchant: Second stage

;; Background ■ Prostitute room

@bgm f=dungeon3

@huki id=1 b=4 wt=1

[Merchant]「Hah hah hah... Make me happy today, Elise.」

@move_f f=iris@kanasimi body=oiran in=r t=300
[Elise] (Ugh... I'm so tired of having sex with this man...)

[Elise] (Well, I still want the money, so I'll put up with it for a little while longer...)

@move_f f=iris@kanasimi out=r t=300

;; Effect ■ Darkness
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
