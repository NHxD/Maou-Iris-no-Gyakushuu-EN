
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-events 5 and 6: Prostitutes: Zexy

;; ■ Event occurrence conditions: If Iris has never sold himself

;; Background ■ House of Prostitute

@bgm f=Scene5
[Butler]「Welcome to The Whorehouse. Every woman is welcome here. What is the reason of your visit, ma'am?」

@move_f f=iris@ikari in=r t=300

[Elise] (What?! Prostitution?! This has nothing to do with me.)

@bs f=iris@reisyo
[Elise]「Nothing, forget it.」

@move_f f=iris@bisyo out=r t=300

@huki id=7 b=7 wt=1
[Butler]「Well, that's a shame.」
