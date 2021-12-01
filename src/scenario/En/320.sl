
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Boy: Third stage

;; Background ■ Port town, Haldoor

@bgm f=field5
@huki id=6 b=3 wt=1

[Rich boy]「Hey, big sis. We can do it today, right?」

@huki b=8 wt=1
@move_f f=iris@kuyasii in=r t=300

[Elise]「Well, guess it can't be helped. But only if you pay me, then maybe I can forgive you.」

@move_f f=iris@kuyasii out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
