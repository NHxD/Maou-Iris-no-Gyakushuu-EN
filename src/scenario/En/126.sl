
;; ■ Prince Mansion
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

;; H event occurs when wiping the window
;; Press the event occurrence condition, balloon icon for window wiping.

;; ● Victory

@bgm f=Ship3

; NEW
@huki id=18 b=7
; NEW
@huki id=24 b=7

; NEW
@dir_fix id=24 type=off wt=0
; NEW
@dir id=24 dir=u wt=0
; NEW
@change id=24 f=Damage2 num=5

[Eyster]「Wow! Impossible! How could you defeat Royal Knights?!」

; NEW
@dir_fix id=18 type=off wt=0
; NEW
@dir id=18 dir=u wt=0
; NEW
@change id=18 f=Damage2 num=5


@move_f f=iris@reisyo body=maid in=r t=300

[Elise]「Well, you get it now? No human can defeat me. And now, it's your turn to get spanked! Ohohoho～♪」

[Eyster]「Wait! Wait! I'm a member of the royal family. Laying your finger on me would be a felony!」

@bs f=iris@kuyasii

[Elise]「Fool, I could care less about your lineage.」

[Eyster]「Oh no! Don't― please don't kill me! Please!」

@bs f=iris@reisyo

[Elise]「Well, your life now depends entirely on you. Answer me honestly and I may let you live...」

[Elise]「Did you order the bandits to attack Princess Sonia?」

[Eyster]「What are you even talking about? I don't know anything about―」

[Elise]「Heh. What a pity, if you had told me the truth, you wouldn't have to suffer so much pain... So I'm glad you didn't! Hehe～♪」

[Eyster]「What? What do you mean?!」

@bs f=iris@kougeki2

[Elise]「I, Devil Elise, shall curse you with...」

[Elise]『\$SKILL[Mind Turbulence!]』

; NEW
;@anime num=652

;; Directing the magic of confession
@anime num=206

@anime id=10 num=211

; NEW
;@anime id=10 num=303
; NEW
;@anime id=10 num=653
; NEW
@anime id=10 num=307

[Eyster]「Ah?! Ahhh! My head! My head...feels like...it's going...to burst!」

@bs f=iris@reisyo

[Elise]「Ohohoho～♪ I put a very painful curse on you ♥ Well then, I'll ask you once more, and I believe that you will answer truthfully, this time...」

[Elise]「Who's the man behind the assassination attempt on Princess Sonia? Was it you?」

[Eyster]「Ngh	...Y―Yes... yes! It was me! I want to become the next king, but the Hero stole my rightful place so I had to―」

[Eyster]「―Arrghh.. S―Stop!! P―Please make it stop! My b―brain is...」

@bs f=iris@emi

[Elise]「Luckily for me, you were the real culprit. If you were innocent, I would have to erase your memory...」

@bs f=iris@bisyo

[Elise]「Well, let's return to the castle.」

[Eyster]「Aah! P―Please make this p―pain go away! I'm g―going crazy!! Aaaah!!!」

@bs f=iris@reisyo

[Elise]「Ohohoho～♪ After we return to the castle, confess your crimes and I shall lift the curse.」
[Elise]「However, if you dare lie to me again, then the curse will never go away.」

[Eyster]「Ow... I u―understand... L―Let's go...quick!!」

@move_f f=iris@reisyo out=r t=300

@fade type=out t=1000 wt=1
;; Background ■ Dark

...........................

;;@wait t=1000
;;@fade type=in t=1000 wt=1
