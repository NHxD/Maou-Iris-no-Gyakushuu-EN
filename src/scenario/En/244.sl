
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ Visitor (Sakuya)
;; Background ■ Outside the play area

;; Situation ■ Samurai appears
;; ■ For virgin

@bgm f=dungeon3

[Samurai]「...」

@move_f f=sakuya@bisyo_hoho body=oiran in=r t=300
[Sakuya]「... Ne, Samurai sama. Choose me... ♥」

@bs f=sakuya@kanasimi


[Sakuya] (This samurai looks different than other guests. If my intuition is right, I can take advantage of this man...)

[Samurai]「Are you a virgin?」

@bs f=sakuya@odoroki_hoho

[Sakuya] (... Eh? Why this question now?!)

[Sakuya]「Yes... I am virgin! ♥」

; NEW
@huki id=7 b=1 wt=1

[Samurai]「... Then I will buy you.」

@move_f f=sakuya@odoroki_hoho out=r t=300

;; Jump ■ To the main room of the play area (forced movement)
