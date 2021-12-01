
;; ● True Demon King Route (plays back against the hero)

;; Battle with the Holy Knights that appear, multiple times

@bgm f=battle5

@move_f f=iris@ikari in=r t=300

@huki id=1
[Elise]「Leave now if you value your life! Because I will show no mercy to anyone standing between me and the Hero!」

@move_f f=iris@ikari out=r t=300

@huki id=18 b=8
[Paladin]「Ahhh... Is it even possible to stop her?!」

@dir_fix id=18 type=off
@dir id=18 dir=right wt=0
@change id=18 f=Damage1 num=1
@se f=Blow6

;; The devil who goes further
