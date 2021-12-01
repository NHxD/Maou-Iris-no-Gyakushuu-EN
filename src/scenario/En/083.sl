
;; ■ East Island / Castle Gate
;; ● Royal Route
;; ● Options: Strive to attack / Become a prostitute
;; ○ Attack with all your might
;; go to the gate

@bgm f=Theme1

[Samurai]「Who are you?! This is Revenant General's castle. Commoners have no business here!」

@move_f f=iris@reisyo in=r t=300

[Elise]「Commoners? We're here after your master's head. Ohoho ～♪」

; NEW
@huki id=26 id=1

[Samurai]「Impossible!」

; REMOVED
;@bs f=iris@kanasimi
; NEW
@bs f=iris@emi

[Elise]「Let's get started! ♥」

;[Samurai]「Naaani?!」
[Samurai]「What?!」

@move_f f=iris@kanasimi out=r t=300

;; Event battle: Samurai × 2 (bad end or rematch when defeated)
