
;; ■ Castle Underground Temple
;; ● Royal Route

@bgm f=battle5

[High priest]「Argh?! This overwhelming power. I might be defeated... but the coming of God is predestined... Hahaha Ha―」

;; Great Priest, fall

; REMOVED
;@anime id=15 num=207 wt=1
; NEW
@anime id=15 num=97
; NEW
@opacity id=15 start=255 end=0 step=5 t=500

@invisible id=15 type=on

@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Well, finally... I wondered when he would shut up. Still, he was much tougher than what I anticipated.」

; NEW
@move_f f=iris@kuyasii_hoho out=r t=300

@fb dir=for num=7
; REMOVED
;@bs f=iris@bisyo
; NEW
@move_f f=iris@bisyo in=r t=300

[Elise]「Well, I'd like to know which god that priest was trying to summon...」

[Elise]「But this pure energy... I could use it. The mana generated through the summoning ritual is boiling and aggregating in a single place...」

@huki b=3
@bs f=iris@emi op2=denkyu

[Elise]「All right, I'll pour my own mana into this vortex of energy to forge myself a weapon infused with dark magic.」

; REMOVED
;@bs f=iris@emi_z body_op=z
; NEW
@zoom_f f=iris@emi_z src=iris@emi in=r t=300

[Elise]「Then... I might get a power that is even comparable to my former self.」

; REMOVED
;@bs f=iris@emi
; NEW
@zoom_f f=iris@emi src=iris@emi_z out=r t=300

; NEW
;@wait t=60
;@move_f f=iris@emi out=r t=300
;Obtained \$WEAPON[23].
; NEW

;; Iris creates a magic sword

@anime num=206 wt=1

; REMOVED
@bs f=iris@emi_hoho
; NEW
;@move_f f=iris@emi_hoho in=r t=300

[Elise]「Wow! I can reap through time and space with this magic sword just by waving it!」
