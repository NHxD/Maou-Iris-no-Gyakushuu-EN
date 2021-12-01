
;; ■ Rocky Mountain / Bandit Hideout
;; ⑧ Demon King who reaches the origin of the bandit

@bgm f=bgm03

@wait t=1000
@huki id=4 b=8
@move_f f=iris@reisyo in=r t=300

[Bandit Leader]「Aha! Welcome, girl... You killed so many of me boys, yet you stand proudly before me... I'm impressed.」

The man who looked like the bandit leader was obscenely ogling at Elise's body.

@huki id=4 b=4

[Bandit Leader]「Well then, to reward you for coming this far, I'll let you become my concubine and fuck you everyday! ♥」

@bs f=iris@kougeki1

[Elise]「How would this be a reward for me? Are you stupid?」

; REMOVED
;@huki id=4 b=5
; NEW
@huki id=4 b=2

@huki id=9 b=5
@huki id=10 b=5 wt=1

[Bandit Leader]「Hah?!」

@huki id=9 b=1
; NEW
@c_jump id=9 y=1

[Bandit A]「Nobody insults our boss, bitch!」

@huki id=10 b=1
; NEW
@c_jump id=10 y=1

[Bandit B]「Let's get rid of her now, boss! I don't like her attitude!」

@huki id=4 b=3

[Bandit leader]「Haha! Wait... I love her arrogance.\nNever before someone dared to insult me face to face.」

; NEW
@fb id=9 dir=back wt=0
; NEW
@fb id=10 dir=back wt=0

@bs f=iris@reisyo

[Elise]「So much for that. Do you know where I could find the Hero?」

@huki id=4 b=2

[Bandit Leader]「The... Hero?」

@bs f=iris@kougeki1

[Elise]「Chiot. The Hero Chiot.」

@huki id=4 b=9

[Bandit Leader]「Oh, the Hero Chiot. Information about him is a little scarce.」

[Bandit Leader]「However, I can arrange a party to investigate his whereabouts right away.」

[Bandit Leader]「But only if you become my concubine... Deal?」

@huki b=2
@bs f=iris@syuuti

[Elise]「Really? Hum... what should I do...」

@huki id=4 b=3

[Bandit Leader]「Hey, what are you hesitating for? If you are willing to become my concubine, my gang will do anything for you in return!」

@bgm t=100
@huki b=2
@bs f=iris@kougeki1

[Elise]「Concubine, uh?」

[Bandit Leader]「Yep ♥」

[Elise]「In your dreams, fool!」

@huki id=4 b=2
[Bandit Leader]「What?!」

@bgm f=Battle3

@huki b=3
@bs f=iris@reisyo

[Elise]「I was just thinking how I should make you sing the Hero's location to me before burying you.」

@huki id=4 b=6

[Bandit Leader]「What are you talking about?! You can't be serious!」

; REMOVED
;@bs f=iris@takawarai_z body_op=z
; NEW
@zoom_f f=iris@takawarai_z src=iris@reisyo in=r t=300

[Elise]「Oh, you can bet I am. How dare you suggest that I, the Devil, be a human's concubine?\nWake up, loser!」

@move_f f=iris@takawarai_z out=r t=150

;; Combat: Bandit leader + minion
