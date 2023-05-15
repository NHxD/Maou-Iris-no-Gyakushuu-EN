
;; ■ Prince Mansion
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

@bgm f=dungeon3

[Maid]「... Ugh. This is so terrible... But the pay is great so we have to put up with it.」

@move_f f=iris@bisyo body=maid in=r t=300

[Elise]「This job is well paid...?」

[Maid]「Why else do you think I'd choose to do this awful job?! Anyway, be mindful of how you speak to the master.」

@bs f=iris@kanasimi

[Elise]「Hah. Okay...」

[Maid]「All right then, your task for today is to clean this floor of the mansion.」

; NEW
@huki id=9 b=6

[Maid]「A―Ah right, you don't know how... Well, I'll teach you... *sigh*」

@move_f f=iris@kanasimi out=r t=300

;;@fade type=out t=1000 wt=1
;;@wait t=1000
;;@fade type=in t=1000 wt=1

;; The maid tells Iris how to clean, and after a few seconds of darkness, fades in
;; Iris, start action. Collect information by moving inside the mansion
