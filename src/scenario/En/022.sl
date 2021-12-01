
;; ■ Small Village / Inn
@bgm f=bgm02

;; * Knock sound in the morning
;;SE
@se f=ノック

;; [Iris] "Hmm... it's noisy..."
@move_f f=iris@kuyasii body=sitagi in=r t=300

;; Iris in nightwear (underwear) stands up with a dazzling eye and opens the door.

[Resident]「Good morning, young miss.」

[Elise]「...」

; NEW
@huki id=8 b=6

[Resident]「H-Hah.」

[Resident]「Excuse me...but could you put on some clothes?」

@bs f=iris@kanasimi

[Elise]「Uh? Y―Yes, of course...」

@move_f f=iris@kanasimi out=r t=300

;; Fade out while returning to room, fade in after a few seconds
