
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event: Prostitute event: Sakuya: Evil officer: Second stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1
@bgm f=field5

@move_f f=sakuya@emi body=oiran in=r t=300
[Corrupt deputy official]「You really have a promising future, hun... You were able to get familiar with the job in the whorehouse so quickly.」

[Sakuya]「Yes, thank you for your praise... But that is only because of you, my Lord ♥」

@bs f=sakuya@kuyasii
[Sakuya] (Why is he treating me like a little girl? At least, I am kunoichi... I just do not have much experience.)

@move_f f=sakuya@kuyasii out=r t=300

;; Effect ■ Darkness
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
