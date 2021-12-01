
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event: Prostitute event: Sakuya: Evil Officer: First stage general purpose

;; Background ■ Prostitute room
@bgm f=field5

@huki id=1 b=4 wt=1

[Corrupt deputy official]「Hehehe. Today, you still have to let me feel comfortable, Sakuya...」

@move_f f=sakuya@metoji body=oiran in=r t=300

[Sakuya]「Thank you so much for choosing me, mister deputy official ♥」

@move_f f=sakuya@metoji out=r t=300

;; Effect ■ Darkness
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
