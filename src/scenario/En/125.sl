
;; ■ Prince Mansion
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

;; H event occurs when wiping the window
;; Press the event occurrence condition, balloon icon for window wiping.

;; ● resist

@ev

@bgm f=bgm03

@move_f f=iris@ikari body=maid in=r t=300

[Elise]「Back off, human!」

[Eyster]「Oh?! Did you really just swat my hand away from your delicate butt cheek? Show some respect to your master!」

; REMOVED
;@bs f=iris@ikari_z body_op=z
; NEW
@zoom_f f=iris@ikari_z src=iris@ikari in=r t=300 body=maid

[Elise]「Well, violence is always the best way to extract the truth out of someone. And if you happen to be really innocent, well, curse your own misfortune.」

; REMOVED
;@bs f=iris@ikari body=maid
; NEW
@zoom_f f=iris@ikari src=iris@ikari_z out=r t=300 body=maid

[Eyster]「Wh―What?! Guards!」

; REMOVED
;@route id=18 route=u:4,l:3,up:8
; NEW
@route id=18 route=u:4,l:3,u:8 wt=0
; NEW: NOTE - should do this in the JA/CH ver...
;@route id=24 route=u:4,l:3,u:7,r:2,u:1
@route id=24 route=u:4,l:3,u:8,r:2,u:1

@huki id=18 b=1 wt=0
@huki id=24 b=1 wt=0

[Royal Guards]「Prince Eyster!」

;[Eyster]「Protect me! But don't kill her... I want to make her regret going against me! Hehehe!」
[Eyster]「Protect me! But try not to kill her... because I'm not done with her. Hehehe!」

@move_f f=iris@ikari out=r t=300

;; Event battle: escort knight (if defeated, bad end or rematch)
