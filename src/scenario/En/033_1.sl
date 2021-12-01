
;; ○ Mob (Prostitution client)
;; ○ Event occurrence conditions (optional): Talk to a man in the back alley.
;; ※ If you are doing a prostitution event for the first time in any town, the scenario is as follows.

@bgm f=dungeon3

[Young man]「You want to earn gold coins? Here's an easy way.」

@move_f f=iris@bisyo in=r t=300

[Elise]「Great. Tell me how.」

[Young man]「Use your body to make a man happy.」

@bs f=iris@kanasimi

[Elise]「Emm... What do you mean?」

[Young man]「Do you really not get it? I mean, use your hands and mouth to pleasure my dick, and I'll give you some coins.」

@bs f=iris@odoroki_hoho

[Elise]「What...?」

[Young man]「Come on! It won't hurt you, right?」

[Young man]「I'd pay \$CURRENCY[500G] for your service. How about it, uh?」

@bs f=iris@odoroki

[Elise]「Wow!」

@bs f=iris@kuyasii

[Elise]「500G! I could stay for 50 nights at the inn with that many coins!」

[Elise]「It's so much more lucrative than robbing monsters.」

@bs f=iris@kuyasii_hoho

[Elise]「Although, how could a devil like me give service to a human? But if I do this, I can make a quick move on my revenge goal.」

@move_f f=iris@kuyasii_hoho out=r t=300

;; ※ The following is CG01.

;; Choices: Sell/Do not sell
