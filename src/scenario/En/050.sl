
;; ■ Rocky Mountain / Bandit Hideout
;; ● Branch: Victory

@bgm f=battle6

@huki id=4 b=1

[Bandit Leader]「Ngh... So powerful...」

@huki b=3
@move_f f=iris@takawarai in=r t=300

[Elise]「You should feel honored that it is I, the Devil, that ended your miserable life.」

@huki b=8 wt=1

@wait t=500

@bgm f=Town2
@huki b=6
@bs f=iris@odoroki_hoho

[Elise]「Darn it! I was too careless and killed them all before I got to ask again about the Hero!」

@huki b=7
@dir dir=d
@bs f=iris@takawarai_hoho

[Elise]「Oh well... It can't be helped.」

@bs f=iris@bisyo

[Elise]「And I may be able to get the information from the townsfolk, now that the bandits have been dealt with.」

@move_f f=iris@bisyo out=r t=300

;; * Demon King returns to the town. But the situation has not changed
