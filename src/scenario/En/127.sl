
;; ■ Royal Castle
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

@bgm f=Ship3

; NEW
@huki id=6 b=7

;; In the castle of Sonia

@move_f f=iris@bisyo in=r t=300

[Elise]「Sonia, here's the coward who secretly planned to have you murdered.」

@move_f f=sonia@odoroki in=l t=300

[Sonia]「Oh no, brother Eyster...」

[Eyster]「It's true! I want you dead! So stop this pain nowwwaAHHH!!!」

@bs f=sonia@kanasimi

[Sonia]「Ow... Lady Elise, what have you done to brother Eyster?」

@bs f=iris@emi

[Elise]「Oh... That? It's just a little curse I put on him that constantly tortures his mind. Hee hee ♥」
[Elise]「Well, now that he confessed to everything, I'll let you decide his fate.」

[Eyster]「Y―Yes, please, I already told you everything. I swear! So please, release me from this curse!」

@bs f=iris@bisyo

[Elise]「Ah well, I forgot all about it.」

[Eyster]「Q―Quick! Li―Lift the c―curse now! Pl―Please!」

@bs f=iris@reisyo

[Elise]「What I forgot is to mention that I made the curse impossible to remove before tomorrow. Sorry I lied to you. Hehehe ～♪」

; NEW
@huki id=6 b=1

[Eyster]「N―No, it―it cannot be!! Pl―Please...?! I―I―I―I―I―I―Ahhhhh...!!!」

; NEW
@dir id=6 dir=r wt=0
; NEW
@change id=6 f=Damage2 num=4

@bs f=iris@kuyasii

[Elise]「Hah. He passed out already. So boring.」

; NEW
@huki id=2 b=6 wt=0

[Sonia]「Oh, brother Eyster...」

@bs f=iris@bisyo

[Elise]「Well, I lied again...」

[Elise]『\$SKILL[Dispel!]』

; NEW
@anime num=206

; NEW
;@anime num=652
; NEW
;@anime id=6 num=653
; NEW
;@anime id=6 num=43
; NEW
@anime id=6 num=46

@bs f=sonia@kanasimi_hoho

[Sonia]「You are too mean, Lady Elise.」

@bs f=iris@ikari_hoho

; NEW
@huki b=5 wt=0

[Elise]「What?! This is the scumbag that wants you dead! He's not worth pitying for, but instead, you should be laughing at his misery.」

@bs f=sonia@yowaki_hoho

; NEW
@huki id=2 b=8 wt=0

[Sonia]「...」

[Sonia]「All right, I'll call the chancellor...」

@move_f f=iris@ikari_hoho out=r t=300
@move_f f=sonia@yowaki_hoho out=l t=300

;; →● Jump to the second place in the right to succeed the throne
