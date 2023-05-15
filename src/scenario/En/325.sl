
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 2: Hypnosis of the father in the tool shop: Introduction

;; Background ■ Tool shop

;; Situation ■ Iris talking to a tool shop

@huki b=2 wt=1
@move_f f=iris@bisyo in=r t=300

[Elise]「Hey, is this an item shop?」

@huki id=2 b=7 wt=1

[Item shop owner]「Wow, I almost got in a lot of trouble, ahah. Without the―」

@bs f=iris@kougeki1

[Elise]「Hey you!」

@huki id=2 b=1
@c_jump id=2 wt=1
@dir_fix id=2 type=off
@dir id=2 dir=d

; NEW
@bgm_save
; NEW
@bgm f=Town2

[Item shop owner]「―Oh! Welcome!」

@bs f=iris@bisyo

[Elise]「Let me see what you're selling.」

@dir id=2 dir=r wt=1
@wait t=500
@dir id=2 dir=l wt=1
@wait t=500
@dir id=2 dir=d wt=1
@wait t=500

[Item shop owner]「Yes, of course. Everything up for sale is over there. Hey, would you happen to be the person who took care of the bandits?」

@huki b=2
@bs f=iris@takawarai

[Elise]「Indeed I am. But what's it to you?」

@huki id=2 b=1

[Item shop owner]「Oh, that's so great! You're definitely capable then. Actually, I have a favor to ask―」

@dir dir=l
@bs f=iris@kuyasii

[Elise]「―No. I refuse.」

@huki id=2 b=6 wt=1

[Item shop owner]「Why?! Please, at least let me finish speaking―」

@dir dir=u
@huki b=5
@bs f=iris@ikari

[Elise]「―No. Getting rid of those bandits took time and effort already. And now, another human want to use me again?」

@move_f f=iris@ikari out=r t=300
@huki id=2 b=6

[Item shop owner]「Hah. Well, no. That's not what I meant to do...」

@huki id=2 b=8

[Item shop owner]「You see... I'm in possession of a certain magic item that can be unsealed only with a specific kind of demonic material.」

@dir id=2 dir=u wt=1
@huki id=2 b=8 wt=1
@wait t=500
@huki id=2 b=9 wt=1
@dir id=2 dir=d
@wait t=200

[Item shop owner]「If you could obtain those materials for me, I'll give you a magic treasure as a reward. How about it?」

@huki b=8 wt=1
@move_f f=iris@bisyo in=r t=300

[Elise]「Hmph! Well, if that's the case, then maybe I'll get those things for you if I happen to get bored.」

@huki id=2 b=3

[Item shop owner]「Fantastic! Thank you so much, miss. I need three eyeballs of those large eye demons. They can be found in the wasteland where the bandits lived.」

@move_f f=iris@bisyo out=r t=300

;; ■ After that, an event will occur if you speak with three "Evil Eye's Eyes"

; NEW
@bgm t=5000
; NEW
@bgm_resume
