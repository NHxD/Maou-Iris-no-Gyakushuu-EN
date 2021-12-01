
;; ■ Devil Castle (Prologue)
;; ● Event battle: Devil Iblis (equivalent to Lv80)
;; * Hero Lv65 equivalent, other Lv60 equivalent
;; After fighting for about 3 turns on the Hero side, activate the Super Special Move and win the Battle.

; NEW: restore stepping animation for Iblis.
@step_anime id=17 type=on

@bgm f=Ship3

@flash t=1000
@se f=Thunder12

@qk

[Iblis]「Ohohoho～♪ Is this really the best you can do?」
[Iblis]「Such a fool... Did you really think that a mere human could take on the Devil?!」

@move_f f=sion@ikari1 in=l t=300

[Chiot]「This is the end, Devil Iblis!」

[Chiot]「Sacred sword \$WEAPON[Cross Blade], grant me your holy power to banish the evil monster standing before me!」


;; Effect ■ Screen effect

@move_f f=sion@ikari1 out=l t=100

@se f=Saint9
@flash t=100


[Chiot]『\$SKILL[Shining Blade!!!]』


;;@move_f f=iris@odoroki body=normal_yabure out=r t=100

;; * With a mighty light slash, the devil is knocked back and knocked down.
;; * It disappears outside the screen.
