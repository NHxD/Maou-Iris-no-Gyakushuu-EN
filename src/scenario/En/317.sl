
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Boy: Second stage

;; Background ■ Port town, Haldoor

;; Jump destination ■ Let me

@bgm f=field5
@huki b=8 wt=1

@move_f f=iris@emi in=r t=300

[Elise]「All right, I will allow it. But only if you pay me three times the usual amount.」

@huki id=6 b=4 wt=1

[Rich boy]「Yes! I'm so happy to be able to do it with you, big sis! I can't wait anymore!」

@move_f f=iris@emi out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
