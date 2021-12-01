
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Merchant: Third stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1
@bgm f=dungeon3

[Merchant]「Ah... I will fuck you and make you mine today! Ah ah ah!」

@move_f f=iris@kanasimi body=oiran in=r t=300
[Elise]「Well, do as you like.」

@bs f=iris@kuyasii op2=konwaku
[Elise] (Tsk... His laugh is so repugnant... And the way he speaks is also so annoying...)

[Elise] (No matter how you look at it, he's one repulsive old man. But this is the job...)


@move_f f=iris@kuyasii out=r t=300

;; Effect ■ Darkness
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
