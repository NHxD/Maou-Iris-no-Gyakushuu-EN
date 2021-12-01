
;; ● True Demon King Route (Fighting back to the hero)

;; Heading to the elder
;; Elder, appeared

;; Change of clothes format
@move_speed spd=3
@route route=up:3

@move_f f=iris@bisyo in=r t=300

[Elise]「All right, I think this is the city the village elder talked about. Let's ask around where to find the weapons merchant.」

@move_f f=iris@bisyo out=r t=300

@fade type=out t=250
;;----------------------------------------------
@invisible type=off
@through type=off
@move_speed spd=4
@dot_move dir=up x=20 y=41
;;----------------------------------------------

;; Change of clothes format
@fade type=in t=250

;; Call out to the people in the city

