
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ Visitor (Sakuya)
;; Background ■ Outside the play area?

;; Situation ■ Sakuya and Iris talk

@bgm f=Scene5

; NEW
@huki id=18 b=2 wt=1
; NEW
@huki id=1 b=8 wt=1

; REMOVED
;@move_f f=sakuya@bisyo body=oiran in=r t=300
; NEW
@move_f f=sakuya@bisyo body=oiran in=l t=300
[Sakuya]「... That's all. Hop into carriage and ride to castle with me.」

; NEW
@huki id=18 b=3

; REMOVED
;@move_f f=iris@bisyo body=oiran in=l t=300
@move_f f=iris@bisyo body=oiran in=r t=300
[Elise]「Piece of cake.... I'll just cast an illusion spell to conceal myself before getting into the carriage.」

; REMOVED
@move_f f=sakuya@bisyo out=r t=300
; REMOVED
;@move_f f=iris@bisyo out=l t=300
@move_f f=sakuya@bisyo out=l t=300
@move_f f=iris@bisyo out=r t=300

;; Jump ■ Main story plot: Jump to ⑰?
