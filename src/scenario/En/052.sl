
;; ■ Harvest Town / Weapon Shop
;; ※ To the weapon shop

@huki id=2 b=8

[Weapon seller]「Welcome back. Are you going to buy a weapon?」

@move_f f=iris@takawarai in=r t=300

[Elise]「Not right now... I took care of the bandits.」

@bgm f=Ship3
@huki id=2 b=1

[Weapon seller]「What? All by yourself?」

@huki b=5
@bs f=iris@kougeki2

[Elise]「Yes... I killed all the bandits but the people here still refuse to talk to me!」

@huki id=2 b=8

[Weapon seller]「Well, they're scared and they don't know you... so they have no reason to believe you.」

@huki id=2 b=1

[Weapon seller]「Oh, I know. I'll go outside with you.」

@move_f f=iris@kougeki2 out=r t=300

@bgm

;; ※ Forced movement after dark→Mayor's house
