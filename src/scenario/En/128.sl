
;; ■ Royal Castle
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

@bgm f=Ship3

;; screen change, princess room

@move_f f=iris@bisyo in=r t=300

[Elise]「Well as I suspected, this prince is the culprit.」

@move_f f=sonia@odoroki in=l t=300

[Sonia]「Oh no... It cannot be...」

@bs f=iris@emi

[Elise]「Well, don't believe me? I've got proof. I used magic to record what he said.」

@bs f=sonia@odoroki op2=kettei

[Sonia]「Oh?」

[Eyster]『Hahaha! If the princess dies, the Hero won't be able to become the next King. That way, the throne is assured to be mine!』

@bs f=sonia@kanasimi

[Sonia]「Oh no... Brother Eyster...」

; REMOVED
;@bs f=iris@bisyo
; NEW
@bs f=iris@kuyasii_hoho
[Elise](Of course, I deleted my own voice from the recording... The evidence might be tampered but nobody should notice it...)

@bs f=sonia@tameiki_hoho

[Sonia]「I'm so sad, this leaves me with no choice but to arrest my own brother...」

@bs f=iris@kuyasii

[Elise]「Indeed. And be quick about it. Take this evidence to——who's the old guy already? Uh...? Ah... The chancellor?」

@bs f=sonia@kanasimi_hoho

[Sonia]「Yes, yes, right away.」

@move_f f=iris@kuyasii out=r t=300
@move_f f=sonia@kanasimi_hoho out=l t=300

;; ● 2nd place in succession to the throne
