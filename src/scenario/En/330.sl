;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of father in tool shop: Introduction

;; Background ■ Tool shop

;; Situation ■Iris talking to a tool shop
;; ■After that, an event will occur if you talk with three "Evil Eye's Eyes"
;; ■ Event occurrence conditions: Possess 3 Eyes of Evil Eye
;; ■ I have
;;Selection ■Selection 1: Pass the eyes of Evil Eye / Selection 2: Buy tools
;; Flying destination ■ 1: Pass the eyes of Evil Eye

;; ■ After that, wait about 30 seconds to 1 minute to show the movement of the dot picture and the icon in detail.

@bgm f=dungeon5

@huki b=5
@move_f f=iris@ikari in=r t=150

; NEW
@c_jump id=2 wt=0
@huki id=2 b=1 wt=0
;@dir_fix id=2 type=off
;@dir id=2 dir=d
; NEW

[Elise]「You are too slow! What the hell are you doing back there?!」

;; Situation ■ The father of a tool shop appears

@route id=2 route=d,l wt=1
@dir id=2 dir=d wt=1
@huki id=2 b=6 wt=1

[Item shop owner]「Hah. Sorry to have kept you waiting.」

@huki b=5 wt=1

[Elise]「Do you know how long you made me wait?\nDo you have a death wish?!」

@huki id=2 b=6

[Item shop owner]「Hah. Well, it took a while to process...\nIt's a rare treasure, after all.」

@move_f f=iris@ikari out=r t=300

;; Situation ■ You will be presented with ornaments or items useful for adventure
