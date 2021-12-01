
;; ■ East Island / Pleasure Quarter / Reception Area
;; ● Royal Route
;; ● Options: Strive to attack / Become a prostitute
;; Become a prostitute
;; ○ Event occurrence condition: Enter the play area and talk to the receptionist
;; → select "Yes"

; NEW
;@through id=9 type=on
@change id=9 f=sakuya_nowBody num=0
@route id=9 route=right wt=1
@dir id=9 dir=up wt=1
; NEW

@bgm f=Town1

[Receptionist]「Welcome. We also accept female guests.」

@move_f f=sakuya@sumasi in=l t=300

[Sakuya]「We are not guests... I believe you are recruiting. Yes?」

; NEW
@move_f f=sakuya@sumasi out=l t=300

; NEW
@dir dir=r wt=0
@map_scroll dir=down dis=1 spd=3
@huki b=2
; NEW

@move_f f=iris@kanasimi in=r t=300

[Elise]「By the way, do you have any experience of being a prostitute before?」

; REMOVED
;@bs f=sakuya@kanasimi
; NEW
@move_f f=sakuya@kanasimi in=l t=300

; NEW
@dir id=9 dir=l

[Sakuya]「Of course...not.\nI only know about Way of Ninja.」

@bs f=sakuya@odoroki

; NEW
@huki b=6

[Elise]「That's...completely useless in our situation. Aaah! What should we do...」

@bs f=sakuya@bisyo

; NEW
@huki id=9 b=3

[Sakuya]「It should not be problem. I learned about theory of sex. But... I have not practiced yet.」

@bs f=iris@kanasimi op2=ase

[Elise]「Only the theory? I already feel upset about our future...」

; NEW
@dir dir=u wt=0
@dir id=9 dir=u wt=0
@map_scroll dir=up dis=1 spd=3
; NEW

[Receptionist]「So let our master decide if you can be hired... Please follow me. This way.」

@move_f f=iris@kanasimi out=r t=300
@move_f f=sakuya@bisyo out=l t=300

; NEW
;@change id=9 f=null num=0
;@invisible id=9 type=on
; NEW
