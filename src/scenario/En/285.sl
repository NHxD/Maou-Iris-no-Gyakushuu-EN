
;; ■ Small Village
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub Event 1: Prostitution: Second Stage

;; Background ■ Fron Village

@bgm f=dungeon3

@huki id=7 b=4 wt=1

[Young man]「Would it be okay to ask for your services again today? I feel like this would become a habit.」

@move_f f=iris@reisyo in=r t=300

[Elise]「Well, as long as you can afford it, I'll do it any time. I'm in just for the money, you know.」

@huki b=8
@move_f f=iris@reisyo out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
