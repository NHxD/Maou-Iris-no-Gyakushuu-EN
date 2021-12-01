
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Boy: First stage

;; Background ■ Port town, Haldoor

@bgm f=field5
@huki id=6 b=8 wt=1

[Boy]「Hey big sis, do you need money?」

@huki b=2 wt=1
@move_f f=iris@bisyo in=r t=300

[Elise]「Ah? Well, if you want to pay a tribute to me, I will allow it.」

@huki id=6 b=8 wt=1

[Boy]「No, I mean that if you can use your mouth to pleasure my penis, I will compensate you with money.」

@huki b=1 wt=1
@bs f=iris@odoroki_hoho op2=kettei

[Elise]「What?! Y―You mean that you want ME to pleasure YOU... A little boy?!」

@wait t=600
@bs f=iris@kuyasii

[Elise]「You've got guts, kid... But do you really have any money?」

[Boy]「Sure I do! I have this much......」

@se f=Saint6 vol=90
@wait t=200
@se f=Coin vol=90
@wait t=200
@se f=Coin vol=90
@wait t=200
@se f=Coin vol=90
@wait t=200

;; Situation ■ Boy shows money

@huki b=1 wt=1
@bs f=iris@odoroki op2=kettei

[Elise] (What?! Why would a kid like him have so much money?!)

@bs f=iris@reisyo op2=onpu

[Elise] (Well, that kid is certainly well dressed, so he's probably the spoiled son of a wealthy family. In which case...)

@huki b=8 wt=1
@move_f f=iris@reisyo out=r t=300

;; Choice ■ Choice 1: Do not sell → Don't sell / Choice 2: Sell → Sell
