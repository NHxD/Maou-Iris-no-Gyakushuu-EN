
;; ■ Small Village
;; ※ Dark→Forced move to the village

; NEW
@bgm

@bgm f=Theme3

@huki id=15 b=1

[Village chief]「Oh! Thank god you're all back! Are you all right?」

;; CHANGED 19 => 21
@huki id=21 b=1
@c_jump id=21

[Resident 1]「It's really you, my dear! ♥」

@huki id=18 b=1
@c_jump id=18

[Married Woman]「Oh, darling! My darling! ♥」

;; CHANGED 21 => 19
@huki id=19 b=1
@c_jump id=19

[Resident 2]「Oh, my baby! Are you all right?」

@huki id=20 b=1
@c_jump id=20

[Girl 1]「Daddy! Daddy! Waaah～! *sniff*」

@huki id=23 b=1
@c_jump id=23

[Girl 2]「Thank god we're back! I was so scared.」

@huki id=22 b=1
@c_jump id=22

[Resident 3]「It'll be all right! You're safe now.」

@huki id=15 b=1

[Village chief]「We're very grateful for your help. Thank you so much!」


@huki b=6 wt=1
@move_f f=iris@syuuti in=r t=300
[Elise]「It was nothing, really.」

[Village chief]「Thanks to our Elise, peace can finally return to our village!」

[Village chief]「Tonight, please enjoy hand-cooked meals prepared by our lovely wives!」

@huki b=3
@bs f=iris@emi

[Elise]「Oh... with pleasure! I'm starving!」

; NEW
@bs f=iris@reisyo

[Elise]「But... I'd like to get paid too.」

@huki id=15 b=1

[Village chief]「Of course. Of course. You're our Hero, after all! The best of the best!」

@huki b=5
@bs f=iris@ikari

[Elise]「I don't know whether you are praising me or not, but don't utter the word HERO in my presence ever again. It disgusts me.」

@huki id=15 b=6

[Village chief]「Aha!」

@huki b=9
@bs f=iris@bisyo

[Elise]「But while we're on this subject, I want to ask you something...」

@bs f=iris@kougeki1

[Elise]「What do you know of the Hero who goes by the name Chiot?」

@huki id=15 b=1 wt=1

[Village chief]「Oh, you mean our Hero Chiot? The best of the best?」

@huki b=7
@bs f=iris@kuyasii

[Elise]「You've just used that exact phrase to praise me, then you use it again to describe this man, too? Hmph...」

[Elise]「Anyway, tell me what you know about him.」

@bs f=iris@kougeki1
@huki id=15 b=8

[Village chief]「Not much, actually. But I heard rumours that Our Hero was recently seen somewhere near Harvest Town.」

@huki id=15 b=6

[Village chief]「It's a town not too far from here to the south. It used to be such a lively place too, but it became...strange lately.」

@huki b=2
@bs f=iris@kanasimi

[Elise]「Wait... What do you mean by strange?」

@huki id=15 b=2

[Village chief]「I don't really know, just that the place isn't what it used to be.」

[Elise]「Uh? Wha―」

@dir id=18 dir=r
; REMOVED
;@dir id=19 dir=r
; NEW
@dir id=19 dir=u
@dir id=20 dir=u
; REMOVED
;@dir id=21 dir=u
; NEW
@dir id=21 dir=r
@dir id=22 dir=l
@dir id=23 dir=l wt=1
@huki id=15 b=1

[Village chief]「―Oh the party is ready! This way please, Our Hero.」

@huki b=5
@bs f=iris@ikari

[Elise]「I told you NOT to call me HERO!」

@move_f f=iris@ikari out=r t=300

; NEW
@huki id=15 b=6 wt=0

@bgm


;; After that, while I was eating a lot of food that was reasonably expensive for a small village, many times I thanked the villagers who appeared and replaced it...

;; Somehow, I felt uncomfortable and uncomfortable, so I decided to leave for a town called Proft soon tomorrow morning.
