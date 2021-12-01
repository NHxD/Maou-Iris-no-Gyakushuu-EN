
;; ■ Castle Underground Temple
;; ● Royal Route

@bgm f=Theme1

[High priest]「Oh... It seems that we have a spectator... Show yourself... Devil!」

@route route=u:2
@move_f f=iris@bisyo in=r t=300

[Elise]「You're practicing quite the unusual and disturbing ritual here... Is this perhaps your secret fetish?」

[High priest]「Hahaha! This sacred ceremony uses a chosen one as a medium to summon gods. Something that a Devil like you could never understand.」

@bs f=iris@kuyasii

[Elise]「Well in my view, that gods need to resort to this kind of lewd ritual just shows how shameless and dirty those guys are, don't you think so?」

[High priest]「Hah. The Devil criticizing God's methods, how ironic... But you will find out soon enough, for He is coming!」

@huki b=7
@bs f=iris@kanasimi

[Elise] (I don't know which god he wants to summon...)

@huki b=8
@bs f=iris@ikari_hoho

[Elise] (But I'm sure that it's going to be a pain to deal with... So I'll knock him out before he―)

[High priest]「Hehe. If you think this god is at the same level as that inferior angel you defeated earlier, you're gravely mistaken.」

@huki b=1
; REMOVED
;@bs f=iris@kuyasii op=kettei
; NEW
@bs f=iris@takawarai op=denkyu

[Elise]「Ahah! You just admitted to be the one who gave the crystal to that stupid prince.」

[High priest]「And so what?! What do you think you can do to me, Devil?」

@bs f=iris@reisyo

@huki b=5

[Elise]「Well, that's easy. I just have to step on and pluck the annoying weed that stands before me.」

[High priest]「Hahaha! Do you see me as some unwanted wild plant? Well okay then, you'll see that this...weed isn't so easy to pluck!」

@anime id=15 num=49 wt=0
@switches id=302 val=1
@anime id=15 num=50 wt=1

@huki b=1

; NEW
@bs f=iris@odoroki

@fb dir=back wt=1

@wait t=1000

;; Become a power priest, power angel

; REMOVED
;@move_f f=iris@reisyo out=r t=300
; NEW
@move_f f=iris@odoroki out=r t=300

;; ● Event battle: Power Angel
