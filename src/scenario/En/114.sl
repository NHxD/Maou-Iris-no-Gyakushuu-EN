
;; ■ Grand Kingdom - Eyster's Mansion
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

@bgm f=dungeon3

[Eyster]「So you want to work as a maid in my mansion?」

@move_f f=iris@bisyo in=r t=300

[Elise]「Uh... Yes.」

; NEW
@huki id=10 b=2

[Eyster]「Hmm... I feel like I've seen you before?」

[Elise]「Nope! It's the first time we meet.」

; NEW
@huki id=10 b=8 wt=1

[Eyster]「Hah... Well, how could I forget such a gorgeous girl like you, right? ♥\nSo of course, I'll hire you.」

@bs f=iris@emi_hoho

[Elise]「Thank you very much.」

; NEW
@huki id=9 b=1

[Maid]「B―But, Master... She has never done any housework or laundry before!」

[Eyster]「Never mind that, you can teach her, right?\nIt would be such a waste to let go of such a pretty girl. ♥」

@bs f=iris@kuyasii_hoho

[Elise] (He's so obvious... He keeps staring at my breasts and thighs... Well, I have to put up with his rude behaviour for now.)

[Eyster]「Ahah! It so happens that there's one maid outfit ready for you. Maid, make her wear it right away.」

[Maid]「I―I understand.」

;; Maid, take the costume and give it to Iris

; NEW
@dir id=9 dir=l

[Maid]「Please put this on.」

; NEW
@dir dir=r
; NEW
@wait t=500
; NEW
@dir dir=u wt=0
; NEW
@dir id=9 dir=u

@bs f=iris@bisyo

[Elise]「Sure... But where can I change my clothes?」

; NEW
@huki id=10 b=3

[Eyster]「Hehe... Right here, of course! ～♪」

@bs f=iris@syuuti

[Elise]「What...」

; NEW
@dir id=9 dir=l

[Maid]「If you want to work here, you need to obey whatever the master commands.」

; NEW
@dir id=9 dir=u

[Eyster]「And for the salary, I will pay you ten times more than any other place.」

@bs f=iris@kuyasii_hoho

[Elise] (Tsk... Patience, patience...)

@bs f=iris@syuuti_hoho

[Elise]「I understand.」

@move_f f=iris@syuuti_hoho out=r t=300

;; Take off Iris clothes and put on underwear.
;; Move the Iris standing picture up and down
