
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of the father in the tool shop: Introduction

;; Background ■ Tool shop

;; Situation ■Iris talking to a tool shop
;; ■ After that, an event occurs when you talk with three "Evil Eye's Eyes"
;; ■ Event occurrence conditions: Possessing 3 eyes of Evil Eye
;; ■ I have
;; Selection ■ Selection 1: Pass the eyes of Evil Eye / Selection 2: Buy tools
;; Flying destination ■ 1: Pass the eyes of Evil Eye

@bgm f=bgm01
@se f=Knock

@move_f f=iris@bisyo in=r t=300

[Elise]「All right, I've got what you asked me for.」

@huki id=2 b=1

[Item shop owner]「Oh oh! You got it for me! Hah! Thank you!\nIt's perfect!」

@bs f=iris@emi

[Elise]「Well, it was a simple task.」

@move_f f=iris@emi out=r t=300

@huki id=2 b=8 wt=1
@huki id=2 b=4

[Item shop owner]「Hehehehe～♪」


@huki b=7
@move_f f=iris@kougeki1 in=r t=300

[Elise]「Ugh... What the hell is wrong with you?!\nYour sudden laughter just now gives me the creeps...」
[Elise]「Just give me the treasure you promised me...\nand you better be quick about it.」

@huki id=2 b=1

[Item shop owner]「Oh right, right. I'll go get it for you...\nJust wait a moment, please.」

@huki id=2 b=3

[Item shop owner]「Heh heh! I'm so happy! I'll finally be able to use it! Ah... I'll go get the treasure like I promised...」

@move_f f=iris@kougeki1 out=r t=300

;; Situation ■ The tool store opens the back door and enters the warehouse
