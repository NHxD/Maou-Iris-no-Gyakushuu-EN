
;; ■ Grand Kingdom - Eyster's Mansion
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

;; Wear Iris maid clothes.

@bgm f=bgm03

@move_f f=iris@kuyasii_hoho body=maid in=r t=300

[Elise] (I need to find the evidence before I lose my temper and kill this Prince Pervert.)

[Eyster]「Hmm... You look fine dressed in a maid outfit. What's your name?」

@bs f=iris@bisyo

[Elise] (It's a hassle to think of a name right now so I'll just give him my real name and wipe his memory clean later.)

@bs f=iris@emi

[Elise]「Elise.」

; NEW
@huki id=10 b=2

[Eyster]「Elise? Hmm... I feel like I've heard this name somewhere before. Well, forget it. Go back to work, maids.」

[Maid]「Yes, master.」

@move_f f=iris@emi out=r t=300

;; Leave the room with the maid.
