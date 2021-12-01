
;; ● True Demon King Route (Fighting back to the hero)

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=19 y=30
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=6 type=on
@change id=6 f=iris_nowBody num=0
@move_speed id=6 spd=3
;;-------------------------------------
@dot_move id=6 dir=up x=20 y=33
;;*************************************

;; Change of clothes format
;;*************************************
@through id=7 type=on
@change id=7 f=sion num=0
@move_speed id=7 spd=3
;;-------------------------------------
@dot_move id=7 dir=up x=18 y=33
;;*************************************

@route id=6 route=up:3 wt=0
@route id=7 route=up:3 wt=0

@fade type=in t=1000

@bgm f=dungeon5


@huki id=6 b=8
@huki id=7 b=8
@wait t=1200

@move_f f=iris@reisyo in=r t=300

[Elise]「All right, we've arrived...」

@move_f f=iris@reisyo out=r t=300

@route route=up wt=0
@route id=7 route=up:2

@huki id=7 b=8
@wait t=1200

@move_speed spd=6
@route route=up:18

@move_f f=sion@tuujou in=l t=300

@huki id=7 b=1
[Chiot]「―Oh! This... this is the Royal Capital? What happened here...? Where's everyone?!」

@move_f f=sion@tuujou out=l t=300

@move_speed spd=6
@route route=down:18

@move_f f=iris@kanasimi in=r t=300

[Elise]「... I know that you want to remain hopeful. But we should assume that everybody has already been turned into angels.」

@huki id=7 b=8
@dir id=7 dir=down

@wait t=500

@move_f f=sion@kanasimi in=l t=300

[Chiot]「―Angels? There... there must be a way to turn them back to normal?!」

@bs f=iris@kuyasii op2=konwaku

@huki id=6 b=8
[Elise]「Even I do not possess such power. However, perhaps killing God would cancel the effect?」

@bs f=sion@reisei

@dir id=7 dir=up

@huki id=7 b=8
[Chiot]「It's fine then. Let's avoid killing any angel on our way to defeat God.」

@huki id=6 b=6
@bs f=iris@odoroki

[Elise]「What... What the hell are you talking about?!」

@bs f=sion@kanasimi
@dir id=7 dir=down
@huki id=7 b=8
[Chiot]「It's like you said, if we defeat God, there is a chance that they would turn back to normal, right? So we definitely can't kill them.」

@bs f=iris@kuyasii

@huki id=6 b=7
[Elise]「I know what I said and what you want to believe but we're here only for one reason and that is to defeat God.」

[Elise]「But if you hinder me in any way, I'll just leave you behind.」

@bs f=sion@tuujou

@huki id=7 b=8
[Chiot]「Don't worry. I'm not going to.」

@bs f=iris@kougeki1

@huki id=6 b=8
[Elise]「You better not forget your word. Well, let's go.」

@bs f=sion@emi

@huki id=7 b=8
[Chiot]「Ah―」

@move_f f=sion@emi out=l t=300
@move_f f=iris@kougeki1 out=r t=300

@route id=6 route=up:10 wt=0
@route id=7 route=up:10 wt=0

@fade type=out t=300
;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
;;----------------------------------------------
;; Sonia change clothes

;;Combat start
