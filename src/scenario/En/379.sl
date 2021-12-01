
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-events 5 and 6: Prostitutes: Zexy

;; ■ Event occurrence conditions: If Iris has sold herself even once, enter the prostitute's hall
;; ■ If you have sold yourself more than once
;; ■ Event occurrence condition: Find "Prostitute House" on the free map and talk to the receptionist

;; Background ■ House of Prostitute

@bgm f=Scene5
[Butler]「Welcome to The Whorehouse. Every woman is welcome here. What is the reason of your visit, ma'am?」

@move_f f=iris@bisyo in=r t=300

[Elise]「Nice... I want to have fun and earn money. Although, would you accept others beside myself?」

@huki id=7 b=3 wt=1

[Butler]「Of course. Plump or slender. Young or old. All are welcome to work here.」

[Butler]「However, due to high demand, if the lady happens to be an aristocrat or is of a rare race, she will be compensated handsomely.」
@huki b=3 wt=1
@bs f=iris@emi
[Elise]「Ohoho～♪ This place is really good. I like it.」

[Butler]「Thank you for your compliment. So, would you like to recommend someone?」

[Elise]「Well, let's see...」
@move_f f=iris@bisyo out=r t=300
@huki b=8 wt=1
@wait t=600
