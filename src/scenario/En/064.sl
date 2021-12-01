
;; ■ Cave / Nest
;; ● Royal Route
;; Event occurrence condition: Go to the place where the squid is

;;-------------------------------

;; If you are wearing something other than black armor, the following lines will appear

; NEW
@anime num=652 wt=0

; NEW
;@zoom_f f=iris@kougeki2_z src=kougeki2 in=r t=300
; NEW
@move_f f=iris@kougeki2 in=r t=300

[Elise]『\$SKILL[Black Armor!]』

; NEW
;@zoom_f f=iris@kougeki2 src=kougeki2_z out=r t=300
; NEW
@move_f f=iris@kougeki2 out=r t=300

; NEW
;@anime num=120

; NEW
@anime num=653 wt=0
; NEW
@wait t=30
; NEW
@anime num=601 wt=0
; NEW
@wait t=10


;; magically wears black armor

;;-------------------------------
