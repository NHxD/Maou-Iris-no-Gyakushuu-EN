; UNUSED: "147_1" and "147_2" are used instead.

;; ■ Castle Underground Temple
;; ● Royal Route

@bgm f=battle5

[High priest]「Argh?! This overwhelming power. I might be defeated... but the coming of God is predestined... Hahaha Ha―」

;; Great Priest, fall

@anime id=15 num=207 wt=1
@invisible id=15 type=on

@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Well, finally... I wondered when he would shut up. Still, he was much tougher than what I anticipated.」

@fb dir=for num=7
@bs f=iris@bisyo

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

@dir dir=d
@huki b=3
@bs f=iris@reisyo

[Elise]「Ohohoho～♪ The high priest was a pathetic fool who wanted to summon God but instead, ended up giving the Devil this wonderful power. ～♪」

@bs f=iris@emi

[Elise]「Now, I have a power comparable to my former self. I can finally rule the world and defeat the Hero Chiot!」

@bs f=iris@bisyo

[Elise]「But, which one should I do first? Should I...」
[Elise]「Burn this world down first then defeat the desperate Hero...or defeat the Hero first then conquer the world unopposed.」

@move_f f=iris@bisyo out=r t=300

;; ○ Options: Dominate the world / Strike back to the hero
