
;; 48: Epilogue

;;----------------------------------------------
@invisible type=off
@through type=on
@move_speed spd=3
@dot_move dir=left x=18 y=30
@map_scroll dir=up dis=11 spd=6
@map_scroll dir=left dis=1 spd=6
;;----------------------------------------------
;; Sonia change clothes

@map_scroll dir=down dis=11 spd=4 wt=0
@fade type=in t=2000

;; Two people staying in a camp during the trip

@huki b=8
@huki id=3 b=8
@wait t=2500

@bgm f=Town1

@move_f f=sion@tuujou in=l t=300

@huki id=3 b=8
[Chiot]「Elise……」

@move_f f=iris@kuyasii in=r t=300

@huki b=7
[Elise]「So now we're camping together... and I still don't know what you want.」

@move_f f=sion@tuujou out=l t=300

@huki id=3 b=7
@wait t=1200

@move_f f=sion@tere in=l t=300

@huki id=3 b=8
[Chiot]「It's not that... I just... like...」

@bs f=iris@kanasimi

@huki b=6
[Elise]「You don't like camping? You'd prefer staying over at an inn?」

@bs f=sion@tere_hoho

@huki id=3 b=1
[Chiot]「No! I meant you... I like you!」

@bs f=iris@kuyasii

@huki b=8
[Elise]「.........」

@move_f f=sion@tere_hoho out=l t=300
@move_f f=iris@kuyasii out=r t=300

@huki b=8
@wait t=1200


@move_f f=sion@kanasimi in=l t=300

@huki id=3 b=2
[Chiot]「... Um... Elise?」

@huki b=8
@wait t=1200

@move_f f=iris@ikari_hoho in=r t=300

@huki b=2
[Elise]「... Are you stupid?!」

@bs f=sion@kanasimi

@huki id=3 b=7
[Chiot]「Why... why am I stupid?!」

@bs f=iris@ikari

@huki b=8
[Elise]「I'm the Devil, stupid!」

@bs f=sion@tuujou

@huki id=3 b=8
[Chiot]「But I already know that.」

@bs f=iris@ikari_hoho

@huki b=8
[Elise]「Why is a human, and a hero in the past no less, confessing his love to the Devil?!」

@bs f=sion@tere_hoho

[Chiot]「It's... because I fell for you.」

@move_f f=sion@tere_hoho out=l t=300
@move_f f=iris@ikari_hoho out=r t=300

@dir dir=right
@huki b=7
@wait t=1200

@move_f f=iris@kanasimi_hoho in=r t=300

[Elise]「Would you reincarnate if I kill you now, I wonder...」

@move_f f=sion@reisei in=l t=300

[Chiot]「Is this... your answer?」

@bs f=iris@kuyasii

[Elise]「Hmph. Of course.」

@bs f=sion@kanasimi

[Chiot]「Are you sure?」

@move_f f=sion@kanasimi out=l t=300
@move_f f=iris@kuyasii out=r t=300

@huki b=8
[Elise]「.........」

@huki id=3 b=8
[Chiot]「.........」


@huki b=7
@wait t=1200

@dir dir=left

@move_f f=iris@kuyasii_hoho in=r t=300

[Elise]「Besides, don't you already have a nice woman named Sonia...?」

@move_f f=sion@reisei in=l t=300

[Chiot]「I already talked to the princess before I left.」

@huki b=7
@bs f=iris@odoroki_hoho

[Elise]「―You did what?!」

@bs f=sion@tere

@huki id=3 b=8
[Chiot]「Princess Sonia also understood... my feelings.」

@bs f=iris@kuyasii_hoho op2=konwaku

@huki b=7
[Elise]「... Such a cruel man.」

@bs f=sion@ikari1

@huki id=3 b=8
[Chiot]「I won't accept being called "cruel" by the Devil.」

@bs f=iris@kanasimi

@huki b=6
[Elise]「... F―Fair enough.」

@bs f=sion@tuujou

@huki id=3 b=2
[Chiot]「So then... What's your answer?」

@bs f=iris@kuyasii

