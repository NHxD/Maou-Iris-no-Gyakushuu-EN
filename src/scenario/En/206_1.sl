
@mes_win back=1 pos=1

\fw:\m『EVIL HAS NO PLACE IN THE DIVINE PARADISE.\n\mVANISH THIS INSTANT!』

@mes_win back=0 pos=2
@move_f f=iris@ikari in=r t=300

[Elise]「Yeah, right... The one who follows God is good, and the one who opposes God is evil.」
[Elise]「Ugh... This is beyond stupid... I won't let myself be defined by your narcissistic logic!」

@mes_win back=1 pos=1

\fw:\m『FOOL...\n\mIT IS UP TO GOD TO DECIDE EVERYTHING IN THIS WORLD.\n\mAND ALL EVIL MUST BE BANISHED.』

@mes_win back=0 pos=2
@huki id=7 b=1
@move_f f=sion@ikari1 in=l t=300

[Chiot]「God, if you threaten or hurt the innocent people who live in peace, then call me evil, for all I care...」
[Chiot]「... Because I'll protect the smiles and happiness of everyone in this world!!!」

@huki b=1
@bs f=iris@kougeki2

[Elise]「Chiot, this is the final battle!」

@huki id=7 b=1
; REMOVED
@bs f=sion@reisei

[Chiot]「Yes, let's do this!」


;; [Zion] "Oh, I'll definitely win ... I'll be back with you !!"

@move_f f=sion@reisei out=l t=150
@move_f f=iris@kougeki2 out=r t=150

;; ○ Event battle: Holy God (event occurs when HP is below 60%)
;; * If you lose, you will have a bad end or a rematch.
