
;; ● True Demon King Route (Fighting back to the hero)
;; 39: Iris transferred to Demon Castle

;; Iris, Zion, Sonia, Zexy

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=19 y=7
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=null num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=down x=19 y=6
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=null num=0
@move_speed id=11 spd=4
;;-------------------------------------
@dot_move id=11 dir=up x=19 y=9
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=null num=0
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=right x=17 y=7
;;*************************************

;; Change of clothes format
;;*************************************
@through id=13 type=on
@change id=13 f=null num=0
@move_speed id=13 spd=4
;;-------------------------------------
@dot_move id=13 dir=left x=21 y=7
;;*************************************

;;----------------------------------------------
@fade type=in t=250

@anime id=10 num=304 wt=0
@anime id=11 num=304 wt=0
@anime id=12 num=304 wt=0
@anime id=13 num=304 wt=0

@wait t=200
@flash t=300
@change id=10 f=iris_nowBody num=0
@change id=11 f=sonia_nowBody num=0
@change id=12 f=sion num=1
@change id=13 f=zexy_nowBody num=1

@bgm f=dungeon5

@huki id=10 b=8
@wait t=1200

@move_f f=iris@kanasimi in=r t=300

[Elise]「... Th-That was a close call. Just a moment later and I would have been toast.」

@move_f f=iris@kanasimi out=r t=300

;; Sonia hugs Zion

@move_speed id=11 spd=5
@route id=11 route=left:2,up

@huki id=11 b=8
@wait t=1000

@move_f f=sonia@bisyo in=l t=300

[Sonia]「Chiot! Oh, thank you, Lady Elise!」

@move_f f=iris@bisyo in=r t=300

[Elise]「Don't thank me. I brought you two with me by accident while I was courageously running away.」

@move_f f=iris@bisyo out=r t=300
@move_f f=sonia@bisyo out=l t=300

@huki id=13 b=2
@wait t=1200

@change id=13 f=zexy_nowBody num=0
@huki id=13 b=8
@wait t=1200

@move_f f=zexy@odoroki in=l t=300

[Zekushi]「And... me too?」

; REMOVED
;@move_f f=iris@kanasimi in=r t=300
; NEW
@move_f f=iris@kanasimi_hoho in=r t=300

[Elise]「I was in a hurry and it just happened, all right? A―Anyway, let's get some rest... I'm completely beat.」

; REMOVED
;@move_f f=iris@kanasimi out=r t=300
; NEW
@move_f f=iris@kanasimi_hoho out=r t=300
@move_f f=zexy@odoroki out=l t=300

@fade type=out t=250
