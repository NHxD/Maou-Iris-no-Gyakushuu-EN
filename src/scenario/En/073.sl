
;; ■ East Island / Mad City
;; ● Royal Route
;; ⑯ Demon Kings arrive at the "Kyoto" where the Devil General is

@bgm f=bgm03

@move_f f=sakuya@kuyasii in=l t=300

[Sakuya]「Atmosphere here is so disgusting... This is Mad City. Revenant General rules over every district here.」

@move_f f=iris@reisyo in=r t=300

[Elise]「Mad City... I can feel an extraordinary strong presence here...」

[Elise]「I'm dying of excitement at the thought of killing that Bastard General. Let's hurry up!」

;; Iris starts walking
@route route=up wt=1
@huki id=1 b=1

@bs f=sakuya@odoroki op2=kettei

[Sakuya]「What!? Wait!」

;; Sakuya rushing to speak out
@dir dir=d wt=1

@bs f=iris@kanasimi op2=hatena

[Elise]「Uh? Why? Let's go kill him already.」

@bs f=sakuya@kanasimi

[Sakuya]「You cannot imagine power of evil shōgun. Besides, he has many strong bodyguards...」

[Sakuya]「So it is too dangerous to attack him directly.」

[Elise]「Strong bodyguards? You mean there are many more powerful foes?」

[Sakuya]「Yes... Many people tried to approach him, but they were immediately killed by dozen hired rōnin.」

@bs f=iris@kuyasii

[Elise]「So a frontal attack may be the worst plan. But you must have other plans, right?」

@bs f=sakuya@metoji

[Sakuya]「I do have another plan, although it is not very righteous. However, it might be easiest way to get close to him.」

@bs f=iris@kanasimi

[Elise]「Do tell.」

@bs f=sakuya@metoji_hoho

[Sakuya]「... We pretend to be oirans from outer city and soon we will be called to his castle.」

[Sakuya]「Because Revenant General calls a different oiran everyday to have sex with.」

@bs f=iris@kanasimi_hoho

; NEW
@huki b=2

;[Elise]「Wait... What's an oiran? You mean...a whore?」
[Elise]「Wait... What's an oiran?」

;[Sakuya]「I think so. Yes?」
[Sakuya]「I think in West land, they call them whores.」

; NEW
;@huki id=1 b=8
; NEW
;@huki b=8 wt=1
; NEW
@huki b=1

; NEW
@bs f=iris@odoroki_hoho op2=kettei

; NEW
;[Elise]「Please, tell me you're joking...?!」
[Elise]「Wait, you can't be serious...?!」

; NEW
;@huki id=1 b=8

[Sakuya]「... Very high class whores.」

; NEW
;@huki b=8 wt=1

; REMOVED
;@bs f=iris@kuyasii op2=konwaku
; NEW
@bs f=iris@kuyasii_hoho

; NEW
@huki b=6

[Elise]「... Well, what's the best plan here?」

; NEW
@bs f=iris@kanasimi_hoho

[Elise] (A direct assault would be the simplest plan, but it won't be worth it if I end up using all my magic before I find the Hero...)

; REMOVED
;@move_f f=iris@kuyasii out=r t=300
; NEW
@move_f f=iris@kanasimi_hoho out=r t=300
@move_f f=sakuya@metoji_hoho out=l t=300

;; ● Options: Strive to attack / Become a prostitute
