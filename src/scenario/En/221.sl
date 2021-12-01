
;; ● True Demon King Route (Fighting back to the hero)

;; ○ Branch: Victory
;; ○ Selection: Well, do your best

@bgm f=Town1

@move_speed spd=3
@move_speed spd=3

@se f=剣構え01
@wait t=500

@route route=up

@huki b=8
@wait t=1200

@move_f f=iris@reisyo in=r t=300

@huki b=8
[Elise]「Well, train more, Hero... And if you manage to defeat me one day, then I might reconsider.」

@move_f f=sion@kanasimi in=l t=300

@huki id=14 b=2
[Chiot]「... Oh! But was I not supposed to become your slave...?!」

@bs f=iris@ikari

@dir dir=left

@huki b=2
[Elise]「... Are you asking me to make you my slave?」

@bs f=sion@tuujou

@huki id=14 b=6
[Chiot]「N―No, no... not at all! no... p―perhaps?」

@dir dir=up
@bs f=iris@bisyo

@huki b=8
[Elise]「Hmm... Not today. Well, let's have some rest, and you may try again tomorrow.」

@bs f=sion@tere_hoho

@huki id=14 b=2
[Chiot]「Oh, oh... Can I sleep next to you?」

@dir dir=left
@bs f=iris@ikari_hoho

@huki b=8
[Elise]「Do anything strange and I'll kill you.」

@bs f=sion@tere

@huki id=14 b=7
[Chiot]「I won't!!!」

@move_f f=sion@tere out=l t=300
@move_f f=iris@ikari_hoho out=r t=300

@move_speed spd=4
@move_speed spd=2
@move_speed id=14 spd=2

@map_scroll dir=up dis=15 spd=4 wt=0
@route route=left,up:2 wt=0
@route id=14 route=right,up:2 wt=0
