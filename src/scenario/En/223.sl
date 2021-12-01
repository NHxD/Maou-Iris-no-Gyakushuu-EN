
;; ● True Demon King Route (plays back against the hero)

;; Branch: Defeat

@bgm f=Scene3

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
@huki b=1

@wait t=500
@se f=Blow4

@route route=right:2 wt=0
@route id=14 route=left:2

@huki b=8
@huki id=14 b=8
@wait t=1200

@move_speed spd=6
@move_speed id=14 spd=6

@dir_fix type=off
@dir_fix id=14 type=off

@walk_anime type=on
@walk_anime id=14 type=on

@route route=left:2 wt=0
@route id=14 route=right:2

@se f=風切り音1
@flash t=500
@invisible type=on
@invisible id=14 type=on

@route route=left:2 wt=0
@route id=14 route=right:2

@wait t=500

@se f=Thunder6
@flash t=500
@invisible type=off
@invisible id=14 type=off

@huki b=8
@huki id=14 b=8

@wait t=1200

@huki b=1
@anime num=658
@move_speed speed=3
@fb dir=back

@wait t=500

@dir id=14 dir=left

@move_f f=iris@ikari in=l t=300

@huki b=7
[Elise]「... Gah?! Defeated again... This is so humiliating... 」

@move_f f=iris@ikari out=l t=300

@huki id=14 b=6
@wait t=1200

@move_f f=sion@tere in=r t=300

@huki id=14 b=7
[Chiot]「Hah... hah? Are you really angry?」

@move_f f=sion@tere out=r t=300

@dir dir=right
@huki b=5
@wait t=1200

; REMOVED
;@move_f f=iris@ikari_z body_op=z in=l t=300
; NEW
@move_f f=iris@ikari_z body_op=z in=c t=300

[Elise]「Of course, dummy. I never meant to lose. You're so goddamned annoying, that I feel like killing you now...」

; NEW
@zoom_f f=iris@ikari f=iris@ikari_z out=l t=300

@move_f f=sion@kanasimi in=r t=300
; REMOVED
;@bs f=iris@ikari

@huki b=6
[Chiot]「Oh, no...?! If you're seriously considering killing me... Should I just let you then?」

@move_f f=sion@kanasimi out=r t=300
@move_f f=iris@ikari out=l t=300

@move_speed spd=3
@move_speed id=14 spd=3
@route route=right

@move_f f=iris@reisyo in=l t=300

@huki b=8
[Elise]「Tsk... do that and I'll definitely kill you for real, this time.」

@move_f f=sion@tere in=r t=300

@huki id=14 b=8
[Chiot]「Um... So about the reward―」

@bs f=iris@bisyo

@huki b=2
[Elise]「―What reward?」

@bs f=sion@tere_hoho

@huki id=14 b=7
[Chiot]「―That if I were to defeat you... You would allow me to love you.」

@move_f f=sion@tere_hoho out=r t=300
@move_f f=iris@bisyo out=l t=300

@route route=left
@move_f f=iris@kuyasii_hoho in=l t=300

@huki b=8
[Elise]「So you want to do it right after humiliating me again, you're not a sacred hero but only a villain pervert!」

@move_f f=iris@kuyasii_hoho out=l t=300

@route id=14 route=left

@move_f f=sion@kanasimi in=r t=300

@huki id=14 b=7
[Chiot]「No...! I didn't mean to do it right now! Um... But...」

@dir dir=right

@move_f f=iris@bisyo_hoho in=l t=300

@huki b=8
[Elise]「Well, that's fine with me. I intend to keep my word. I'll let you love me...」

@move_f f=iris@bisyo_hoho out=l t=300
@move_f f=sion@kanasimi out=r t=300
