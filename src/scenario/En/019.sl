
;; ■ Small Village / Inn

@bgm f=bgm02

@move_f f=iris@bisyo in=r t=300

[Elise]「I was told I could get some rest here.」

@huki id=2 b=8

[Old woman]「Yes certainly, for only \$CURRENCY[10G] a night.」

@huki b=2
@bs f=iris@kanasimi op2=hatena
[Elise]「Ten...what now?」

@huki id=2 b=1 wt=1

[Old woman]「Ten gold coins.」

@bs f=iris@kanasimi

;; * Show a sample.

;; [text] "The innkeeper showed 10G to Iris"
;; //☆☆☆

@huki b=8 wt=1
@bs f=iris@kuyasii
[Elise]「Humans always make things complicated and confusing.」

[Elise]「Hmm... I could take this place by force and rest...」

; REMOVED
;@huki id=2 b=1 wt=1
; NEW
@huki id=2 b=1

[Old woman]「―Eh?」

@huki b=7
@bs f=iris@kanasimi

[Elise]「Ah... I'm so weak now that I can't use magic here. Well, never mind then...」

;; light icon
@huki b=9
@bs f=iris@kuyasii op2=denkyu

[Elise]「―Oh wait! It seems that I picked up a couple of those things on those orcs outside.」

;; Iris took out the coin.

@bs f=iris@bisyo

[Elise]「Would this suffice?」

@huki id=2 b=3 wt=1

[Old woman]「Yes, I'll take only ten of these. You can keep the rest.」

[Old woman]「Please take care of your coins. You'll need them to buy items from the stores in this town.」

@huki b=6
@bs f=iris@kanasimi

[Elise]「Uh... Like this?」

@huki id=2 b=8

[Old woman]「Yes, to rent a room at an inn or to buy goods, you'll need coins for that.」

@huki b=7
@bs f=iris@kuyasii

[Elise]「Okay. I think I get it. The way of life for humans can be so tricky.」

;; Balloon: sweat
@huki id=2 b=6

[Old woman] (How can this girl be so ignorant? Is she royalty...?!)

@huki id=2 b=8

[Old woman]「Your room number is 102. It's marked on the door.」

@bs f=iris@bisyo

[Elise]「102. Got it.」

@move_f f=iris@bisyo out=r t=300
@bgm

;; ※Fade out while heading to the room you stay in → Fade in in the room you stay
