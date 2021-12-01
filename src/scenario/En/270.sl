
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event: Prostitute event: Sakuya: Evil officer: Second stage

;; Background ■ Prostitute room

@bgm f=field5
@huki id=1 b=4 wt=1

@move_f f=sakuya@metoji_hoho body=oiran in=r t=300
[Corrupt deputy official]「So, my girl, Sakuya. I'll make sure to fill your vagina full of my semen next time... Hehehe ♪」


@route id=1 route=d:9 wt=1
@se f=Open1 vol=90
@switches id=208 val=1
@wait t=500
@dir dir=d
@huki b=8 wt=1

@bs f=sakuya@kuyasii_hoho op2=konwaku

[Sakuya] (Aaah... Being violated by my assassination target and falling in love with him...)

@bs f=sakuya@kanasimi_hoho
[Sakuya] (I seem to be more sensitive than what I imagined... although I do not know at this point...)

[Sakuya] (Aaah... I have to keep my senses... I am worried I am about to give in...)

@move_f f=sakuya@kanasimi_hoho out=r t=300

;; Jump ■ To the next scene
