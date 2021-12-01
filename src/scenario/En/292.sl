
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Aristocrat: First stage

;; Choice ■ Choice 1: Do not sell → Don't sell / Choice 2: Sell → Sell
;; Fly ■ Sell yourself

@bgm f=dungeon3

@move_f f=iris@bisyo in=r t=300

[Elise]「Well, it can't be helped. What do you want me to do?」

@huki id=14 b=3 wt=1

[Aristocrat]「Oh, that's great. Well, for starters... Could you change the way you speak?」

@huki b=2 wt=1
@bs f=iris@kanasimi op2=hatena

[Elise]「... The way I speak?」

[Aristocrat]「Let's see... Please repeat after me...」
[Aristocrat]『Master, please allow me to use both my hands and my mouth to serve you.』

@huki b=8 wt=1
@bs f=iris@ikari

[Elise]「You want me to call you Master, uh? You got guts, you arrogant boy... Do you have a death wish?」

@wait t=500

[Aristocrat]「Heh heh... I love this fierce and menacing look on your face... Well, I just want a girl to say these kind of things to me.」

[Aristocrat]「I'll pay for your time. So for the time being, I'm your master. Understood, miss?」

@huki b=8 wt=1
@bs f=iris@kuyasii

[Elise]「Tsk... fine, fine.」

@wait t=1000
@bs f=iris@bisyo

[Elise]『Mas―Master... Please let me use my...hands and...mouth...to serve...you.』

@huki b=8 wt=1
@bs f=iris@kuyasii_hoho op2=ase

[Elise]「Is this to your satisfaction... Master? Tsk... Are all men this despicable?」

@huki id=14 b=3 wt=1

[Aristocrat]「Heh heh... Not bad... Your mannerisms are obviously clumsy... But your expressions of shame, anger, disgust and humiliation are so wonderful.」

@huki b=8 wt=1
@bs f=iris@kuyasii

[Elise]「Really, uh. Well, you just look like a pervert to me. M―Master.」

[Aristocrat]「Heh heh... I'll take your words as a compliment. By the way, what's your name, miss?」

@move_f f=iris@kuyasii out=r t=300

;; Effect ■ Dark
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
