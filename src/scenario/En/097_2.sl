
;; ■ Grand Kingdom - Road

@route route=l:11 wt=0

@move_f f=sonia@odoroki in=l t=300

;[???]「Nooooo!! Stop! Stop it! Help me! Someone... Please come and help me! Anybody!」
[???]「No!!! Stop it! Help me!\nSomebody help me please...!!!」

; NEW
@move_f f=sonia@odoroki out=l t=300

;; bandit, appeared

; NEW
@huki id=6 b=1

[Bandit A]「Hey, stop resisting already!」

; NEW
@huki id=7 b=3

[Bandit B]「Hehehe, it's useless to scream!」

; NEW
@move_f f=sonia@kanasimi in=l t=300
; REMOVED
;@bs f=sonia@kanasimi

[???]「No! Stop it! Let me go! No!」
;[???]「Ahhh... Stop it! No! Noooo!」
;[???]「Let me go! No! no!」

@move_f f=iris@kanasimi in=r t=300
@bs f=iris@kanasimi op2=kettei

[Elise] (... Looks like this woman is being abducted by these two men. Well, there sure are lowlifes in every corner of this world.)

@bs f=iris@bisyo

[Elise] (Well, this has nothing to do with me.)

[Elise] (I'm already busy searching for that stupid Hero. I must reach the Royal Capital before he vanishes on me again.)

; NEW
@move_f f=iris@bisyo out=r t=300
; NEW
@move_f f=sonia@kanasimi out=l t=300

;; Iris tries to move forward, crossing Sonia
@route route=l:3 wt=0

; REMOVED
;@bs f=sonia@odoroki_hoho_z body_op=z
; NEW
;@move_f f=sonia@bisyo out=r t=150
; NEW
;@move_f f=sonia@odoroki_hoho_z body_op=z in=c t=150
@zoom_f f=sonia@odoroki_hoho_z src=sonia@kanasimi in=l t=300

[???]「!?... Please, please! You! Please help me!」

; REMOVED
;@bs f=sonia@odoroki_hoho
; NEW
;@move_f f=sonia@odoroki_hoho_z body_op=z out=l t=150
; NEW
;@move_f f=sonia@odoroki_hoho in=l t=150
@zoom_f f=sonia@odoroki_hoho src=sonia@odoroki_hoho_z out=l t=300

;; Sonia asks Iris for help.
@dir dir=up
@huki id=5 b=6

; NEW
@move_f f=iris@ikari in=r t=300
; REMOVED
;@bs f=iris@ikari

;[Elise]「... I don't have time for these trifles. Try hard on your own.」
[Elise]「... Sorry lady, but I don't have time to spare on you. You'll have to rely on your own strength.」

;[Sonia]「How could I even...?! I am the princess of Grand Kingdom! Help me and I'll reward you very generously!」
[Sonia]「My own strength?! But that's impossible! I'm a princess! Help me, and I shall repay you very generously!」

@bs f=iris@reisyo

;[Elise]「I have no interest in your identity, human. Hate your own incompetence. Farewell.」
[Elise]「I have no interest in your identity, human... You should blame yourself for being weak.\nGood luck!」

;; Iris tries to leave.
@dir dir=l

@bs f=sonia@kanasimi

;[Sonia]「How... How can you be so cruel?!」
[Sonia]「What?! No way...! How can you be so cruel?!」

;; Bandits block the way
@route id=6 route=d wt=1
@dir id=6 dir=r

;[Bandit A]「Hey hey! Do you think you can escape from us?」
[Bandit A]「Yo, bitch! Do ye really think that we're just gonna let ye be on yer way just like that?」

; REMOVED
;@bs f=iris@ikari_z body_op=z
; NEW
;@move_f f=iris@reisyo out=l t=150
; NEW
;@move_f f=iris@ikari_z body_op=z in=c t=150
@zoom_f f=iris@ikari_z src=iris@reisyo in=r t=300

;[Elise]「…Stupid guys, I make it easy on you. I said I don't have time for trifles, get out of my way. 」
;[Elise]「... Such idiots. I've let you off the hook. I already said that I don't have time for this kind of crap. So back off, miserable humans!」
[Elise]「Are you deaf?! I just said that I don't have time to deal with your petty crimes. So back off, worthless human!」

; REMOVED
;@bs f=iris@ikari
; NEW
;@move_f f=iris@ikari_z body_op=z out=r t=150
; NEW
;@move_f f=iris@ikari in=r t=150
@zoom_f f=iris@ikari src=iris@ikari_z out=r t=300


;[Bandit A]「Haha, we're sorry to let you see this, anyway, we won't let you leave.」
[Bandit A]「Unfortunately for ye, we can't let ye live now that ye saw us with the princess.」

;[Bandit A]「Well, you are also a decent one. We'll treat you well along with the princess!」
[Bandit A]「Hey, I just noticed that ye're easy on the eye. Stay here with the princess and accept our love! Hehe ♥」

@bs f=sonia@kanasimi_hoho

[Sonia]「Ow... Let me go...!」

; NEW
@huki b=7

; REMOVED
;@bs f=iris@kanasimi
; NEW
@bs f=iris@kuyasii

;[Elise]「Tsk... How uppity you jerks are!」
[Elise]「Tsk... You filthy rats...」

; NEW
;@huki id=7 b=1 wt=1

@route id=7 route=d wt=1
@dir id=7 dir=l

[Bandit B]「What the fuck did ye just call us?!\nYe wanna pick a fight with us, eh?!」

[Bandit A]「Heh. Wait and we're gonna torture ye until ye lose yer fuckin' mind!!」

@bs f=iris@ikari

[Elise]「You foolish humans don't even know who's your real enemy.」

@bs f=iris@kougeki2

[Elise]「Tsk... Although It's a hassle...\nbut I'll dispose of this annoying trash.」

@move_f f=iris@kougeki2 out=r t=300
@move_f f=sonia@kanasimi_hoho out=l t=300

;; ○ Event Battle: Bandits
