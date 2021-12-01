
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Aristocrat: Third stage general purpose

;; Background ■ King, Grand

@bgm f=dungeon3

@move_f f=iris@bisyo in=r t=300

[Elise]「Master, please let me use my body to serve you.」

@huki id=14 b=4 wt=1

[Aristocrat]「Well, how can I refuse when you ask so nicely. Hehehe～♪」

@huki b=8 wt=1
@bs f=iris@kuyasii_hoho

[Elise] (Damn that pervert master. How humiliating it is for the Devil to speak in such a submissive manner.)

@move_f f=iris@kuyasii_hoho out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
