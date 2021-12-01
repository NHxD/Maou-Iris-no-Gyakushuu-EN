
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub Event 1: Prostitution: Aristocrat: 1st Stage General Purpose

;;Background ■ Grand City

@bgm f=dungeon3

[Aristocrat]「What is it, Elise? If you need something from your master, I hope that you can correct your manners.」

@huki b=8 wt=1
@move_f f=iris@ikari_hoho in=r t=300

[Elise]「Ugh... You're really taking advantage of my situation...」

; NEW
@bs f=iris@kougeki2_hoho

[Elise]『Ma...master, please let me...serve you.』

; REMOVED
;@move_f f=iris@ikari_hoho out=r t=300
; NEW
@move_f f=iris@kougeki2_hoho out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
