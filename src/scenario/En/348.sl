;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 3: Sleep attack: 1st stage

;; Event occurrence conditions ■ Go to the Inn of the Royal Capital and select "Royal" from the "Single", "Double" and "Royal" rooms.

;; Background ■ Inn of the Royal Capital

;; Choice ■ Choice 1: Do not drink → Do not drink / Choice 2: Drink → Drink
;; Fly ■ Drink

@bgm f=Town1
@wait t=500

@move_f f=iris@bisyo in=r t=300
[Elise]「Well, it's free... So why not?」

[Receptionist]「Of course. Here you go.」

;; Situation ■ Iris being given a drink

@se f=Liquid vol=90
@wait t=1000
@bs f=iris@emi

[Elise]「*gulp* *gulp* Ahhh～ Wow, it actually tastes pretty good! It can't compete with the finest wine from my dark castle, though.」

@huki id=9 b=2 wt=1

[Receptionist]「Ah?」

@huki b=8 wt=1
@bs f=iris@kanasimi op2=konwaku

[Elise]「But... my wine cellar was completely ruined in the battle against the Hero...」

[Elise]「Broken bottles... Destroyed barrels... Everything was ruined. Ruined! Aaah... It was such a miserable sight.」

@huki id=9 b=8 wt=1

[Receptionist]「Hah. Uh... Well, so... I'll take you to your room now... Please follow me.」

@move_f f=iris@kanasimi out=r t=300

;; Effect ■ Dark (map movement)