@huki b=7
[Elise]「... I think that I've already given you my answer.」

@huki id=3 b=8
[Chiot]「Hey... Elise...」

@bs f=iris@kanasimi

@huki b=2
[Elise]「... What?」

@huki id=3 b=8
[Chiot]「You once told me that 『Friendship』 and 『Love』 are just silly illusions.」

@bs f=iris@reisyo

@huki b=8
[Elise]「I did, uh?」

@bs f=sion@kanasimi

@huki id=3 b=8
[Chiot]「But when you fought God, you felt those powerful feelings coming from everyone, right?」

@move_f f=iris@reisyo out=r t=300
@move_f f=sion@kanasimi out=l t=300

@huki b=8
@wait t=1200

@move_f f=iris@kanasimi_hoho in=r t=300

@huki b=8
[Elise]「I guess so...」

@move_f f=sion@tere_hoho in=l t=300

@huki id=3 b=8
[Chiot]「I want to prove to you that both of these feelings are real... Can I do this for you?」


@move_f f=sion@tere_hoho out=l t=300
@move_f f=iris@kanasimi_hoho out=r t=300

@huki b=8
@wait t=300

@bgm f=bgm03

@move_speed id=3 spd=3
@move_speed spd=3

@route route=right:2,down

@dir dir=left
@move_f f=iris@bisyo in=r t=300

[Elise]「Well, since you seem so determined... I guess, that I should at least give you a chance.」

@move_f f=sion@tuujou in=l t=300

@huki id=3 b=2
[Chiot]「―What?」

@huki b=8
[Elise]「Above all, power is everything to demons. We respect and look up only to those who are stronger than ourselves.」

@huki id=3 b=8
[Chiot]「Is that so?」

@move_f f=iris@bisyo out=r t=300
@move_f f=sion@tuujou out=l t=300

@se f=剣構え01
@huki b=8
@wait t=1200

@move_f f=iris@emi in=r t=300
@huki b=8
[Elise]「Thus if you want my heart... then you must prove yourself to me. Come and defeat the Devil!」

@move_f f=sion@kanasimi in=l t=300

@huki id=3 b=1
[Chiot]「―What? No way!」

@bs f=iris@kanasimi

@huki b=2
[Elise]「Why the hell not?!」

@huki id=3 b=7
[Chiot]「Because I can't fight... the woman that I love... it's just impossible!」

@bs f=iris@kuyasii

@huki b=8
[Elise]「Just imagine yourself fighting a very bad person, all right? Let's settle this here...」
[Elise]「... And if you do manage to defeat me, well... then I'l allow you to love me.」

@bs f=sion@tuujou

@huki id=3 b=1
[Chiot]「... Uh, really?」

@bs f=iris@emi

@huki b=8
[Elise]「However, if you lose... Well, how about you become my slave for the rest of your life?」
[Elise]「Obviously, I won't let you do naughty things to me, ever.」

@move_f f=iris@emi out=r t=300
@move_f f=sion@tuujou out=l t=300

@huki id=3 b=8
@wait t=1200

@move_f f=sion@kanasimi in=l t=300

@huki id=3 b=7
[Chiot]「Ah...?! I understand... This is the only way... isn't it?」

; REMOVED
;@move_f f=iris@emi in=r t=300
; NEW
@move_f f=iris@kougeki2 in=r t=300

@huki b=8
[Elise]「Tsk... You're so persistent.」

; REMOVED
;@move_f f=iris@kuyasii out=r t=300
; NEW
@move_f f=iris@kougeki2 out=r t=300
@move_f f=sion@kanasimi out=l t=300

@move_speed id=3 spd=3
@route id=3 route=down,right

@se f=剣構え01
@huki id=3 b=8
@wait t=1200

@move_f f=iris@emi in=r t=300
@move_f f=sion@ikari1 in=l t=300

[Chiot]「Umm... Fine, fine. I shall accept your challenge!」

@move_f f=sion@ikari1 out=l t=300
@move_f f=iris@kuyasii out=r t=300

;; ○ Event battle: Hero
