
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Boy: First stage

;; Background ■ Port town, Haldoor

;; Fly ■ Sell yourself

@bgm f=field5

@wait t=600
@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Yes... Well, I need all the money I can get, and if this is only once, then maybe―」

@huki id=6 b=3 wt=1

[Rich boy]「―Glad to hear! I'm really looking forward to your service because I never had your "type" before.」

@huki b=8 wt=1
@bs f=iris@kuyasii

[Elise]「Sounds like this isn't your first time doing this. You can get everything with money in this world. But let me remind you, this is only once.」

@move_f f=iris@kuyasii out=r t=300

;; Effect ■ Darkness

@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
