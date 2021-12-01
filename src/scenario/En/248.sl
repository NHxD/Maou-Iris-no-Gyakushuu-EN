
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Merchant: 1st stage

;; Background ■ Prostitute room

@bgm f=dungeon3
@huki id=1 b=4 wt=1


[Merchant]「Hah... I fucked so many women here, but never such a pretty foreign girl like you! Hah hah hah!」

@huki b=7 wt=1
@move_f f=iris@kanasimi body=oiran in=r t=300
[Elise]「Tsk... I have to have sex with a rude man like you? This is a fate unbecoming of a Devil like me, but of a whore.」

[Merchant]「Heh... Make me happy, beautiful foreign girl♪」

[Elise] (He didn't even hear a single word I just said. Dammit.)

@move_f f=iris@kanasimi out=r t=300

;; Effect ■ Darkness
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1

