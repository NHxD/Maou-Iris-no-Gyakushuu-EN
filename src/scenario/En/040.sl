
;; ■ Oak Forest / Orc Settlement
;; Talk with Red Orc

@bgm f=Dungeon9

@map_scroll dir=d dis=2 spd=3
@wait t=1000

@move_f f=iris@kougeki1 in=r t=300

[Elise]「Wow... That was quite an impressive performance.」

[Elise]「You're the infamous Red Orc, I presume.」

@bgm

@bgm f=Dungeon3

;;ＣＧ■CG02d

;; ※ Iris appeared

@huki id=12 b=1
@huki id=13 b=1

@dir id=12 dir=d
@dir id=13 dir=d

@huki id=9 b=2
@route id=9 route=d wt=1

[Red Orc]「Ah? I wonder what makes you think that...?」

[Red Orc]「Are you lost, lil' girl?」

@bs f=iris@ikari

[Elise]「I'm the Devil, you dirty pig.」

@huki id=9 b=3

[Red Orc]「The Devil? A tiny lil' girl like you?」

[Red Orc]「Ahahah... For such a cute lil' mouth, it sure spouts a lot of crap!」

@huki b=5
@bs f=iris@kuyasii

[Elise] (How dare he doubt my word!)

[Elise] (I'll gut and roast that fat bastard. Then I'll have his minions feast on his flesh. Ohoh―♪)

@bs f=iris@reisyo
@huki b=7

[Elise] (―No, no. This is not the time to be rash. I can more or less look past his terrible attitude if he could just follow my orders.)

@huki b=8
@bs f=iris@kougeki1

[Elise] (If I'm able to subdue him at all, that is. Because he looks strong and I still haven't recovered all my powers yet.)

@huki id=12 b=3

[Orc A]「Wow, she's a beauty, isn't she?」

; NEW
@huki id=13 b=3

[Orc B]「Red Orc, she's a first-class girl!」

@huki id=9 b=1

[Red Orc]「Shut up, you two!」

[Red Orc]「So, lil' girl... Who are you, really?」

@bs f=iris@takawarai
@huki b=5

[Elise]「I've already answered that question, you silly pig.」

[Elise]「I'm the one and only supreme overlord... Devil Iblis! Ohohoho～♪」

@huki id=9 b=8

[Red Orc]「.........」

@huki id=12 b=4

[Orc A]「Look at her tits! ♥ They're not big but juuust the right size. ♥」

@huki id=13 b=4

[Orc B]「I'm already hard just by looking at her body! ♥」

@huki b=7
@bs f=iris@kougeki1

[Elise]「Disgusting pigs! Aren't you ashamed of yourselves!」

@huki id=9 b=8

[Red Orc]「So you're the Devil, uh? The one who was defeated by a mere human then abandoned by her own worshippers?」

@huki b=6
@bs f=iris@kougeki2

[Elise]「I―I was not defeated! I'm still very much alive as you can see and the fight between I and the Hero hasn't even started!」

@huki id=9 b=8

[Red Orc]「It's useless to say these things to me.\nEveryone living around here has heard about the infamous \$ACTOR[Trash Devil]. Ahahaha!」

@bs f=iris@odoroki
@huki b=5

[Elise]「Tr―Trash?」

@huki id=12 b=4
@fb id=12 dir=for

[Orc A]「Look at the whale tail of this brod! ♥」
; NOTE: it doesn't make sense since he can't see her from behind... Unless he means to fantasize about it...

@huki id=13 b=4
@fb id=13 dir=for

[Orc B]「Red Orc, let's fuck this girl already!」

; NEW
@huki id=9 b=5

[Red Orc]「Shut up! But my patience is wearing thin too...」

@huki b=1
@bs f=iris@ikari

[Elise]「Hmph. How dare you... I'm the Devil Iblis!」

@huki id=9 b=2
[Red Orc]「So what, trash?」

@huki b=5
@bs f=iris@kougeki1

[Elise]「Dammit! Red Orc! I command you to serve me in order to defeat the Hero!」

@huki id=9 b=2

[Red Orc]「Oh! Look at your arrogant lil' face. Who do you think you're talking to?」

@huki b=5
@bs f=iris@kougeki2

[Elise]「I'm talking to you, pig!」

[Elise]「Look down on me once more and I'll make you regret it, fool!」

@huki id=9 b=1

[Red Orc]「Aha! You stole MY line.」

@huki b=5
@bs f=iris@odoroki

[Elise]「What...?!」

@huki id=9 b=3

[Red Orc]「I don't care what devil you are, but if you would like to become my sex slave, I can help you with that. Ahaha!」

@huki b=1
@bs f=iris@ikari

[Elise]「You creep!」

@huki id=9 b=4
; REMOVED
;@route id=9 route=d wt=1
; NEW
@c_jump id=9 y=1 wt=1

; NEW
@step_anime id=9 type=on

[Red Orc]「You're so sexy ♥ Pleasure my dick and I'll help you with your lil' hero problem.」

[Red Orc]「That's a pretty good offer, what do you say?」

@bs f=iris@kuyasii

[Elise]「Grrr...」

@huki id=9 b=2

[Red Orc]「So...?」

@bs f=iris@ikari
@huki b=5

[Elise]「Tsk... As soon as you give them an inch, they trample all over you!」

[Elise]「Orcs are so predictably simple minded... Always horny and greedy!」

@huki b=1
@bs f=iris@kougeki2

[Elise]「An insolent orc like you won't cut it to become my minion.」

@zoom_f f=iris@kougeki2_z src=iris@kougeki2 in=r t=300

[Elise]「It's roasting time, pig!」

; NEW
@move_f f=iris@kougeki2_z out=r t=150
; REMOVED
;@move_f f=iris@kougeki2 out=r t=150

; NEW
@step_anime id=9 type=off

;; ⑥ The Red Orc's work and attitude toward himself are disturbing, and the Devil will defeat him.

;; Battle: Red Orc
