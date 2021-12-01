
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Sweaters: 1st stage general purpose

;; Background ■ Prostitute room

@bgm f=dungeon3

@move_f f=iris@reisyo body=oiran in=r t=300

[Elise]「You're back already, uh?」

@huki id=1 b=3 wt=1

[Playboy]「Ah? I said that I would come back, right? Please don't glare at me so coldly! Hahaha... ♪」

@move_f f=iris@reisyo out=r t=300

;; Effect ■ Darkness
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
