
;; ■ Harvest Town / Weapon Shop
;; ○ Mob (Weapon shop clerk)
;; ※ Before the bandits are subdued
;; ・ Only one can enter the weapon shop. (※ There are peddlers who can buy tools)

@bgm f=Town4

@huki id=2 b=2

[Weapon seller]「Wow! Are you really travelling alone?\nYou're very lucky for not having crossed path with the \$ENEMY[Bandits].」

@move_f f=iris@bisyo in=r t=300

[Elise]「This seems to be the only place around here that isn't closed.」

@huki id=2 b=1

[Weapon seller]「Indeed! I won't close my shop just because of two or three bandits!」

@huki b=3
@bs f=iris@takawarai

[Elise]「Ah! I like your spirit.」

@bs f=iris@kougeki1

[Elise]「In fact, let me ask you something...」

@huki id=2 b=7

[Weapon seller]「Let me guess... The villagers are too afraid to even open their doors, right?」

[Weapon seller]「They'll probably keep hiding in their houses as long as bandits still roam the streets sometimes.」

@huki b=8
@bs f=iris@kuyasii

[Elise]「I see. Well, you're the only person I can ask then... Do you know where is the Hero Chiot?」

@huki id=2 b=2
@bs f=iris@bisyo

[Weapon seller]「The Hero Chiot? I never had the pleasure to do business with the man.」

@huki id=2 b=9

[Weapon seller]「However, shortly before the bandits attacked this village, there was a woman who came by the store...」
[Weapon seller]「She wanted to pawn off some rare magic items that she had recently found. Well... That woman claimed to be a partner of the Hero Chiot.」

@huki b=2
@bs f=iris@kanasimi

[Elise] (A woman? Oh yeah, come to think of it, the Hero wasn't alone that day...)

@huki b=8
@bs f=iris@kuyasii

[Elise] (But compared to the Hero, the people that were with him were so weak that I instinctively ignored them.)

@bs f=iris@kougeki1

[Elise]「So... Do you know where they are now?」

@huki id=2 b=2

[Weapon seller]「Now? Nope. Our mayor might know something though, but of course, he's locked himself in his house and he won't come out.」

@huki b=8
@bs f=iris@kuyasii

[Elise] (So I guess the Hero never really came to this town, after all...)

@bs f=iris@kougeki1

[Elise]「Well, I really need to talk to the mayor...」

@huki id=2 b=8

[Weapon seller]「Well, think about it... If the bandits are out of the picture, the villagers would no longer have a reason to hide.」

@huki b=8

; NEW
@bs f=iris@kuyasii

; NEW
[Elise] (Tsk... Humans are so annoyingly weak!)

@bs f=iris@reisyo

[Elise]「All right, thanks for the information.」

@huki id=2 b=3

[Weapon seller]「You're welcome. But before you leave, why don't you buy a weapon? You will certainly need it.」

@move_f f=iris@reisyo out=r t=300

