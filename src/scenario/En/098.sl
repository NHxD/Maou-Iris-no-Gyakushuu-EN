
;; ■ Grand Kingdom - Road
;; ● Royal Route
;; ● Branch: Victory
;; The bandits lying down

@bgm f=Ship3

@fb id=6 dir=back wt=0
@fb id=7 dir=back
@fb id=6 dir=back wt=0
@fb id=7 dir=back

[Bandit A]「Ugh... How can a woman be this strong...?!」

@se f=床にドサッ
@dir id=6 dir=d
@change id=6 f=Damage2 num=0
@dir id=7 dir=d
@change id=7 f=Damage2 num=0

@move_f f=iris@reisyo in=r t=300

; TODO: I'm not sure of the meaning of this dialogue line...
[Elise]「Haha... I'm happy to see you making such a show of yourselves, maybe there's some value in being your opponent.」

[Bandit A]「So mean... Ugh.」

@move_f f=iris@reisyo out=r t=300
@fade type=out t=1000 wt=1
@wait t=1000
;;@fade type=in t=1000 wt=1

;; In the dark, a few seconds later the bandits disappeared and Iris and Sonia are facing each other.
