
;; ■ Grand Kingdom - Eyster's Mansion's Garden
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion

@bgm f=dungeon3

[Maid]「Can I help you?」

@move_f f=iris@bisyo in=r t=300

[Elise]「I heard this place is hiring a new maid?」

[Maid]「Do you really want to work here, miss? Do you have any experience as a maid?」

[Elise]「No.」

[Maid]「Can you cook meals or do the laundry?」

@bs f=iris@emi

[Elise]「Of course not.」

@bs f=iris@bisyo

;; Maid, sweat
@huki id=4 b=6

[Maid]「Hah?! W―Well, wait... please wait here... I have to ask the master of the house.」

;; A few seconds after the maid enters the mansion, the maid returns.
@route id=4 route=up:6 wt=0
@fade type=out t=1000 wt=1
@wait t=2000
@event_warp id=4 x=15 y=15 dir=d
@dot_move x=15 y=18 dir=u
@route id=4 route=d:2 wt=0
@fade type=in t=1000 wt=1

[Maid]「Please come in. The master will meet with you.」

@bs f=iris@emi

[Elise]「Great.」

@move_f f=iris@emi out=r t=300

;;@fade type=out t=1000 wt=1
;;@wait t=1000
;;@fade type=in t=1000 wt=1

;; After dark, move place, Est room (in front of door)
