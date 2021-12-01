
;; ■ East Island / Near the farm
;; ● Royal Route
;; ⑭ Demon King rescued by Kunoichi.

@bgm f=dungeon10

@move_f f=sakuya@bisyo in=l t=300

[Sakuya]「You are safe now.」

[Sakuya]「My name is Sakuya. I am Kunoichi.」

@huki b=2 wt=1

@move_f f=iris@kanasimi in=r t=300

[Elise]「Kunoichi?」

[Sakuya]「It means female ninja... In West land, I think it can be compared to assassin.」

@huki b=8 wt=1
@huki b=1 wt=1

@bs f=iris@bisyo

[Elise]「Oh, I probably know what that means then. But...what do you mean when you said West land?」

@bs f=sakuya@emi

[Sakuya]「I mean continent you come from... Right?」

@bs f=iris@odoroki op2=kettei

[Elise]「...wait, wait. Isn't this place on the West continent?」

@bs f=sakuya@bisyo

[Sakuya]「No. This is East island.」

@huki b=1 wt=1

@bs f=iris@odoroki

[Elise]「What?! So where is the West continent?!」

@bs f=sakuya@metoji

[Sakuya]「Cross ocean and you will see it.」

@huki b=7 wt=1

@bs f=iris@kanasimi op2=ase

[Elise]「Ugh... So it means that Deca took me to a totally different continent... That moron!」

@route route=r:2 wt=1
@huki b=5 wt=1

@bs f=iris@kuyasii op2=konwaku

[Elise] (Even though I had already planned to severely punish Deca the next time I would have seen him...)

[Elise] (There's no way I could find the way back on my own. Besides, it's impossible for me to fly since I haven't recovered all my magic yet...)

@huki id=11 b=2 wt=1

@bs f=sakuya@odoroki

[Sakuya]「What are you muttering about?」

@route route=l:2 wt=1
@huki b=8 wt=1

@bs f=iris@kanasimi

[Elise]「Well... I have to find a boat to take me somewhere else...」

@bs f=sakuya@kanasimi

[Sakuya]「Impossible. All means of transportation from and to other countries are banned.」

@huki b=7

[Elise]「Dammit. Is there any other way? I need to go to the West continent as soon as possible.」

;;⑮

@huki id=11 b=8 wt=1

@bs f=sakuya@bisyo

[Sakuya]「There is only one way.」

[Sakuya]「Overthrow ruler of this country, mad shōgun \$ENEMY[17]. So you can take boat to West land.」

@huki b=2 wt=1

@bs f=iris@kuyasii

[Elise]「Revenant General? It sounds like he would be a tough rival.」

[Sakuya]「Yes. But I cannot think of another way.」

@huki b=8 wt=1

@bs f=iris@bisyo

[Elise]「Well, okay then. Everything will be fine once I defeat that general of yours. Right?」

@bs f=sakuya@emi

[Sakuya]「Great! I bet you had some talents. That is why I saved you. I knew you would be worth it!」

@huki b=6

[Elise]「Well, thanks. I guess?」

@huki id=11 b=3

@bs f=sakuya@bisyo

[Sakuya]「That is what ninja do... But I will still always save weak people with kindness.」

@huki b=8

@bs f=iris@emi

[Elise]「So you knew I was strong? Well, I'll try my best to help you, since you have a good eye.」

@huki b=2 wt=1

@bs f=iris@bisyo

[Elise]「So, where's this general?」

[Sakuya]「In his castle in Mad City, so called for his crazy ruling.」

@bs f=iris@reisyo

[Elise]「All right, sounds fun. Lead the way.」

@move_f f=iris@reisyo out=r t=300
@move_f f=sakuya@bisyo out=l t=300

;; ※ Free movement
