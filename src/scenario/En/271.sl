
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event: Prostitute event: Sakuya: Evil officer: Second stage general purpose

;; Background ■ Prostitute room

@huki id=1 b=4 wt=1

@bgm f=field5

[Corrupt deputy official]「Happy to see me, Sakuya?」

@move_f f=sakuya@bisyo body=oiran in=r t=300

[Sakuya]「Yes, yes, my lord ♥」

[Corrupt deputy official]「Really, really happy? Hehehehe♪ You really are a good girl. So, today, I will fill your vagina to the brim ♪」

@bs f=sakuya@kanasimi_hoho

[Sakuya]「Hah...」

@move_f f=sakuya@kanasimi_hoho out=r t=300

;; Effect ■ Darkness
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
