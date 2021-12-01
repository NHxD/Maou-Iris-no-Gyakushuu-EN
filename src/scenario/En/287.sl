
;; ■ Small Village
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub Event 1: Prostitution: Second Stage General Purpose

;; Background ■ Fron Village

@bgm f=dungeon3
@huki id=7 b=4 wt=1

[Young man]「Heh heh heh... I'm looking forward today to being sucked by cute Elise!」
@move_f f=iris@kuyasii in=r t=300

[Elise]「Well, I really don't get why you're enjoying this kind of thing... But hey, as long as you're paying me, I won't complain.」
@move_f f=iris@kuyasii out=r t=300
@huki b=8 wt=1

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
