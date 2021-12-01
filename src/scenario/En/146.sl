
;; ■ Castle Underground Temple
;; ● Royal Route
;; Branch: Defeat

@bgm f=Scene3

@huki b=1 wt=0
@anime num=96 wt=1
@change num=1
@fb dir=back spd=5
@move_speed

@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Ahhh... How come?!」

;; Great Priest, return to human form
@anime id=15 num=49 wt=0
@switches id=302 val=0

[High Priest]「Hehehe! How can you call yourself the Devil when you have so little power?」

@bs f=iris@kanasimi_hoho

[Elise]「N―Ngh...」

@fb id=15 dir=for num=3

[High Priest]「Now the weed is going to play with you. Hahaha!」

@bs f=iris@odoroki_hoho

[Elise]「What...?!」

@move_f f=iris@odoroki_hoho out=r t=300

; NEW
@huki id=15 b=4 wt=0
; NEW
@c_jump id=15 x=0 y=1
