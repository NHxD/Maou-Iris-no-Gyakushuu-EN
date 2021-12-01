
;; ★Diesel Mine "RPG4 Planning"
;; Sub event: Prostitute event: Sakuya: Evil officer: Third stage general purpose

;; Background ■ Prostitute room

;; Situation ■ Evil officers rush

@bgm f=field5

@move_f f=sakuya@bisyo body=oiran in=r t=300

[Sakuya]「Teehee ♥ You do not have to come in such a hurry... I will not run away, my lord ♥」

@huki id=1 b=8 wt=1

[Corrupt deputy official]「Um, um hum... But whenever I think of you with another man... I just can't help but try to do it faster. Hehehe...」

@bs f=sakuya@emi

[Sakuya]「Oh my ♥ Ne, you are so cute... Let me serve you well today ♥」

@move_f f=sakuya@emi out=r t=300

;; Effect ■ Darkness
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
