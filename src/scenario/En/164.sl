
;; ● True Demon King Route (plays back against the hero)

;; Old Mage, Appearance

;**********************

@if eval=v(354)==1 ok=jump:*left_root bad=jump:*right_root

;;*********************
*left_root

@move_speed spd=3
@route route=right:2
@move_speed spd=4

@jump target=*root_end
;;*********************
*right_root

@move_speed spd=3
@route route=left:2
@move_speed spd=4

@jump target=*root_end
;;*********************

*root_end

;;*********************
@dir dir=up

@huki id=5 b=8
@wait t=1200

@bgm f=bgm03

@huki id=5 b=8
[Grace]「Well...unfortunately, I knew you would come this far, Devil.」

@move_f f=iris@reisyo in=r t=300

[Elise]「Get out of my way now and you could live a little while longer. Don't throw your life away so easily.」

[Grace]「I already lived a long and interesting life. This is probably my last battle... So don't expect me to falter easily.」

@move_f f=iris@reisyo out=r t=300

;; Battle with Old Mage
