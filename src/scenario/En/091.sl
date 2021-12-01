
;; ■ East Island / Castle Gate
;; ● Royal Route
;; ⑳ Satan said goodbye to Kunoichi and boarded the ship she arranged for the west continent.
;; Event conditions, go out of the castle.
;; Sakuya approaches Iris.

@bgm f=dungeon10

@move_f f=sakuya@bisyo in=l t=300

[Sakuya]「Sorry to keep you waiting.」

@dir dir=up wt=1

@move_f f=iris@bisyo in=r t=300

[Elise]「Don't worry, I just got here myself.」

[Sakuya]「Good... Prosperity will gradually return to this place, now that Revenant General has been defeated.」

@bs f=iris@kanasimi

[Elise]「That's good for humans, uh?」

@bs f=iris@bisyo

[Elise]「I have to say... Thank you, Sakuya. You helped in so many ways.」

@bs f=sakuya@emi

[Sakuya]「I should be thanking you! Never could we have defeated Revenant General without your help.」

@bs f=sakuya@bisyo

[Sakuya]「So please allow me to express my gratitude...」

[Sakuya]「I have prepared something for you... Leave city, then head southwest until you reach harbor. A boat will be waiting for you.」

; NEW
@bs f=iris@emi

[Elise]「Wow! I really owe you one, Sakuya.」

; NEW
@bs f=iris@bisyo

@bs f=sakuya@emi

[Sakuya]「Yes... I am very happy to be with you, even though it was not for long time.」

@bs f=iris@emi

[Elise]「I know. Thank you. I hope we'll meet again. Goodbye.」

@bs f=sakuya@bisyo

[Sakuya]「Yes. I am sure we will. Sayonara.」

@move_f f=iris@emi out=r t=300
@move_f f=sakuya@bisyo out=l t=300

;; Iris, leaving the scene and going dark.
;; fade in at a distance

;;@fade type=out t=1000 wt=1
;;@wait t=1000
;;@fade type=in t=1000 wt=1
