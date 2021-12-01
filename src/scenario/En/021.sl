
;; ■ Small Village / Inn
;; * Fade in after a few seconds of darkness (sleeping in bed)

@wait t=1000
@bgm f=Ship1

; NEW
@dir id=9 dir=l

@dir id=9 dir=d
@wait t=500

; REMOVED
;@huki id=9 b=8
; NEW
@huki id=9 b=8 wt=1
@move_f f=iris@bisyo body=sitagi in=r t=300

[Elise]「Okay, let's see what's the plan for tomorrow...」

@bs f=iris@kougeki1 body=sitagi

[Elise]「To defeat the Hero, I'll need to recover all my strength...」

@bs f=iris@syuuti body=sitagi

[Elise]「In the meantime, I should find a better weapon.」

@huki id=9 b=7
@bs f=iris@kanasimi body=sitagi

[Elise]「I probably don't have enough gold coins to buy one...」

@bs f=iris@kuyasii body=sitagi

[Elise]「And I should find better accommodation.」

@huki id=9 b=9
@bs f=iris@kougeki1 body=sitagi

[Elise]「While I ask some information about the Hero... I'll have to remember to ask those humans where I could find more gold coins too.」

@bs f=iris@bisyo body=sitagi

[Elise]「Anyway, I'm too tired right now. Leaving other matters for tomorrow ～♪」

@bgm
@move_f f=iris@bisyo body=sitagi out=r t=300
@wait t=500
@dir id=9 dir=l

;; * Dark
;; * Knock sound in the morning
