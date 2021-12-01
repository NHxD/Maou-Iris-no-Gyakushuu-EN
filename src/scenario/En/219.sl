
;; ● True Demon King Route (Fighting back to the hero)

;; ○ Branch: Victory

@bgm f=Ship3

@move_speed spd=6
@move_speed id=14 spd=6

@dir_fix type=on
@dir_fix id=14 type=on

@walk_anime type=off
@walk_anime id=14 type=off

@route route=left wt=0
@route id=14 route=right

@se f=Thunder6
@qk
@wait t=100

@move_speed id=14 spd=7
@move_speed spd=7

@anime id=14 num=681 wt=0

@wait t=1000
@huki id=14 b=1

@wait t=500
@se f=Blow4

@map_scroll dir=left dis=4 spd=7
@route id=14 route=left:5

@move_speed spd=3
@move_speed id=14 spd=3

@dir_fix type=off
@dir_fix id=14 type=off

@walk_anime type=on
@walk_anime id=14 type=on

@move_f f=sion@kanasimi in=l t=300

[Chiot]「Uh, uh... No, nooo!!!」

@move_f f=sion@kanasimi out=l t=300

@map_scroll dir=right dis=4 spd=5

@move_speed spd=4
@route route=left:4

@huki b=8
@wait t=1200

@move_f f=iris@reisyo in=r t=300

[Elise]「... I feel sorry for you. I defeated you despite not having fully recovered my powers yet. I wonder if maybe it is not time for you to retire?」

@move_f f=sion@tuujou in=l t=300

[Chiot]「Well, I lost my Sacred Sword so I can't say that I'm surprised by this outcome... But I'm still very disappointed.」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@reisyo out=r t=300

@huki b=8
@wait t=1200

@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Tsk... Do you want to touch me that badly?」

@huki id=14 b=7
@move_f f=sion@tere_hoho in=l t=300

[Chiot]「―Oh? No, I didn't say that―」

@bs f=iris@kuyasii

@huki b=2
[Elise]「―You don't want to touch me then?」

@huki id=14 b=7
[Chiot]「―Oh? No, I―I didn't say that either... I mean, maybe, after we get to know each other better...」

@huki b=8
[Elise]「.........」

@move_f f=sion@tere_hoho out=l t=300
@move_f f=iris@kuyasii out=r t=300

;; ○ Choice: It can't be helped ... / Well, do your best
