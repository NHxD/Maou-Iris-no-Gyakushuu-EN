
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Boy: Second stage

;; Background ■ Port town, Haldoor

@bgm f=field5
@huki id=6 b=4 wt=1

[Rich boy]「Big sis, it felt sooo amazing! Ohhh... It was really the best ever! Big sis, you're really the best woman! Ahahah!」

@huki b=8 wt=1
@move_f f=iris@kuyasii_hoho in=r t=300

[Elise/irs0941]「Well, of course that I am the greatest woman you'll ever meet...」

[Rich boy]「Well then, goodbye for now. Let's play again next time, big sis! ～♪」

;; Situation ■ The boy is leaving

@through id=6 type=on
@route id=6 route=d:3,r:11 wt=0
@wait t=1500

@huki b=1 wt=1
@dir dir=d

@bs f=iris@odoroki

[Elise/irs0942]「Sure! Uh... Wait― Just wait a minute here! I already said that I would do this only once. So why are you saying "next time"? You selfish little brat!」

@huki b=8 wt=1
@bs f=iris@syuuti_hoho

[Elise/irs0943] (Tsk... I don't know why but I keep losing myself when I'm doing it with that boy. I should be more careful around him from now...)

@move_f f=iris@syuuti_hoho out=r t=300

@invisible id=6 type=on

;; Jump ■ To the next scene
