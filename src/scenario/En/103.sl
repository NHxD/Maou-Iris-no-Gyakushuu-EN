
;; ■ Grand Kingdom - Royal Capital
;; ● Royal Route
;; ● Branch: Victory

;; Aiming for the royal capital
;;23: Demon King who reached the royal capital

@bgm f=dungeon10

@move_f f=iris@bisyo in=r t=300

[Elise]「... I'm really in the capital... Finally.」

@bs f=iris@kuyasii

[Elise] (I really wanted to find the Hero and defeat him sooner...)
[Elise] (but I had to go through some ugly orcs, perverted bandits, scummy lowlifes, and I even had to fight my own pet Deca...)

@bs f=iris@kuyasii op2=ase

[Elise] (I then arrived on an island in the East where I had to fight with a Devil of the past... What a long detour!)

; REMOVED
;@bs f=iris@emi_z body_op=z
; NEW
@zoom_f f=iris@emi_z src=iris@kuyasii in=r t=300

[Elise]「Ohoho～♪ However, this journey is finally drawing to a close.」
[Elise]「This is the last step before I meet the Hero and seize the chance to defeat him!」

; NEW
;@move_f f=iris@emi_z body_op=z out=r t=150
; NEW
@zoom_f f=iris@emi src=iris@emi_z out=r t=300

;;@bs f=iris@emi
;; Iris starts to walk with higher tension than usual.

@move_f f=sonia@yowaki_hoho in=l t=300

; NEW
@huki b=3

[Sonia]「Hah! Well...about that... Miss... Elise?」

@bs f=iris@bisyo

[Elise]『\$SKILL[Slave, call me Lady Elise.]』

[Elise]「What is it?」

@bgm f=Scene2

@bs f=sonia@yowaki

[Sonia]「Well, Lady... Elise. It seems that the Hero...has yet to return to the capital. Ah ah...」

@bs f=iris@odoroki

[Elise]「... Uh?」

[Sonia]「Well... The kingdom was notified of residents in Harvest Town that were terrified of bandits...」
[Sonia]「Subsequently, the Hero left with a party to investigate and resolve the matter.」

; REMOVED
;@bs f=iris@ikari_z body_op=z
; NEW
@zoom_f f=iris@ikari_z src=iris@odoroki in=r t=300

[Elise]「... Why didn't you tell me all this before?!」

; REMOVED
;@bs f=iris@ikari
; NEW
@zoom_f f=iris@ikari src=iris@ikari_z out=r t=300

@bs f=sonia@odoroki_hoho

[Sonia]「Oh?! I'm sorry...」

@bs f=iris@kuyasii

[Elise]「Tsk... Never mind. Well, when is he coming back?」

@bs f=sonia@kanasimi

[Sonia]「Well, he should have come back by now! But...but the Hero never leaves people in trouble, so he'll stay there as long as he's needed...」

@bs f=iris@ikari

[Elise]「Just like his good looks, he's a goddamned good guy... Absolutely disgusting.」

@bs f=sonia@kuyasii

[Sonia]「Waah～ I... I think he is a very kind person...」

;; Iris staring at Sonia

; REMOVED
;@bs f=iris@ikari_z body_op=z
; NEW
@zoom_f f=iris@ikari_z src=iris@ikari in=r t=300

[Elise]「What did you just say...?」

; REMOVED
;@bs f=iris@ikari
; NEW
@zoom_f f=iris@ikari src=iris@ikari_z out=r t=300

@bs f=sonia@odoroki_hoho

[Sonia]「No, no! Nothing at all...」

@bgm f=dungeon10

@bs f=iris@kuyasii

[Elise]「Tsk... I can't help but feel frustrated. Anyway... We'll take this country before the Hero returns.」

@bs f=sonia@odoroki

[Sonia]「... Waah～?」

@bs f=iris@reisyo

[Elise]「Ohoho～♪ The fight for the succession rights sounds interesting ♪ Do your best as the next queen!」

[Sonia]「Uh? Uh?」

@bs f=iris@emi

[Elise]「You become queen while I secretly control your every actions... Don't you think it would suit a Devil like me?」

@bs f=sonia@odoroki op2=kyohi

[Sonia]「Waah～?! How, how come... No! This can't be! And the residents...what would they think?!」

@bs f=iris@reisyo

[Elise]「Ohoho～♪ Well, you have no choice but to obey me, remember?」

[Elise]『\$SKILL[Slave, where is the castle?]』

@bs f=sonia@kuyasii

[Sonia]「Waah～! It... It... I... must...not...say it―」

@move_f f=iris@reisyo out=r t=300
@move_f f=sonia@kuyasii out=l t=300
