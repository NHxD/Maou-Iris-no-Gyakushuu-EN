
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub Event 1: Prostitution: Boy: Second Stage

;; Background ■ Port town, Haldoor

;; ■ Branch: For virgin

@bgm f=field5
@huki b=8 wt=1

@move_f f=iris@kanasimi in=r t=300

[Elise]「Hah! This offer is very attractive... But it is not okay. I'm not willing to lose my virginity this way.」

@huki id=6 b=1 wt=1

[Boy]「Whaaat?! Big sister is a virgin?! Then I'll give you ten times the usual amount! How about it?!」

@huki b=8 wt=1
@bs f=iris@odoroki op2=kettei

[Elise]「Wow! TEN times! Aaah... Let me think about it... Ah...」

@dir dir=r
@wait t=200
@dir dir=d
@wait t=700
@huki b=8 wt=1
@bs f=iris@kanasimi_hoho

[Elise] (As a Devil, I can't let a human boy take my virginity...)

@bs f=iris@kuyasii

[Elise] (But... But ten times the usual payment is a really attractive offer...)

@huki b=8 wt=1
@move_f f=iris@kuyasii out=r t=300

@dir dir=r
@wait t=200
@dir dir=u
@wait t=700

;; Selection ■ Selection 1: Not allowed → Not allowed / Selection 2: Allowed → Allowed
