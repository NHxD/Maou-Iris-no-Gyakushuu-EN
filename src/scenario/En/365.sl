
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event 4: Guard: Escape event

;; ■ When you escape from the prison and close the door
;; ■ The guard opens the door after a timeout of 3 seconds.
;; ■ When the button for applying current is pressed with the door closed.
;; Situation ■ The guard is stunned

@bgm f=dungeon10

@move_f f=iris@reisyo body=hadaka-kubiwa in=r t=300

[Elise]「Hmmm... Nice. Now sleep until tomorrow.」

@move_f f=iris@reisyo out=r t=300

;; Situation ■ Iris takes the key and removes the collar
