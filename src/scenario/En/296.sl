
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub Event 1: Prostitution: Aristocrats: Second Stage

;; Background ■ Grand Kingdom

@bgm f=dungeon3
[Aristocrat]「Hmm, again today? You're really enjoying this, hm?」

@huki b=8 wt=1
@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Tsk... Y―Yes, Master. I'll serve you today. Ugh.」

@huki id=14 b=8 wt=1

[Aristocrat]「Oh my goodness, you're not gracious at all. But well... that's good too.」

@bs f=iris@kanasimi_hoho
[Elise]「Hurry up, Pervert Master. Stop talking and do it quick.」

@move_f f=iris@kanasimi_hoho out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1;;効果■暗転
