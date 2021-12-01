
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ Visitor (Sakuya)
;; Background ■ Outside the play area

;; Situation ■ Samurai appears
;; ■ Non-virgin

@bgm f=dungeon3

[Samurai]「...」

@move_f f=sakuya@bisyo_hoho body=oiran in=r t=300
[Sakuya]「... Ne, Samurai sama. Choose me... ♥」

@bs f=sakuya@kanasimi


[Sakuya] (This Samurai looks different than other guests. If my guess is right, I can take advantage of this man...)

[Samurai]「Are you a virgin?」

@bs f=sakuya@odoroki_hoho
[Sakuya] (... Eh? Why this question so suddenly?! Anyway, I should lie to him...)


@bs f=sakuya@bisyo_hoho

[Sakuya]「Ahem... Why yes, of course I am virgin...!!! ♥」

; NEW
@huki id=7 b=8 wt=1

[Samurai]「... Then I will buy you.」

@move_f f=sakuya@bisyoi_hoho out=r t=300

;; Jump ■To the main room of the play area (forced movement)
