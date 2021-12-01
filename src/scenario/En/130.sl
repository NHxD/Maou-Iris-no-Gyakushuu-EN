
;; ■ Royal Castle
;; ● Royal Route
;; ● 2nd place in succession to the throne

@bgm f=bgm03

@move_f f=iris@bisyo in=r t=300

[Elise]「... Well, just as what we planned, we knocked over one of your competitor to the throne, but is it really over already?」

@move_f f=sonia@odoroki in=l t=300

[Sonia]「Ah? Well...」

[Elise]「For instance... Who's in second place for the succession rights?」

@bs f=sonia@yowaki

[Sonia]「Well, that'd be...brother Lannan.」

@bs f=iris@kuyasii

[Elise]「Lannan? Ahah! That chicken prince? But...well, he could be guilty since he's still in second place, after all...」

@bs f=sonia@odoroki_hoho op2=kettei

[Sonia]「No way! He's most certainly not the kind of person who would do such cruel things to his own family!」

;; Maid appeared

[Maid]「Excuse me, Your Majesty. His Majesty Lannan has an urgent matter to discuss with you. He's waiting for you in his room.」

@bs f=sonia@odoroki

[Sonia]「Oh, brother Lannan? Please tell him I'll meet him right away.」

@bs f=sonia@yowaki

[Maid]「Of course, Your Majesty.」

;; Maid, leave

@bs f=iris@reisyo

[Elise]「Hehe... Speak of the devil.」
; and he will appear

@bs f=sonia@kuyasii_hoho

[Sonia]「Well, since you suspect him... Please allow me to check it out myself!」

@bs f=iris@kanasimi

[Elise]「... Check it out?」

@bs f=sonia@kuyasii

[Sonia]「By asking him directly! My brother Lannan would never lie to me!」

@bs f=iris@kanasimi op2=denkyu

[Elise] (Sonia is so naive, it hurts. Oh well, this can be good... I can use her as bait. Hehe～♪)

@bs f=iris@bisyo

[Elise]「All right, it all depends on you!」

@bs f=sonia@bisyo

[Sonia]「Y―Yes! Yes! I will prove to you that my brother is innocent!」

@bs f=iris@kanasimi

[Elise] (... I wonder why she's so fond of this brother though. Well, whatever... This doesn't concern me.)

@move_f f=sonia@bisyo out=l t=300

;; Sonia leaves the room
; REMOVED
;@route id=2 route=l:4,u:7 wt=0
; NEW
@route id=2 route=l:4,u:8 wt=0
; NEW - no can do because we're not waiting for the (very) long walking animation above.
;@invisible id=2 type=on

@bs f=iris@reisyo

[Elise]「... And here she goes. Now, I'll just observe my prey falling into my trap. Hehe～♪」

@move_f f=iris@reisyo out=r t=300

;; Iris, start moving
