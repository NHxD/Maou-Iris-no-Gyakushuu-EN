
;; ○ Mob (Prostitution client)
;; ○ Event occurrence conditions (optional): Talk to a man in the back alley.
;; ※ If you are doing a prostitution event for the first time in any town, the scenario is as follows.

@bgm f=dungeon3

[Young man]「You want to earn gold coins? Here's an easy way.」

@move_f f=iris@bisyo in=r t=300

[Elise]「Great. Tell me how.」

[Young man]「Use your body to make a man happy.」

@huki b=2
@bs f=iris@kanasimi

[Elise]「Uh... What do you mean...?」

[Young man]「Do you really not get it? I mean, use your hands and mouth to pleasure my dick, and I'll give you some coins.」

@huki b=1
@bs f=iris@odoroki_hoho

[Elise]「What...?」

[Young man]「Come on! It won't hurt you, right?」

[Young man]「I'd pay \$CURRENCY[500G] for your service. How about it, uh?」

@huki b=1
@bs f=iris@kougeki1

[Elise]「Wow!」

@huki b=8
@bs f=iris@syuuti

[Elise]「500 gold coins! I could stay for 50 nights at the inn with that many coins!」

[Elise]「It's so much more lucrative than robbing monsters.」

@huki b=7
@bs f=iris@kuyasii

[Elise]「Although, how could a Devil like me give service to a human? But if I do this, I can make a quick move on my plan for revenge.」

@move_f f=iris@kuyasii out=r t=300

;; ※ The following is CG01.

;; Choices: Sell/Do not sell
