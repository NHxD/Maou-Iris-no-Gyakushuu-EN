
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Merchant: 1st stage general purpose

;; Background ■ Prostitute room

@bgm f=dungeon3
@huki id=1 b=4 wt=1

[Merchant]「Hah hah hah... Serve me and make me happy today, Elise.」

@move_f f=iris@bisyo body=oiran in=r t=300

[Elise]「... Of course, you paid for my services after all.」

@move_f f=iris@bisyo out=r t=300

;; Effect ■ Darkness
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1

