
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of the father in the tool shop: 1st stage

;; Background ■ Tool shop

;; Situation ■ Iris waking up

@bgm f=dungeon5

@huki b=8

[Elise]「Ngh...」

@huki b=7
@move_f f=iris@kanasimi in=r t=300

[Elise]「What am I doing here...?」

[Item shop owner]「So, Elise. Sorry to bother you, but could you please look after the shop for me?」

@huki b=2
@bs f=iris@odoroki

[Elise]「Uh? What?! Why the hell would I―」

;; Hypnotic sound (ultrasonic sound like bell)

@se f=催眠行使
@flash t=300
@bs f=iris@saimin

[Elise]「Y―Yes. I have to look after the shop.」

@huki id=2 b=3 wt=1

[Item shop owner]「Of course, while wearing this sexy swimsuit ～♪」


@move_f f=iris@saimin out=r t=300

;; Effect ■ Dark
@bgm
