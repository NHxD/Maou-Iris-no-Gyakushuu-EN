
;; ■ Harvest Town
;; Iris moving forward. After dark, in the town

@bgm f=bgm02

@huki id=26 b=1

[Mayor]「Oh! You are... The Hero Chiot!」

@huki id=26 b=1

[Mayor]「Welcome! It is a great honor to have you here... But what is the reason of your presence? This is just a small village...」

@move_f f=sion@emi in=l t=300

[Chiot]「I heard recent rumors of bandits terrorizing your good village. I came here to get rid of those troublemakers.」

@move_f f=sion@emi out=l t=300

@huki id=26 b=1

[Mayor]「Oh. Thank you so much for generously offering your help.」

@huki id=26 b=6

; by another Lord
[Mayor]「But Lord Chiot, as a matter of fact, those bandits have already been dealt with.」

@move_f f=sion@reisei in=l t=300

[Chiot]「Oh... Is that so?」

@bs f=sion@emi

[Chiot]「Well, that's good news! I'm glad that everyone is safe!」

@move_f f=sion@emi out=l t=300


@dir id=22 dir=d wt=1
@wait t=1000
@huki id=22 b=8
@move_f f=sion@reisei in=l t=300

[Chiot]「Well then, I want to make sure that we don't leave behind anyone who might need our help... Hence we must depart immediately.」

@move_f f=sion@reisei out=l t=300

;; Silence It looks like you're talking in a balloon, but in the dark.
;; Return to Freedom (Iris)
