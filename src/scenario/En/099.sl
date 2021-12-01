; UNUSED: "099_1", "099_2", and "099_3" are used instead.

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
@zoom_f f=sonia@emi src=sonia@emi_z out=l t=300
@bs f=iris@bisyo

[Elise]「I didn't forget your identity, but tell me something that I don't already know, like...」

; NEW
@bs f=sonia@bisyo
[Sonia]「Yes?」

[Elise]「... Is it true that the Hero is currently in the Royal Capital?」

@bs f=sonia@odoroki_hoho

[Sonia]「Oh! Are you an acquaintance of the Hero? No wonder why you are so strong!」

@bs f=sonia@bisyo

[Sonia]「The Hero is in Grand Kingdom at the moment... Well yes, but...」

;; Iris smiles.

@bs f=iris@bisyo

[Elise]「Yes! Finally, some good development! I guess it's worthwhile to help others sometimes.」

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
@zoom_f f=sonia@odoroki_z src=sonia@odoroki in=r t=300

[Sonia]「Huh? ... W―What have you done to me?!」

; REMOVED
;@bs f=sonia@odoroki
; NEW
@zoom_f f=sonia@odoroki src=sonia@odoroki_z out=r t=300
@bs f=iris@reisyo

[Elise]「Ohohoho～♪」
[Elise]『\$SKILL[Slave, spin like a dog!]』
; chasing after her tail

;; Sonia keeps spinning on the spot

[Sonia]「Aaah～?! My body is moving on its own...?! What in the heaven is going on...?! Stop! Stop it pleaaaase～!」

[Elise]「Hehe... Interesting. With this bonding spell, I became the master and you're the slave! ♥」

[Elise]「From now on, you will do as I say. And by the way... You can't disobey my orders...」

[Elise]『\$SKILL[Slave, stop!]』

;; Iris stops

@bs f=sonia@kanasimi

[Sonia]「Aaah... It finally stopped! Ugh... My head's so dizzy...」

;; Sonia, teary eyes

@bs f=sonia@kanasimi_hoho

[Sonia]「Ow... A curse... Why did you do such a cruel thing to me...?!」

@bs f=iris@emi

[Elise]「Because I am the Devil and in order to approach the Hero, I'll make use of your identity.」

@bs f=sonia@odoroki

[Sonia]「How...?! You're lying! The Devil was defeated by the Hero!」

@bs f=iris@reisyo

[Elise]「Ohoho～♪ If you want to hate someone, then direct your hate towards the Hero who didn't finish me off.」

@bs f=sonia@kanasimi

[Sonia]「Ow... Because of the fight over the succession rights to the throne, I was almost abducted by the bandits.」

[Sonia]「And when I thought that I was saved, I came across the Devil itself... Ow, why do I have such rotten luck all the time!」

@bs f=iris@odoroki

[Elise]「... Fighting for succession rights? That's what it was all about? I thought those losers were just dirty perverts.」

[Elise]「Well, nothing I care about anyway. My goal is to reach the capital.」

[Elise]『\$SKILL[Slave, bring me to the capital].』

;; I answer by curses regardless of my will.

[Sonia]「\C[8]Yes, mistress. To the capital.\C[0]」

[Sonia]「Ugh.」

@move_f f=iris@odoroki out=r t=300
@move_f f=sonia@kanasimi out=l t=300

