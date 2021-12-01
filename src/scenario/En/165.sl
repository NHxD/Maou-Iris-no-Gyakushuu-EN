
;; ● True Demon King Route (plays back against the hero)

;; Old Mage, Appearance
;;win

@huki b=1
@anime id=5 num=651


@anime id=5 num=657 wt=0
@wait t=1000

@se f=風切り音1
@flash t=500
@invisible type=on

; REMOVED
;@move_speeed spd=5
; NEW
@move_speed spd=5
@through type=on
@route route=up2
@dot_move dir=up x=20 y=21

@se f=風切り音1
@flash t=500
@invisible type=off

@wait t=500

@huki id=5 b=1
@anime id=5 num=658 wt=1

@wait t=250

@move_speed id=5 spd=3
@route id=5 route=down

@bgm f=bgm03

@huki id=5 b=8
[Grace]「Ow... I didn't expect this... You're so much stronger now...」

@move_speed id=5 spd=4
;; REMOVED
;@move_f f=iris@reisyo in=r t=300
; NEW
@move_f f=iris@kanasimi in=r t=300

[Elise]「Tsk... That's why, I didn't― Sorry, just let me pass.」

@huki id=5 b=8
[Grace]「You can only turn around...now.」

@dir dir=down
@bs f=iris@kanasimi op2=hatena

[Elise]「What do you mean?」

@huki id=5 b=8
[Grace]「If you continue on your path of revenge...what is waiting for you is only...defeat. You will leave this...world...miser―」

@move_f f=iris@kanasimi out=r t=300

;; Old Mage, fall
@se f=blow6
@dir_fix id=5 type=off
@dir id=5 dir=right wt=0
@change id=5 f=brave num=6
@dir_fix id=5 type=on

@dir dir=up

@move_f f=iris@reisyo in=r t=300

[Elise]「Interesting. Well, if this is my destiny, then I will simply change it.」

; REMOVED
;@move_speeed spd=4
; NEW
@move_speed spd=4
@through type=off
@route route=up
@bs f=iris@reisyo_hoho op2=kettei

;[Elise]「I can feel...Chiot. Stay where you are... I will definitely defeat you this time.」
[Elise]「I can feel...Chiot. Stay where you are... I'm coming for you! I will definitely defeat you this time.」

@move_f f=iris@reisyo_hoho out=r t=300

;; Iris heads for the audience
