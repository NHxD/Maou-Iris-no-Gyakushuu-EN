
;; ● True Demon King Route (Fighting back to the hero)

@bgm f=battle6

@huki id=10 b=1
@huki id=1 b=1
@anime id=34 num=674

@flash t=1000
@anime id=29 num=671 wt=0
@wait t=100
@anime id=33 num=671 wt=0
@wait t=100
@anime id=22 num=671 wt=0
@wait t=100
@anime id=21 num=671 wt=0
@wait t=100
@anime id=16 num=671 wt=0
@wait t=150
@anime id=13 num=671 wt=0
@wait t=500

@fb id=10 dir=back

@move_f f=iris@odoroki in=r t=300

[Elise]「Agh!」

@move_f f=iris@odoroki out=r t=300

@flash t=1000
@anime id=20 num=671 wt=0
@wait t=100
@anime id=16 num=671 wt=0
@wait t=100
@anime id=23 num=671 wt=0
@wait t=100
@anime id=17 num=671 wt=0
@wait t=100
@anime id=31 num=671 wt=0
@wait t=100
@anime id=15 num=671 wt=0
@wait t=500

@fb id=1 dir=back

@move_f f=sion@kanasimi in=l t=300

[Chiot]「Woah...! Ouch!!!」

@move_f f=sion@kanasimi out=l t=300

@se f=Blow6
@change id=1 f=sion num=1

;; Iris is instantly defeated before the overwhelming power
@move_speed spd=5
@route route=down:5

@move_f f=iris@ikari_hoho in=r t=300

[Elise] (This is...a really strong opponent. Even if I were at full strength, I wouldn't stand a chance of defeating him...)

@bs f=iris@kuyasii_hoho

[Elise]「Tsk... Chiot. Sonia. It's time to bolt.」

@move_f f=iris@kuyasii_hoho out=r t=300

@anime id=10 num=652

@move_f f=sion@tuujou in=l t=300

[Chiot]「Uh? No, I still can―」

@move_f f=sion@tuujou out=l t=300

@anime id=1 num=653 wt=0
@anime id=10 num=653 wt=0
@anime id=35 num=653 wt=0
@anime id=12 num=653

@move_f f=sonia@odoroki in=l t=300

[Sonia]「―Lady Elise?!」

@move_f f=iris@ikari in=r t=300

[Elise]「―Hmph! Can you two shut up for a hot second?!」

@move_f f=iris@ikari out=r t=300
@move_f f=sonia@odoroki out=l t=300

@anime id=1 num=304 wt=0
@anime id=10 num=304 wt=0
@anime id=12 num=304 wt=0
@anime id=35 num=304 wt=0

@wait t=200
@flash t=300
@change id=1 f=null num=0
@change id=10 f=null num=0
@change id=12 f=null num=0
@change id=35 f=null num=0

@wait t=1200
;; Iris squeezes the last power and escapes to the Demon Castle with transfer magic

@move_speed spd=4
@route route=up:5

; NEW
@mes_win back=1 pos=1

\fw:\m『THERE IS NO ESCAPE FOR EVIL. JUDGEMENT SHALT COME.』

@huki id=34 b=8
@wait t=1000

\fw:\m『ALL THAT IS GOOD AND KIND SHALT NOW BE BLESSED\n\mWITH DIVINE PROTECTION.』
@anime id=34 num=672

; NEW
@mes_win back=0 pos=2

@se f=地鳴りの音

