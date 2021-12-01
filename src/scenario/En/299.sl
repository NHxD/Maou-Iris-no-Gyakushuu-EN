
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub Event 1: Prostitution: Aristocrats: Third Stage

;; Background ■ The Grand City

@bgm f=dungeon3

[Aristocrat]「Here again? Well, well...」

@huki b=8 wt=1
@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Pervert Master, please let me use my body to serve you.」

@huki id=14 b=3 wt=1
@bs f=iris@reisyo_hoho

[Aristocrat]「Oh, wonderful. I admit you have a certain talent for this. My penis is swelling with expectations, ahaha!」

@huki b=8 wt=1
@move_f f=iris@reisyo_hoho out=r t=300

[Elise]「Well, yes... Thank you, go die, Master.」

;; Effect ■ Dark

@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
