
;; ■ East Island / Farm
;; ● Royal Route
;; Talk to the farmers around you
;; Farmer 2

@bgm f=dungeon5

@move_f f=iris@bisyo in=r t=300

[Elise]「Hey, old man... Do you know which way leads to the Royal Capital?」

@huki id=6 b=2 wt=1

[Farmer 2]「Eh? What is that?」

@huki b=5 wt=1

@bs f=iris@ikari

[Elise]「It's a place called the Royal Capital.」

[Farmer 2]「Never heard of it.」

@route route=d:2 wt=1

@bs f=iris@kuyasii

[Elise]「Dammit! Shouldn't those stupid humans know about their own capital?!」

@bs f=iris@ikari

[Elise] (Before I boarded the ship, everyone knew about the Royal Capital...)

[Elise] (So why do the people who live here aren't even aware of its existence?)

@huki b=8 wt=1

@bs f=iris@kuyasii

[Elise]「*sigh* It seems to be pointless to ask the rest of this village.」

@move_f f=iris@kuyasii out=r t=300
