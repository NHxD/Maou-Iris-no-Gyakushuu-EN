
;; ■ Prison
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event 4: Guard: Escape event

;; ■ When you escape from the prison and close the door
;; ■ The guard opens the door after a timeout of 3 seconds.
;; ■ When the button for applying current is pressed with the door closed.
;; Situation ■ The guard is stunned
;; Situation ■ Iris takes the key and removes the collar
;; ■ If you have not seen the H scene until the second stage after pressing the current button

; NEW
@se f=Equip2
@wait t=1000
@se f=Equip3
@wait t=1000

; MOVED
;@wait t=2000
@bgm f=dungeon10

@move_f f=iris@bisyo body=hadaka-kubiwa in=r t=300

[Elise]「Well... I have to get my equipment back. But first, let's take this annoying collar off my neck.」

@move_f f=iris@bisyo out=r t=300

;; Jump ■ To free action
