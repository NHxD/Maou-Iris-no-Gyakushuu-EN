
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Sweaters: 1st stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1
@bgm f=dungeon3

[Playboy]「I'm so excited to have sex with a foreign girl! And she is sooo lovely too ♪」

@move_f f=iris@kuyasii body=oiran in=r t=300

[Elise]「Wow... So frivolous. And I have to let myself be used by this rude human? This is so humiliating...」

[Playboy]「Oooh～ I can't wait any longer... Let's do it right now ♪」

@move_f f=iris@kuyasii out=r t=300

;; Effect ■ Darkness
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
