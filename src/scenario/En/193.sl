
;; ● True Demon King Route (Fighting back to the hero)

;; Arrive at the foot of Mt. Fuji

@map_scroll dir=right dis=7 spd=7
@map_scroll dir=down dis=28 spd=7

@move_f f=sakuya@bisyo in=l t=300

[Sakuya]「This... over there is Mount Fuji.」

@move_f f=sakuya@bisyo out=l t=300
@move_f f=sion@emi in=l t=300

[Chiot]「Woah! What a magnificient view...」

@move_f f=iris@kuyasii in=r t=300

[Elise]「Hey birdbrain, I don't think this is the right time to be admiring the beautiful scenery.」

@move_f f=sion@emi out=l t=300
@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「So, can you feel anything, Elise?」

@move_f f=sakuya@odoroki out=l t=300
@move_f f=sion@tuujou in=l t=300

[Chiot]「You mean... the apostle?」

@bs f=iris@kanasimi

[Elise]「Nope. I guess we'll just have to get there and see for ourselves. Let's go.」

@move_f f=iris@kanasimi out=r t=300
@move_f f=sion@tuujou out=l t=300

@fade type=out t=250
@map_scroll dir=left dis=7 spd=9
@map_scroll dir=up dis=28 spd=9
@fade type=in t=250

