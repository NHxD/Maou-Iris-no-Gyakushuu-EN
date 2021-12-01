
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Merchant: Third stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1
@bgm f=dungeon3

[Merchant]「Ah... It was great, Elise. Fantastic even! I'll be sure to come again! Ah ah ah!」


;; Situation ■ The merchant leaves

@route id=1 route=d:9 wt=1
@se f=Open1 vol=90
@switches id=208 val=1
@wait t=500
@dir dir=d
@huki b=8 wt=1

@move_f f=iris@kuyasii body=oiran in=r t=300

[Elise]「Mmm... Gah... What a disgusting old man... Mmm...」

@bs f=iris@ikari op2=konwaku
[Elise] (Ahh... Mmm... H—How could I give in to this man... To his cock...)

@bs f=iris@kuyasii
[Elise] (Tsk... How shameful of me. But from now on, I have... I have to pay attention...)

[Elise] (If I become a whore both physically and mentally, then what am I—)

[Elise] (—Dammit! That's why I've always said that dealing with humans was a terrible mistake.)
@move_f f=iris@kuyasii out=r t=300

;; Jump ■ To the next scene
