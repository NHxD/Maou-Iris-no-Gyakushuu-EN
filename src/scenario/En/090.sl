
;; ■ East Island / Castle / Headquarter
;; ● Royal Route
;; ⑲ branch: victory

@bgm f=battle5

; NEW
@huki id=14 b=7

[Revenant General]「Argh...! How can I be defeated! Who are you...?!」

@move_f f=iris@kanasimi in=r t=300

[Elise]「My name is Elise... The Devil.」

; NEW
@huki id=14 b=9

[Revenant General]「Ngh... Well, I guess it's possible for a new Devil to have appeared... Since I've been in this human form for so long...」

@bs f=iris@bisyo

[Elise]「Although I am the real Devil...\nI won't deny you in the meantime, ex-Devil.」

[Revenant General]「Ugh... Call me Revenant General...\nI'm no longer the Devil.」

; NEW
@huki b=8

[Elise]「Well... All right, then. Farewell, Revenant General.\nYou truly were a worthy opponent.」

[Revenant General]「Hah! I guess it's an honor to be defeated by my successor. But let me give you an advice...」

@bs f=iris@kanasimi op2=hatena

[Elise]「Hm...?」

[Revenant General]「You musn't underestimate God's plan.」
;will and power

@bs f=iris@bisyo

[Elise]「God? After the Hero... That's who I hate the most.」

[Revenant General]「Excellent! Then I shall return to Hell and enjoy the disaster you'll bring to the mortal realm! Hahahaha!!!」

;; Devil General, disappeared
@anime id=14 num=204

; NEW
@opacity id=14 start=255 end=0 step=5 t=500

@invisible id=14 type=on

@bs f=iris@kanasimi

[Elise]「Tsk... Dealing the fatal blow on my own kin didn't make me feel good at all...」

@dir id=16 dir=l wt=1

@move_f f=sakuya@kanasimi in=l t=300

[Sakuya]「... Elise.」

@dir dir=r wt=1

@bs f=iris@bisyo

[Elise]「... Never mind. We've accomplished everything we've set out to do, so let's get out of here.」

@bs f=sakuya@bisyo

[Sakuya]「Yes, I have to contact my companions now.\nLet us meet outside.」

[Elise]「Sure. See you then.」

@move_f f=iris@bisyo out=r t=300
@move_f f=sakuya@bisyo out=l t=300

;; Iris, acting alone. A magic team can be set up outside the castle.
;; If you have a treasure box that you have forgotten to take, you can freely pick it up.
