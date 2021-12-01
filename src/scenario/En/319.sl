
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Boy: Second stage general purpose

;; Background ■ Port town, Haldoor

@bgm f=field5
@huki id=6 b=3 wt=1

[Rich boy]「Hey, can we do it again? I have money, big sis!」

@huki b=8 wt=1
@move_f f=iris@kanasimi in=r t=300

[Elise]「I said that we'd do it only once, have you forgotten already?」

; NEW
@bs f=iris@takawarai
[Elise]「... Or is it that you can't forget me? Ohoho～♪」

@wait t=600
@bs f=iris@bisyo

[Elise]「But well, if you're willing to pay more... Then perhaps I could make an exception and do it one more time...」

@move_f f=iris@bisyo out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
