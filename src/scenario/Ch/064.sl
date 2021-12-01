
;;●王道ルート
;;イベント発生条件：ダイオウイカがいる場所に出る

;;-------------------------------

;;黒鎧以外を着ている場合、以下のセリフが入る

; NEW
@anime num=652 wt=0

; NEW
;@zoom_f f=iris@kougeki2_z src=kougeki2 in=r t=300
; NEW
@move_f f=iris@kougeki2 in=r t=300

[伊利絲]「鎧甲呀！」

; NEW
;@zoom_f f=iris@kougeki2 src=kougeki2_z out=r t=300
; NEW
@move_f f=iris@kougeki2 out=r t=300

; NEW
@anime num=653 wt=0
; NEW
@wait t=30
; NEW
@anime num=601 wt=0
; NEW
@wait t=10

;;魔法で黒鎧を装着

;;-------------------------------

