
;; ■ Small Village

@bgm f=dungeon10

[Resident 1]「Oh! Thank you! Thank you!」

@move_f f=iris@reisyo in=r t=300

[Elise]「I killed them only because they got in my way. No need to thank me.」

; NEW
@huki id=12 b=4 wt=0

[Resident 2]「But we'll keep your kindness in mind! Thank you so much!」

; NEW
@huki b=5
@bs f=iris@ikari
;@wait t=1000

; REMOVED
;@bs f=iris@bisyo

[Elise]「Did you listen to what I just―\nTsk... Believe whatever you want, stupid humans!」

@huki id=8 b=6

[Resident 1] (What a strange person... But she saved us!)

@huki b=2

; NEW
@bs f=iris@bisyo

[Elise]「Anyway, is there any place nearby where I could rest?」

@huki b=7
@bs f=iris@kanasimi

[Elise] (I sustained too much damage after the battle against that stupid Hero.)

[Elise] (I really need some rest to recover my strength. Ugh... I shouldn't have underestimated him.)

[Resident 2]「Do you mean an inn?」

[Resident 2]「It's a small village so there's only one inn. You can see it not far from here.」

@bs f=iris@bisyo

[Elise]「All right, I'll be on my way then.」

@move_f f=iris@kuyasii out=r t=300

;; Iris leaves the attacked villagers. → Free action

;; ※ Iris, get the location of the inn.
;; ※ Free action (even if you go to a place other than the inn, comments will be inserted to go to the inn)
