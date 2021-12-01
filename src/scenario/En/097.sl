; UNUSED: "097_1", and "097_2" are used instead.

;; ■ Grand Kingdom - Harbor
;; reach the west continent

@bgm f=dungeon5

@move_f f=iris@kanasimi in=r t=300

[Elise]「Yes! I finally reached my destination... This time for sure!」

@bs f=iris@bisyo

[Elise]「All right, Royal Capital, here I come! Uh―?」

@bgm f=Scene1

;; Move map, Sonia is attacked by bandits
@dot_move map=61 fade=0 x=9 y=19
@route route=r:7 wt=0

@move_f f=sonia@odoroki in=l t=300

[???]「No!!! Stop it! Help me!\nSomebody help me please...!!!」

;; bandit, appeared

[Bandit A]「Hey, stop resisting already!」

[Bandit B]「Hehehe, it's useless to scream!」

@bs f=sonia@kanasimi

[???]「No! Stop it! Let me go! No!」

@bs f=iris@kanasimi op2=kettei

[Elise] (... Looks like this woman is being abducted by these two men. Well, there sure are lowlifes in every corner of this world.)

@bs f=iris@bisyo

[Elise] (Anyway, it's none of my business. and I'm already busy searching for that stupid Hero.)

[Elise] (I should move even faster and reach the Royal Capital before the Hero vanishes on me again.)

;; Iris tries to move forward, crossing Sonia
@route route=r:3 wt=0

; REMOVED
;@bs f=sonia@odoroki_hoho_z body_op=z
; NEW
@zoom_f f=sonia@odoroki_hoho_z src=sonia@kanasimi in=l t=300

[???]「?!... Please! You! Please help me!」

; REMOVED
;@bs f=sonia@odoroki_hoho
; NEW
@zoom_f f=sonia@odoroki_hoho src=sonia@odoroki_hoho_z out=l t=300

;; Sonia asks Iris for help.
@dir dir=up
@huki id=5 b=6

@bs f=iris@ikari

[Elise]「... Sorry lady, but I don't have time to spare on you. You'll have to rely on your own strength.」

[Sonia]「My own strength?! But that's impossible! I'm a princess! Help me, and I shall repay you very generously!」

@bs f=iris@reisyo

[Elise]「I have no interest in your identity, human... You should blame yourself for being weak. Good luck!」

;; Iris tries to leave.
@dir dir=r

@bs f=sonia@kanasimi

[Sonia]「What?! No way...! How can you be so cruel?!」

;; Block the bandits from going

; NEW
@huki id=7 b=1

@route id=7 route=d wt=1
@dir id=7 dir=l

[Bandit A]「Yo bitch. Do ye really think that we're just gonna let ye be on yer way just like that eh?」

; REMOVED
;@bs f=iris@ikari_z body_op=z
; NEW
@zoom_f f=iris@ikari_z src=iris@reisyo in=r t=300

[Elise]「... Such idiots. I've let you off the hook. I already said that I don't have time for this kind of crap. So back off, miserable humans!」

; REMOVED
;@bs f=iris@ikari
; NEW
@zoom_f f=iris@ikari src=iris@ikari_z out=r t=300

[Bandit A]「Unfortunately for you, we can't let you live now that you saw us with the princess.」

; NEW
@huki id=7 b=4

[Bandit A]「Hey... I just noticed that ye're easy on the eye. Stay here with the princess and accept our love! Hehe ♥」

@bs f=sonia@kanasimi_hoho

[Sonia]「Ow... Let me go...!」

; NEW
@huki b=7

; REMOVED
;@bs f=iris@kanasimi
; NEW
@bs f=iris@kuyasii

[Elise]「Tsk... You filthy rats...」

; NEW
;@huki id=6 b=5

@route id=6 route=d wt=1
@dir id=6 dir=r

[Bandit B]「What the fuck did ye just call us?! Ye wanna pick a fight with us eh?!」

[Bandit A]「Heh. Wait and we're gonna torture ye until ye lose yer fuckin' mind!!」

@bs f=iris@ikari

[Elise]「You foolish humans don't even know who's your real enemy.」

@bs f=iris@kougeki2

[Elise]「Tsk... Although It's really a hassle... but I'll clean up this annoying trash.」

@move_f f=iris@kougeki2 out=r t=300
@move_f f=sonia@kanasimi_hoho out=l t=300

;; ○ Event Battle: Bandits
