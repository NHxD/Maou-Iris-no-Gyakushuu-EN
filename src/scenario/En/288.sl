
;; ■ Small Village
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub Event 1: Prostitution: Third Stage

;; Background ■ Fron Village

@bgm f=dungeon3
@huki id=7 b=4 wt=1
[Young man]「Hello, cute Elise! Well then, what shall we do today? ～♪」
@move_f f=iris@kuyasii in=r t=300

[Elise]「Well, whatever you're thinking, it'll cost you extra.」
@move_f f=iris@kuyasii out=r t=300
@huki b=8 wt=1

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1

