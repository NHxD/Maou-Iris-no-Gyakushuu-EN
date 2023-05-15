
;; ● Royal Route
;; ● 2nd place in succession to the throne
;; Return to the original screen

@bgm f=bgm03

@move_f f=iris@reisyo in=r t=300

[Elise]「Well... Sonia has returned to her room.\nNow, I can confront this lewd brother of hers.」

; NEW
@move_f f=iris@reisyo out=r t=300

;; To Renan
@route route=r:3,u:7
@dir dir=l wt=1
@dir id=10 dir=r wt=1

; REMOVED
;@bs f=iris@emi
; NEW
@move_f f=iris@emi in=r t=300

[Elise]「Hey, would you mind explaining something to me?」

[Lannan]「What is it about...? Hey, I remember you. You were with Sonia earlier. You are...」

@bs f=iris@reisyo
@huki id=10 b=1

[Elise]「Elise. Although, who I am is of no importance to you. But I have something interesting to show you...」

[Lannan]「Hm? What is it?」

@move_f f=iris@reisyo out=r t=300

;; Renan, surprised icon

[Lannan]「This is...」

;; Recollection CG10
;; Iris magically showing video

@bgf- bg=ev10_s t=1000

[Elise]「I recorded what happened in this room, if this was to be exposed to the public, would your candidacy to the throne be in great peril?」

@fade type=out t=1000 wt=1
@ev
@wait t=500
@fade type=in t=1000 wt=1

[Lannan]「Ugh. This is an invasion of privacy between a gentleman and a lady enjoying themselves...\nThis recording of yours is illegal.」

@move_f f=iris@emi in=r t=300

[Elise]「Ahah! You're so much clever than the other prince. Even after being exposed, you're able to stay calm and think of an excuse. Impressive.」

[Lannan]「It's my pleasure to get your praise...」

[Lannan]『\$SKILL[Temptation Bright!]』

;; Renan tries to hypnotize, a magic circle appears
;; The magic square is shattered with the sound of glass shattering.
@anime id=10 num=213

; NEW
@huki id=10 b=1 se=0

[Lannan]「What?!」

@bs f=iris@reisyo

[Elise]「Ohohoho～♪ Did you really think that such a low level of hypnosis magic would have any effect on me?」

[Lannan]「Alas, I don't know who you really are... and I really wanted to avoid resorting to violence... but you leave me no choice here...」

@bs f=iris@reisyo

[Elise]「Ah～ah? The puny prince wants a fight? You? Really? AHAHAH! Are you so intent on dying today?」

;; Renan takes out the crystal

[Lannan]「Oh but *I* won't fight with you. Come forth...」

[Lannan]『\$SKILL[Angels!]』

; NEW
@huki b=1 se=0

@bs f=iris@odoroki op2=kettei

@invisible id=26 type=off
@anime id=26 num=216 wt=1
@invisible id=27 type=off
@anime id=27 num=216

[Elise](What?! He used a crystal to summon two angels?! This is impossible! How can a human have such control over heavenly beings?)

[Lannan]「All right then... Although that's a real shame, you will now vanish forever from this world.」

@bs f=iris@reisyo

[Elise]「Eh. This will be so much more interesting than fighting a human weakling like you. Bring it on!」

@move_f f=iris@reisyo out=r t=300

;; Event battle: Angel x 2 (Bad end or rematch when defeated)
