
;; ■ Castle
;; ● Demon King Route (If you choose Dominate the World)
;; ● Route branch: victory
;;32: Demon King Iris who succeeds in defeating a hero

@bgm f=battle5

@move_f f=iris@bisyo_hoho in=r t=300

[Elise]「Ohoh...ohohoho～♪ Ahahaha!! I finally defeated the Hero!」

@move_f f=sion@ikari1 in=l t=300

[Chiot]「...Grh! I...still...am...」

@move_f f=sion@ikari1 out=l t=300

@bs f=iris@reisyo

; NOTE: they probably didn't move her forward because her balloons would then obscure sion's sprite.
; But, without it, it's too jarring to have her threaten to deal the final blow while standing so far away from him.
; So alternatively, move her to his right...

; NEW
;@fb dir=for wt=1
; NEW
@route route=u,r,u wt=1 spd=3
; NEW
@dir dir=l
; NEW
@move_speed

[Elise]「Well then, here comes the final blow, Hero Chiot... Prepare yourself!」

[Chiot]「―Ngh!」

@huki b=8
@bs f=iris@kuyasii

[Elise]「........................」

[Chiot]「...?!」

@huki b=7
@bs f=iris@kanasimi

[Elise]「... No. That's just too boring.」

@huki id=21 b=2


[Chiot]「De―Devil...?」


[Elise]「I said, too boring... Taking away your life here wouldn't satisfy me.」

@huki id=21 b=8

[Chiot]「Wha―what...?」

@bs f=iris@kuyasii

[Elise]「I already said that what I really want to see is you barking like a dog in the throes of despair.」

[Chiot]「Just finish me! Instead of being made fun of, I'd rather―」

@bs f=iris@reisyo_hoho

[Elise]「Be patient, I will definitely kill you...one day. But until then, you will entertain me.」

[Chiot]「What?!」

; NEW
@huki b=1

@bs f=iris@emi_hoho

[Elise]「It's settled. From now on, both you and Sonia will be my slaves. Ohohoho～♪」

@huki id=21 b=1

[Chiot]「Princess Sonia too?! Devil, you can't do this! This has nothing to do with her!」

@bs f=iris@ikari

[Elise]「Tsk... It's my decision. What makes you think that you have any right to give your opinion?」

[Chiot]「But―」

@bs f=iris@emi_hoho

[Elise]「You should be happy, Hero Chiot. You get to be my slave along with your lovely princess... Ohoho! Ahahaha!!」

[Chiot]「No...no... Princess... Princess Sonia!」

@move_f f=iris@emi_hoho out=r t=300
