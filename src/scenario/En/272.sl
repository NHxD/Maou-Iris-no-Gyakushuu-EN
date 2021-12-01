
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event: Prostitute event: Sakuya: Evil officer: Third stage

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1
@bgm f=field5

[Corrupt deputy official]「Come on, Sakuya, let me feel in heaven today. Hehehe ♪」

@move_f f=sakuya@bisyo body=oiran in=r t=300
[Sakuya]「Yes, my lord. Let me serve you well ♥」


@move_f f=sakuya@bisyo out=r t=300

;; Effect ■ Darkness
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
