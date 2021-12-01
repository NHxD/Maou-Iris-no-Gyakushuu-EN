
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Players: Third stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1
@bgm f=dungeon3

[Playboy]「I'm here, my Elise. Today, I still have to trouble you♪」

@move_f f=iris@reisyo body=oiran in=r t=300

[Elise]「You come here often... Why me?」

@huki id=1 b=3 wt=1

[Playboy]「Isn't this the only place where I can see you? So, of course that I will come here often～♪」

@bs f=iris@kanasimi

[Elise]「But... I know that you're a player and that you have a lot of money. So of course you fool around with every other girls working here.」

[Playboy]「Ahahah♪ It is true that I used to play around...but that was until I met you, dear Elise.」

@huki b=8 wt=1

[Elise]「...Ehhh?」

@move_f f=iris@kanasimi out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1

