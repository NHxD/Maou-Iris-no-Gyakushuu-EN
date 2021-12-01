
;; ● True Demon King Route (Fighting back to the hero)

;; ○ Branch: Victory
;; ○ Selection: It can't be helped ...

@bgm f=Scene5

@huki id=2 b=8
@wait t=1200

@move_speed id=2 spd=3
@route id=2 route=left

@move_f f=iris@syuuti_hoho in=r t=300

@huki id=2 b=8
[Elise]「Well, it can't be helped then...... I'll make an exception, but only for today.」

@move_f f=sion@tere_hoho in=l t=300

@huki id=14 b=1
[Chiot]「What?! Oh―」

@move_f f=iris@syuuti_hoho out=r t=300
@move_f f=sion@tere_hoho out=l t=300

;; → Jump to "○ Iris, the first night with the hero"
