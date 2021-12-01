
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of the father in the tool shop: Second stage general purpose

;; ■ If you choose to store at a tool shop
;; Background ■ Tool shop

@bgm f=field5
@huki id=2 b=3

[Item shop owner]「Sorry Elise, I have to trouble you again to look after the shop for me today.」

@move_f f=iris@saimin in=r t=300

[Elise]「I understand. After all, it's my job.」

[Item shop owner]「Ah! Today, I'll be sure to pour a lot of...effort as well. Hehehe ～♪」

@huki b=2 wt=1
@bs f=iris@kanasimi

[Elise]「Uh?」

@move_f f=iris@kanasimi out=r t=300

;; Effect ■ Dark
@bgm
