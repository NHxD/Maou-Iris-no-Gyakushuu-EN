
;; ■ East Island / World Map (East Coast)
;; ● Royal Route
;; ⑬

@bgm f=Theme1

@move_f f=iris@bisyo in=r t=300

[Elise]「We finally reached our destination... The continent of Royal Capital.」

; REMOVED
;@bs f=iris@reisyo
; NEW
@bs f=iris@emi

[Elise]「Ohohoho～ Wait for me, stupid Chiot! The shame you gave me will be returned a million times!」

@dir dir=r wt=1

@bs f=iris@bisyo

[Elise]「Thanks, Deca. We'll attract too much attention if we stay together, so let's say goodbye here.」

@bs f=iris@emi

[Elise]「After I completely recover, I'll call you again when I'll need you. You can leave now.」

[Deca]「KUUUUN」

;; ※ Daika, leave
@dir dir=u
@route id=34 route=up:10

@bs f=iris@bisyo

[Elise]「... All right, I'd better set out now.」

@move_f f=iris@bisyo out=r t=300

;; * Free movement
