
;; ■ Prison
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event 4: Guard: Escape event

;; ■ When you escape from the prison and close the door
;; ■ The guard opens the door after a timeout of 3 seconds.
;; ■ When the button for applying current is pressed with the door closed.
;; Situation ■ The guard is stunned
;; Situation ■ Iris takes the key and removes the collar
;; ■ After pressing the current button
;; ■ During free movement, when you go up using the key that the guard had, you will find a treasure chest and a set of equipment.

@bgm f=dungeon10

@move_f f=iris@bisyo body=hadaka in=r t=300

[Elise]「Here it is. Well now, let's get out of here because I really don't want to spend one more second in this place.」

@move_f f=iris@bisyo out=r t=300

; REMOVED
;@fadeout
; REMOVED
;@se f=衣擦れの音2
; REMOVED
;@actor_img
; REMOVED
;@fadein

;; Jump ■ Main part plan [30-1]
