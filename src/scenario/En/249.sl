
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Merchant: 1st stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1

[Merchant]「I like you very much, Elise girl. I'll fuck you again next time. Of course, I'll give you a lot of money... Hah hah hah!」
;; ■ Kaneko = Kinsu

@bgm f=dungeon5
@route id=1 route=d:9 wt=1
@se f=Open1 vol=90
@switches id=208 val=1
@wait t=500
@dir dir=d
@huki b=8 wt=1

@move_f f=iris@kuyasii body=oiran in=r t=300

[Elise]「Mmm...」

@bs f=iris@kuyasii
[Elise] (Tsk... What a terrible man! But I can't ignore the large sums of money he's giving me...)


@bs f=iris@kuyasii
[Elise] (There's no other way... Before I reach my goal, I'll make a real fortune here!)


[Elise] (Well, this is the only value of this man...)

@move_f f=iris@kuyasii out=r t=300

;; Jump ■ To the next scene
