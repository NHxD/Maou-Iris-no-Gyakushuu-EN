
;; ■ Grand Kingdom - Road
;; ● Royal Route
;; ● Branch: Victory
;; A few seconds later, the bandits disappeared, and Iris and Sonia are facing each other.

@bgm f=Town1

@move_f f=sonia@bisyo in=l t=300

[Sonia]「Well... In the end, you were willing to help me, so thank you very much!」

; REMOVED
;@move_f f=iris@reisyo in=r t=300
; NEW
@move_f f=iris@kuyasii in=r t=300

[Elise]「... Absolutely not. I didn't kill them to save you― Tsk... Forget it.」

; REMOVED
;@bs f=sonia@emi_z body_op=z
; NEW
@zoom_f f=sonia@emi_z src=sonia@bisyo in=l t=300

[Sonia]「Please allow me to me reintroduce myself. I am Sonia, Third Princess of Grand Kingdom.」

; REMOVED
;@bs f=sonia@emi
; NEW
@zoom_f f=sonia@bisyo src=sonia@emi_z out=l t=300

@bs f=iris@bisyo

[Elise]「I didn't forget your identity, but tell me something that I don't already know...」

[Elise]「... Is it true that the Hero is currently in the Royal Capital?」

@bs f=sonia@odoroki_hoho

[Sonia]「Oh! Are you an acquaintance of the Hero? No wonder why you are so strong!」

@bs f=sonia@bisyo

[Sonia]「The Hero is usually in Grand Kingdom... Well yes, but―」

;; Iris smiles.

@bs f=iris@bisyo

[Elise]「―Yes! Finally, some good development! I guess it's worthwhile to help others sometimes.」

;; Sonia is a little frightened by the atmosphere of Iris.

@bs f=sonia@yowaki

[Sonia]「Hah... Do you wish to know anything else?」

; REMOVED
;@bs f=iris@bisyo_z body_op=z
; NEW
@zoom_f f=iris@bisyo_z src=iris@bisyo in=r t=300

[Elise]「Hehe... Well, unfortunately for you, it seems that you attract all the bad luck in the world.」

; REMOVED
;@bs f=iris@bisyo
; NEW
@zoom_f f=iris@bisyo src=iris@bisyo_z out=r t=300

@bs f=sonia@odoroki

[Sonia]「Huh... What do you mean...?」

;; A magic circle at the feet of Iris
@anime num=206

; REMOVED
;@bs f=iris@kougeki1_z body_op=z
; NEW
@zoom_f f=iris@kougeki1_z src=iris@bisyo in=r t=300

[Elise]「Princess Sonia. I, Devil Iblis, command you to become my slave!」

[Elise]『\$SKILL[Bond Curse!]』

; REMOVED
;@bs f=iris@kougeki1
; NEW
@zoom_f f=iris@kougeki1 src=iris@kougeki1_z out=r t=300

;; Curse magic activation
@anime id=5 num=210

; REMOVED
;@bs f=sonia@odoroki_z body_op=z
; NEW
@zoom_f f=sonia@odoroki_z src=sonia@odoroki in=l t=300

[Sonia]「Huh? ... W―What have you done to me?!」

; REMOVED
;@bs f=sonia@odoroki
; NEW
@zoom_f f=sonia@odoroki src=sonia@odoroki_z out=l t=300

; REMOVED
;@bs f=iris@reisyo
; NEW
@bs f=iris@emi

[Elise](Yes! It seems that I recovered enough mana to cast advanced magic spells like this.)

[Elise]「Ohohoho～♪」

; NEW
@bs f=iris@reisyo

[Elise]『\$SKILL[Slave, spin like a dog!]』
;chasing after her tail
