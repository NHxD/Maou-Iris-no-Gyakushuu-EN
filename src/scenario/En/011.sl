
;; ■ Devil Castle (Prologue)

@move_f f=iris@kanasimi in=r t=300

[Iblis]「All right, let's see how many minions I can summon...」

@bgm

@bs f=iris@ikari

@anime num=701

@wait t=1500


;; magic activation

@mes_win back=1 pos=1

\fw:\mHEED MY CALL, MY LOYAL SERVANTS!

@move_f f=iris@ikari out=r t=300


@wait t=1000
@huki b=8
@wait t=2000

;; Effect ■ Screen effect
;; An orc walks and appears in front of Iris.

@mes_win back=0 pos=2
@dot_move id=12 dir=up x=19 y=14
@change id=12 f=Monster num=2
@through id=12 type=on
@route id=12 route=up:7 wt=1
@through id=12 type=on

[Orc]「You need me, my Devil Mistress?」

@bgm f=Town2

; REMOVED
;@huki b=8 wt1
; NEW
@huki b=8 wt=1
@move_f f=iris@odoroki in=r t=300
[Iblis]「... Argh!」

@bs f=iris@odoroki op2=konwaku

[Iblis]「What the hell! An orc? Only one stupid orc answered my call?!」

@huki b=1
@bs f=iris@ikari

[Iblis]「Wait... Where are the others?」

@huki id=12 b=2

[Orc]「Demons were disappointed in Devil Mistress.」

[Orc]「After she was severely beaten and humiliated by a human, they all left to seek a stronger master.」

@huki b=5
@bs f=iris@ikari_hoho

[Iblis]「What?! This must be a joke...right? I didn't lose!!! The human ran away before the real fight even started!」

[Orc]「It's useless to say that kind of stuff to me now...」

@huki b=5
; REMOVED
;@bs f=iris@kuyasii
; NEW
@bs f=iris@kougeki2

[Iblis]「This is outrageous!」

; MOVED HERE
@bs f=iris@kuyasii

[Iblis]「Well, it's better than nothing to have you here.」

@bs f=iris@kougeki2

;[Iblis]「Orc, I command you―」
[Iblis]「You. Obey me!」

@dir id=12 dir=l wt=0

[Orc]「Nope.」

@bgm
@bs f=iris@odoroki op2=hatena

[Iblis]「What?」

@dir id=12 dir=u wt=0

[Orc]「I said nope.」

@huki b=6
@bs f=iris@kanasimi

;[Iblis]「How... Is this how you address your Master?!」
[Iblis]「How... How dare you talk back to your master?!」

@bgm f=Dungeon2

@huki id=12 b=3

[Orc]「My Devil Mistress, look at you. You can't even be called a demon anymore. You look so, so weak.」

@huki b=5
; REMOVED
;@bs f=iris@odoroki_hoho =kettei
; NEW
@bs f=iris@odoroki_hoho op2=kettei
[Iblis]「What the hell are you talking about?!」

@se f=slash12
@huki id=12 b=1

;[Orc]「We followed your every command until now out of fear, but now no one would follow a Devil as weak as you!」
[Orc]「We followed your every command so far, but no one would follow a Devil as weak as you!」

[Orc]「How about I finish you off now, then I'll become the next Devil!」

@huki b=5
; REMOVED
;@bs f=iris@ikari_z body_op=z  x=c
; NEW
@zoom_f f=iris@ikari_z src=iris@odoroki_hoho in=r t=300

[Iblis]「How dare you betray me! You're only an orc...」
[Iblis]「I'll let you know that you are billion years too young to defeat me!」

@move_f f=iris@ikari_z out=r t=150

;; Event Battle: Orcs (Game over if defeated)
