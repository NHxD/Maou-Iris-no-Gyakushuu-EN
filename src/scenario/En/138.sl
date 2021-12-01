
;; ■ Royal Castle Jail
;; ● Royal Route
;;Prison

@bgm f=dungeon5

; REMOVED
;@move_f f=iris@kanasimi body=hadaka-kubiwa in=r t=300
; NEW
@move_f f=iris@kanasimi in=r t=300

[Elise]「Ow...ow...ow... Where...am I?」

@bs f=iris@odoroki

[Elise]「Am I...in prison?」

@bs f=iris@odoroki_hoho op2=kettei

[Elise]「A collar...?!」

@bs f=iris@kuyasii

[Elise] (Ugh... it's an anti-magic choker. It drains my mana and instantly cancels any magic spell. Tsk... I won't be able to use magic to escape...)

@bs f=iris@kuyasii_hoho

[Elise]「Wait... He could have killed me if he wanted to. So why is he keeping me naked and locked up in prison instead?!」

;; Zion Appears

@route id=12 route=l:13,u wt=1
@move_f f=sion@tuujou in=l t=300

[Chiot]「Are you awake?」

@bs f=iris@ikari_hoho

[Elise]「Damn you, Chiot!」

; REMOVED
;@huki id=12 b=8 wt=1
; NEW
@huki id=12 b=8
@bs f=sion@reisei

[Chiot]「I almost made the terrible mistake of killing an innocent girl.」

@bs f=iris@odoroki_hoho

; REMOVED
;@huki b=2 wt=1
; NEW
@huki b=2

[Elise]「W―What?」

; REMOVED
;@huki id=12 b=8 wt=1
; NEW
@huki id=12 b=8
@bs f=sion@kanasimi

[Chiot]「To think that the Devil would stoop so low as to possess the body of an innocent and beautiful fair maiden.」

@bs f=iris@odoroki op2=hatena

; REMOVED
;@huki b=2 wt=1
; NEW
@huki b=2

[Elise]「Eh?! What the hell are you talking about?!」

; REMOVED
;@huki id=12 b=1 wt=1
; NEW
@huki id=12 b=1
@bs f=sion@ikari1

[Chiot]「Devil Iblis! I command you to leave the body of this innocent girl!」

@bs f=iris@ikari

[Elise]「Are you stupid?! This is my own body!」

; REMOVED
;@huki id=12 b=8 wt=1
; NEW
@huki id=12 b=8
@bs f=sion@reisei

[Chiot]「Pretending to be this cute girl... I won't fall for your tricks, Devil!」

; REMOVED
;@huki b=5 wt=1
; NEW
@huki b=5

[Elise]「Pretend what?! I'm telling you the truth, stupid!」

@huki id=12 b=8 wt=1
@bs f=sion@ikari1

[Chiot]「I swear I will find a way to exorcise you out of this young girl's body. Then I'll make sure that you won't ever come back.」

@move_f f=sion@ikari1 out=l t=300
;; Zion, leave

; REMOVED
@route id=12 route=d,r:13 wt=1
; NEW
;@through id=12 type=on
; NEW
;@turn id=12 dir=r
; NEW
;@wait t=20
; NEW
;@route id=12 route=d,r:13
; NEW
;@route id=12 route=r:9 spd=5
; NEW
;@route id=12 route=u:11 spd=5
; NEW
;@invisible id=12 type=on

@bs f=iris@ikari_hoho

@huki b=8 wt=1
@huki b=5 wt=1

[Elise]「That stupid Chiot! He didn't believe a single word I said!」

@bs f=iris@odoroki_hoho

@huki b=5 wt=1

[Elise]「Why would he think that this isn't my own body?!」

; NEW
@bs f=iris@kuyasii_hoho

;; Sonia Appears

@switches id=216 val=1

; NEW
;@invisible id=12 type=off
; NEW
;@route id=12 route=d:11 spd=5
; NEW
;@route id=12 route=l:9 spd=5

@route id=12 route=l:13,u wt=1

@move_f f=sonia@kanasimi in=l t=300

[Sonia]「Oh, Lady Elise...」

; REMOVED
;@bs f=iris@odoroki
; NEW
@bs f=iris@kanasimi_hoho

[Elise]「Sonia? Sonia...is that you?」

@bs f=sonia@kanasimi_hoho

[Sonia]「Oof. You're still alive... I'm so relieved!」

@bs f=iris@odoroki_hoho

[Elise]「What are you relieved for? Don't you see that I'm in great danger being locked up here?」

@bs f=sonia@odoroki

[Sonia]「Well, I think that's true but― Oh, did Lord Chiot say something...strange to you?」

@bs f=iris@kanasimi op2=hatena

[Elise]「...strange?」

@bs f=sonia@yowaki_hoho

[Sonia]「Well, it was an emergency... So I lied to Chiot. I told him that the Devil possessed the body of an innocent girl.」

; REMOVED
;@bs f=iris@kuyasii op2=denkyu
; NEW
@bs f=iris@odoroki op2=denkyu

[Elise]「Hah! When did Princess Sonia learn to lie?!」

@wait t=650

; NEW
@bs f=iris@kanasimi_hoho

[Elise]「Well, things aren't looking so great for me in here...」

@bs f=iris@kuyasii_hoho
[Elise]「But I'm still alive thanks to you. And this gives me another chance to have my revenge against the Hero... Well, someday.」

@wait t=650

@bs f=iris@kanasimi_hoho

[Elise]「So...why did you save me?」

@bs f=sonia@bisyo_hoho

[Sonia]「Because I don't think you are such a bad person...or Devil. After all, you did save me from the bandits.」

@bs f=iris@kuyasii_hoho op2=konwaku

[Elise]「Hah. I should have expected as much... You're just too naive.」

@dir dir=u
@wait t=1000

@bs f=iris@kanasimi_hoho

[Elise] (And because of her naivety, her brothers took advantage of her and tried to have her killed...)

;;30：

@wait t=500
@dir dir=d

@bs f=iris@bisyo

[Elise]「Hmm... By the way, I would be very grateful if you could remove this collar off my neck.」

@bs f=sonia@yowaki_hoho

[Sonia]「Well, this is going to be...difficult.」

@bs f=iris@kanasimi

[Elise]「Hah. Why?」

[Sonia]「Only the prison guard holds the key to this collar.」

[Sonia]「Unfortunately, the dark elf believes that you control me with magic, so I can't act too suspiciously.」

@bs f=iris@bisyo

[Elise]「I see. Well, telling me who has the key is good enough. You may leave now, I'm good.」

@bs f=sonia@kanasimi

[Sonia]「Lady Elise...」

@bs f=iris@kanasimi

[Elise]「It will cause trouble if someone sees you here. Go now.」

@bs f=sonia@bisyo

[Sonia]「All right. I'll pray for your safety.」

@move_f f=sonia@bisyo out=l t=300

;; Sonia leaves

@route id=12 route=d,r:13 wt=1
; NEW
;@route id=12 route=r:9 spd=5
; NEW
;@route id=12 route=u:11 spd=5
; NEW
;@invisible id=12 type=on

@switches id=217 val=0

@bs f=iris@ikari_hoho

[Elise]「Hah... Prayers, uh? It's nice of you but this won't help at all.」

@bs f=iris@kuyasii

[Elise]「Well, never mind that. Now, how can I steal the key from the guard? Well, let's give it a try...」

@switches id=217 val=1
@move_f f=iris@kuyasii out=r t=300
