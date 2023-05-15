
;; ■ Outside Small Village
;; ● Transferred to the continent near Demon Castle

@bgm f=bgm01

@move_f f=iris@bisyo in=r t=300

[Iblis]「Ah. I remember this place. Quite a lot of low-level demons usually gather around here.」

@huki b=8

[Iblis]「Well, now I need to think about my living needs.」

[Iblis]「Clothing. Well... I guess I look human enough.」

@huki b=3
@bs f=iris@emi

[Iblis]「And once I regain some of my magic power, it'll be easy to change my appearance anyway.」

@bs f=iris@kanasimi

[Iblis]「As for the food and accommodation, I won't be able to return to my castle for a while.」

[Iblis]「And with this appearance, I'll have to pretend that I am human.」

@huki b=7
@bs f=iris@kuyasii

[Iblis]「Tsk... It's so shameful for I, the Devil, to disguise as a human... But this is only until I get my powers back.」

@bs f=iris@bisyo

[Iblis]「Anyway, I see a human village not far from here. I should go―」

@huki b=8
@bs f=iris@kuyasii
@wait t=1500
@bs f=iris@kanasimi

[Iblis]「―Wait... The name \$ACTOR[Iblis] will definitely get me into trouble.」

@bs f=iris@bisyo

[Iblis]「I think it might be a good idea to use my original name \$ACTOR[Elise] when interacting with humans.」

@huki b=8
@bs f=iris@kuyasii

[Elise]「In order to force obedience from humans, I've always used an appearance and a name that strike fear in humans...」

[Elise]「But now... What can I do in this human form?」

; REMOVED
;@bs f=iris@takawarai_z body_op=z x=c
; NEW
@zoom_f f=iris@takawarai_z src=iris@kuyasii in=r t=300

[Elise]「This is all that stupid Hero's fault!\nI'll definitely savour my revenge before ending his pitiful life! ♥」

@move_f f=iris@takawarai_z out=r t=300

;; Title logo displayed while moving up the screen
;; After a few seconds, it went dark and started free action.
