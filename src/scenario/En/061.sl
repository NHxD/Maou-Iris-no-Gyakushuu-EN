; UNUSED: "061_1", "061_2", and "061_3" are used instead.

;; ■ Ship
;; ● Royal Route
;; Event battle: Dio Squid (combat ends halfway)

@bgm f=Scene1

@move_f f=iris@kuyasii in=r t=300

[Elise]「Dammit! I can't fight properly while Deca is rocking the boat so much...」

[Deca]「GRRRRAAAAAA!」

;; Effect ■ Screen white flash
;;@flash
@flash t=100
;; Ship attack
;;ＳＥ■画面クエイク
@qk
;;ＳＥ■破壊音
;;@se f=風切り音1
@se f=斬る音

@bs f=iris@odoroki

[Elise]「It's attacking the hull of the ship!?」

@bs f=iris@kuyasii

[Elise]「Tsk... The passengers and crew have already jumped off the ship while I was busy fighting Deca...」

[Elise]「Although I don't want to get wet, I may have no other choice but to go for a swim too.」

[Deca]「GAAAAA!」

;; Effect ■ Screen white flash
@flash t=100
;; Ship attack
;;ＳＥ■画面クエイク
@qk
;;ＳＥ■破壊音
@se f=打撃音1

@bs f=iris@odoroki


[Elise]「Uh!? AH-ah-ah-ah...」

@move_f f=iris@odoroki out=r t=300

;; Iris swallowed by the whirlpool.
