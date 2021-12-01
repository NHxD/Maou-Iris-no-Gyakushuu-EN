
;; ■ East Island / Pleasure Quarter / Main Room
;; ● Royal Route
;; ● Options: Strive to attack / Become a prostitute
;; Become a prostitute
;; ○ Event occurrence condition: Enter the play area and talk to the receptionist
;; → select "Yes"
;; *The main room for forced movement and play area
;; ○ Branch: In the case of a virgin

@bgm f=Town1

@move_f f=sakuya@metoji_hoho body=hadaka in=l t=300
@move_f f=iris@syuuti_hoho body=hadaka in=r t=300

[Master]「Wait... What's going on here? You obviously don't know how to dance and you lack sex appeal.」

;[Elise] (It was naive to think that he wouldn't figure out who we really are...)

[Master]「Wait... You can't possibly be virgins? Both of you?!」

;[Elise]「!!!」

@bs f=iris@ikari_hoho

[Elise]「... So what if we are?」

[Master]「Holy cow! It's true! Virgin courtesans! It's a first! ♥」

[Master]「Before, I wouldn't have let girls like you become prostitutes, but recently I had wealthy patrons who would pay a lot for virgins!」

[Master]「Well, I employ both of you.」

@move_f f=iris@ikari_hoho out=r t=300
@move_f f=sakuya@metoji_hoho out=l t=300

;; * Get the courtesan costume
