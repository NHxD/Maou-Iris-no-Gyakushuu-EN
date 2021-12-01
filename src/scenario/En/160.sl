
;; ● True Demon King Route (plays back against the hero)

;; Eventually, Monk Sina appears

@move_speed spd=3
@route route=up

@huki b=1
@wait t=500

@bgm f=battle7
@map_scroll dir=up dis=2 spd=5

[Sela]「Devil Iblis! I won't let you pass!」
; NOTE: it'd make sense if she would make references / speak in religious lingo since she's a cleric.
;[Sela]「Go back from whence you came, Devil!」
;[Sela]「Devil Iblis! You shall not pass!」

@map_scroll dir=down dis=2 spd=5
@move_f f=iris@ikari in=r t=300

[Elise]「Finally, a companion of the Hero has appeared. You say that I can't go past you? Hehe... Ohohoho～♪」

@move_f f=iris@ikari out=r t=300

;; Battle with Sina
