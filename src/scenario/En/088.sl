
;; ■ East Island / Castle / Headquarter
;; ● Royal Route
;; ○ victory

@bgm f=battle7

[Revenant General]「Wow, you aren't weak at all.」

;;⑱イリスは鬼滅将軍が人間でない事を見ぬく。

; NEW
@if eval=s(121) ok=jump:*oiran_branch bad=jump:*force_branch

; NEW
*force_branch
[Revenant General]「My subordinates were no match for you, girls... Guess I'll have to finish you myself.」
@jump target=*after_branch

; NEW
*oiran_branch
[Revenant General]「My bodyguard couldn't even lay a finger on you... Guess I'll have to deal with you myself.」
@jump target=*after_branch

; NEW
*after_branch

;;鬼滅、妖気を解放する。
@anime id=14 num=209

@move_f f=sakuya@odoroki in=l t=300

[Sakuya]「... Ugh?! What a horrible murderous aura!」

; REMOVED
;@move_f f=iris@kuyasii in=r t=300
; NEW
@move_f f=iris@kougeki1 in=r t=300

; NEW
@huki b=1

[Elise]「General...! You...! You are NOT human!」

; REMOVED
;@bs f=sakuya@odoroki_z body_op=z
; NEW
@zoom_f f=sakuya@odoroki_z src=sakuya@odoroki in=l t=300

; NEW
@huki id=16 b=2

[Sakuya]「What...?!」

; REMOVED
;@bs f=sakuya@odoroki
; NEW
@zoom_f f=sakuya@odoroki src=sakuya@odoroki_z out=l t=300

; NEW
@huki id=14 b=3

; NEW
@bs f=iris@kougeki1

[Revenant General]「Hehehe... You too have a good eye... I am Revenant General!」

[Revenant General]「I once was the Devil who was vanquished by God.」

[Revenant General]「I've been exiled to this place ever since...\nin this human body! Ahahah!」

; REMOVED
;@bs f=iris@odoroki_z body_op=z
; NEW
@zoom_f f=iris@odoroki_z src=iris@kougeki1 in=r t=300

; NEW
@huki b=2

[Elise]「... You were the Devil? And just like me, you've lost all your powers too...?!」

; REMOVED
;@bs f=iris@reisyo
; NEW
@zoom_f f=iris@reisyo src=iris@odoroki_z out=r t=300

[Elise]「Then I must ask you something... Please tell me―」

[Revenant General]「―I'm the supreme ruler of this country...\nI answer to no one! Ahahah!」

@bs f=iris@emi

[Elise]「Hmph! Ex-Devil, what an arrogant fool you are... I'll show you the true power of the Devil!」

@move_f f=iris@emi out=r t=300
@move_f f=sakuya@odoroki out=l t=300

;; Combat: Demon Shogun
