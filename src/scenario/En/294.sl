
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Aristocrat: First stage

;; Background ■ Grand City

@bgm f=dungeon3

[Aristocrat]「Come see me again any time you need money, Elise. Remember that I'm your master.」

[Aristocrat]「However, you would do well to improve the way to address your master.」

@huki b=8 wt=1
@move_f f=iris@reisyo in=r t=300

[Elise]「Why you littl― Tsk... fine. I'll play along as long as you have the money.」

@bs f=iris@ikari
[Elise]「But if not, then I won't do it because I hate this... You sicko.」

;; Jump ■ To the next scene
@move_f f=iris@ikari out=r t=300
