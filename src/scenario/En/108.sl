
;; ■ Grand Kingdom - Royal Castle
;; ● Royal Route
;; Audience room

@bgm f=Town1

; NEW
@huki id=13 b=3

[Chancellor]「Ohoh! Princess! It's so good to see you safe and sound!」

@move_f f=sonia@bisyo in=l t=300

[Sonia]「Grandpa!」

[Chancellor]「I was so worried about you. The King would never forgive me if something bad had happened to you. But...why did you go outside all on your own?」

@bs f=sonia@kanasimi

[Sonia]「I'm so sorry, grandpa. A soldier told me that Lord Chiot had something important to tell me in private...but that was just a lie.」

; NEW
@huki id=13 b=1

[Chancellor]「Treason! The soldier must be captured immediately! Do you remember the traitor's face?」

@bs f=sonia@kanasimi_hoho

[Sonia]「Ah... Well, not really... The soldier was actually one of the bandits in disguise... And they were all killed by Lady Elise.」

; NEW
@huki id=13 b=7

[Chancellor]「Hah. Well now, I wonder if they were perhaps hired by someone... But who would want to harm the princess...?!」

[Chancellor]「Anyway, Miss Elise... On behalf of everyone in Grand Kingdom, I want to thank you for saving the princess.」

@move_f f=iris@bisyo in=r t=300

[Elise]「Don't mention it... After all, Sonia hired me as her bodyguard.」

@bs f=sonia@odoroki

; NEW
@huki id=2 b=2

[Sonia]「... Uh?!」

@bs f=iris@emi

[Elise]『\$SKILL[Princess Sonia, is this not true...?]』

@bs f=sonia@tameiki

; NEW
@huki id=2 b=6

[Sonia]「... Ah. Y―Yes... Yes, that's true.」

[Chancellor]「Oh... The princess has put so much trust in you... I'll inform the guards about your important role.」

@bs f=iris@reisyo_hoho

[Elise] (Those humans are so easy to trick.)

; REMOVED
;@bs f=sonia@kanasimi op2=ase
; NEW
@bs f=sonia@kanasimi
@bs f=iris@reisyo

; NEW
@huki id=2 b=6

[Sonia](Waah... Father was very strict at ordinary times, but he could also be so very kind... Unfortunately, he was kind only with me...)

[Sonia](I didn't expect that one day, this would make people want to murder me...)

; NEW
@move_f f=sonia@kanasimi out=l t=300
; NEW
@move_f f=iris@bisyo out=r t=300

;; Third Prince and Second Prince appear
; REMOVED
;@route id=6 route=u:4 wt=0
; REMOVED
;@route id=9 route=u:4 wt=1

;; BUGFIX: the brothers couldn't move further up.
@through id=6 type=on
@through id=9 type=on

; force him in the middle, otherwise, sonia's stand picture will completely obscure him.
@route id=6 route=r:1
@route id=6 route=u:5 spd=3 wt=0
@route id=9 route=u:5 spd=3 wt=1

; NEW
@huki id=6 b=1

[Eyster]「... Sonia, are you all right?」

; MOVED HERE
;; a little uneasy
@dir id=2 dir=d wt=1
@dir dir=d wt=1

; NEW
@huki id=9 b=1

[Lannan]「Sonia, I'm so relieved to know that you're safe. I was so worried about you.」

; REMOVED
;@bs f=sonia@yowaki_hoho
; NEW
@move_f f=sonia@yowaki_hoho in=l t=300

[Sonia]「Brother Lannan! ... I'm so sorry to have made you worried.」

; MOVED ABOVE
;; a little uneasy
;@dir id=2 dir=d wt=1
;@dir dir=d wt=1

@bs f=sonia@kanasimi_hoho

[Sonia]「And brother Eyster, I'm sorry.」

; NEW
@huki id=6 b=5

[Eyster]「Hmph! Look at you, going out carelessly, only to get assaulted by some bandits. You should be a little more aware of your royal status.」

;; Look at Iris and click his tongue

; NEW
@huki id=6 b=5

[Eyster]「And YOU, over there... Mind your own business!」

;; The esteemed, frustrated and distracting est

; NEW
@move_f f=iris@kougeki1 in=r t=300

; NEW
@huki b=2

;; NEW
[Elise]「Eh?」

; NEW
@bs f=iris@bisyo

[Elise] (This dim-witted prince sure seems to overreact easily...)

[Lannan]「Please pay no attention to his words, Sonia. Brother Eyster was also gravely concerned about your safety, believe me.」

[Sonia]「Were you really, brother Eyster―」

[Lannan]「―But you must be tired... Please go to your room and rest. I'll handle this incident with the chancellor.」

[Chancellor]「Oh―oh...! That's right. The princess should rest. Leave everything to us.」

@bs f=sonia@yowaki_hoho

[Sonia]「Hah... Thank you. I'll be going now.」

[Chancellor]「Miss Elise, please take care of the princess.」

@bs f=iris@emi

[Elise]「Yes... Of course.」

@bs f=iris@reisyo_hoho

; NEW
@huki b=3

[Elise] (After all, she's my important chess piece, so of course I have to protect her... Hehehe～)

@bs f=sonia@kanasimi_hoho

[Sonia] (*sigh* ... Is it really a good time to rest...?)

@move_f f=iris@reisyo_hoho out=r t=300
@move_f f=sonia@kanasimi_hoho out=l t=300

@fade type=out t=1000 wt=1
@wait t=1000
;;@fade type=in t=1000 wt=1

;; After dark, Princess's room
