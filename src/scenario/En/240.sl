
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ visitor (Iris)
;; Background ■ Outside the play area

;; Situation ■ Samurai appears
;; ■ In the case of a virgin (even if you are not a virgin, you lie and the following lines are the same?)

@bgm f=field5

[Samurai]「...」

@move_f f=iris@bisyo body=oiran in=r t=300
[Elise]「Hey, you! Want to have fun? ～♪」


[Samurai]「Are you a virgin?」

@bs f=iris@reisyo
[Elise]「W―What...?! What kind of question is that?\nOf course, I am!」

; NEW
@huki id=7 b=1 wt=1

[Samurai]「Is that so. Then I'll buy you.」

@move_f f=iris@reisyo out=r t=300

;; Jump ■ To the main room of the play area (forced movement)
