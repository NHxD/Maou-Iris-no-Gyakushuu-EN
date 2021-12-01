
;; ● True Demon King Route (Fighting back to the brave)

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=left x=26 y=30
;;----------------------------------------------

;; Change of clothes format
;;*************************************
@through id=19 type=on
@change id=19 f=iris_nowBody num=0
@move_speed id=19 spd=3
;;-------------------------------------
@dot_move id=19 dir=up x=27 y=31
;;*************************************

;; Change of clothes format
;;*************************************
@through id=20 type=on
@change id=20 f=sion num=0
@move_speed id=20 spd=3
;;-------------------------------------
@dot_move id=20 dir=up x=25 y=31
;;*************************************

;; Change of clothes format
;;*************************************
@through id=21 type=on
@change id=21 f=sakuya_nowBody num=0
@move_speed id=21 spd=3
;;-------------------------------------
@dot_move id=21 dir=up x=26 y=29
;;*************************************

@fade type=in t=250

@route id=19 route=up:2 wt=0
@route id=20 route=up:2 wt=0
@route id=21 route=up:2


@dir id=21 dir=down

@wait t=1000

@move_f f=sion@emi in=l t=300

@dir id=20 dir=right
@dir id=19 dir=left

@huki id=20 b=8
[Chiot]「Our mission is done here... thus, should we return to the castle right away?」

@move_f f=iris@emi in=r t=300

@huki id=19 b=8
@dir id=19 dir=up
[Elise]「Yup... Thanks again for all your help, Sakuya.」

@move_f f=sion@emi out=l t=300
@move_f f=sakuya@emi in=l t=300

@huki id=21 b=3
@dir id=20 dir=up
[Sakuya]「If I could helped you, even for just little bit, then I am happy, Elise.」

@bs f=iris@bisyo
@huki id=19 b=8
[Elise]「Well then... when the opportunity presents itself, we'll see each other again.」

@bs f=sakuya@kanasimi_hoho

@huki id=21 b=3
[Sakuya]「Haaa, to be separated from Chiot, I am going to feel so lonely...」

@move_f f=sakuya@kanasimi_hoho out=l t=300
@move_f f=sion@tere_hoho in=l t=300

@huki id=20 b=6
[Chiot]「No... Ah... Ah ah...」

@bs f=iris@reisyo

@dir id=20 dir=right
@dir id=19 dir=left

@huki id=19 b=6
[Elise]「Oy, Chiot. We gotta go now.」

@bs f=sion@tuujou

@huki id=20 b=1
[Chiot]「Y―Yes―」

@move_f f=sion@tuujou out=l t=300
@move_f f=iris@reisyo out=r t=300

;; Iris, transfer magic

@anime id=19 num=652

@anime id=19 num=653 wt=0
@anime id=20 num=653

@anime id=19 num=304 wt=0
@anime id=20 num=304 wt=0

@wait t=200
@flash t=300
@change id=19 f=null num=0
@change id=20 f=null num=0

@wait t=500

