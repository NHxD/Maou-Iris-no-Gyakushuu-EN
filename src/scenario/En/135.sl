
;; ■ A Forest near Royal Castle
;; ● Royal Route

;; Where I fled
;; There is Iris and Sonia

@bgm f=dungeon5

@move_f f=sonia@kanasimi in=l t=300

[Sonia]「Waah～ Why am I always getting mixed up in those kind of situations?!」

@move_f f=iris@kuyasii in=r t=300

[Elise]「Well, the weak will always have countless wishes that will never be fulfilled.」
[Elise]「This is your destiny, Sonia. The sooner you give up, the better for you.」

@bs f=sonia@kuyasii_hoho

[Sonia]「W―Why?! I thought that I finally could get back to the castle, only for things to turn out like this.」

@bs f=iris@reisyo

[Elise]「Well, from my point of view, you're worth bullying. Hehe～♪ So I think you were just born under such a star.」

@bs f=sonia@kanasimi_hoho

[Sonia]「Waah～ You're always making fun of me.」

@bs f=iris@kuyasii

[Elise] (Well, my plan to use Sonia to take over this kingdom is now ruined because of that annoying dark elf.)

; MOVED HERE
@bs f=iris@kuyasii_hoho op2=kettei
;@bs f=iris@odoroki op2=kettei
@huki b=1

@bs f=sonia@odoroki_hoho op2=hatena

[Sonia]「What's wrong, Lady Elise?」

; MOVED ABOVE
;@bs f=iris@kuyasii_hoho
;@huki b=1

[Elise]「Tsk... This presence... Don't tell me...」

@move_f f=sonia@odoroki_hoho out=l t=300

@bgm f=battle7

;; Zexy, appear
@route id=2 route=d:8 wt=0

@move_f f=zexy@ikari in=l t=300

[Zekushi]「Did you really think that you could run away from me, Devil?」

@bs f=iris@ikari
@dir dir=up wt=1
@dir id=1 dir=up wt=1

[Elise]「Hmph! You're really persistent... Are you so eager to die?」

@move_f f=zexy@ikari out=l t=300
@move_f f=iris@ikari out=r t=300

;; Event battle: Zexy (Bad end or rematch if defeated)
