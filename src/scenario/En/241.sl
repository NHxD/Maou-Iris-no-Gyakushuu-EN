
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ visitor (Iris)
;; Background ■ Outside the play area

;; Situation ■ Samurai appears
;; ■ Non-virgin

@bgm f=field5

[Samurai]「...」

@move_f f=iris@bisyo body=oiran in=r t=300
[Elise]「Hey, you! Want to have fun? ～♪」


[Samurai]「Are you a virgin?」

@bs f=iris@kanasimi
[Elise] (W―What...?! Why that question all of a sudden?\nI better lie to him though, right...?!)

[Elise]「Mm-hmm! I really am a...virgin. Yuup!\nAhah ah ah ～♪」

@bs f=iris@reisyo

; NEW
@huki id=7 b=8

[Samurai]「...」

[Samurai]「Is that so. Then I'll buy you.」

@move_f f=iris@reisyo out=r t=300

;; Jump ■ To the main room of the play area (forced movement)
