
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ visitor (Iris)
;; Background ■ Main room of the play area

;; Background ■ Outside the play area?

;; Situation ■ Iris and Sakuya talk

@bgm f=Scene5

; NEW
@huki id=1 b=2 wt=1
; NEW
@huki id=18 b=8 wt=1

@move_f f=iris@bisyo body=oiran in=r t=300

[Elise]「... That's all, do you understand? Sneak into the carriage and travel to the castle with me.」

@move_f f=sakuya@bisyo body=oiran in=l t=300

; NEW
@huki id=1 b=3

[Sakuya]「I see. Let me benefit from hard work of yūjo Elise. Teehee ♥」

; NEW
;@huki id=18 b=8
; NEW
;[Elise]「...」
; NEW
@huki id=18 b=7

@move_f f=iris@bisyo out=r t=300
@move_f f=sakuya@bisyo out=l t=300

;; Jump ■ Main plot: Jump to ⑰
