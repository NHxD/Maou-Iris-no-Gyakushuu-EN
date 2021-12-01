
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Playboy: Third stage general purpose

;; Background ■Prostitute room

@bgm f=dungeon3
@huki id=1 b=4 wt=1

[Playboy]「Hi, dear Elise. May I trouble you again today?」

@move_f f=iris@emi body=oiran in=r t=300

[Elise]「I already told you... In this place, I'll let you do anything you want with me. Well that is, if you have the money. ～♪」

@move_f f=iris@emi out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1

