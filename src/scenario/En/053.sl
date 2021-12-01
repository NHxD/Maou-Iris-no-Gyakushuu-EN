
;; ■ Harvest Town / Mayor's House
;; ※ Forced movement after dark→Mayor's house

@bgm f=Town1

@huki id=4 b=1
@move_f f=iris@kuyasii in=r t=300

[Mayor]「So, you really killed all the bandits?」

@huki b=5
@bs f=iris@ikari

[Elise]「Yes! Like I yelled so many times before but you still wouldn't open the door! Are you deaf?!」

@huki id=4 b=1

[Mayor]「Oh―oh... Thank you very much!」

@move_f f=iris@ikari out=r t=300

@dir id=6 dir=u
@huki id=6 b=8

[Weapon seller]「Mister Mayor, I'm going to tell the rest of the townsfolk. She has things to discuss with you.」

@huki id=4 b=1

[Mayor]「Very well, thank you.」

@route id=6 route=d:4,r,d:3 wt=1
@invisible id=6 type=on
@wait t=1000

@move_f f=iris@bisyo in=r t=300
@huki id=4 b=3

[Mayor]「Wow, I really don't know what to say to express all my gratitude. Thank you so much!」

@bs f=iris@kougeki1

[Elise]「Fine, fine... I'm so weary of the constant gratitudes. I have more important things to ask you.」

@huki id=4 b=1

[Mayor]「Please, go ahead. I'll tell you as much as I can.」

@huki b=3
@bs f=iris@bisyo

[Elise]「Do you know where I could find the Hero Chiot?」

@huki id=4 b=2

[Mayor]「Lord Chiot... I believe he was last seen in the Royal Capital.」

@huki b=2
@bs f=iris@kanasimi

[Elise]「Royal Capital? Where could I find this place?」

@huki id=4 b=8

[Mayor]「Go northeast and you will find a harbor city where you can take a boat. This will take you to the West continent you seek.」

@bs f=iris@kuyasii
@huki b=8 wt=1
@bs f=iris@bisyo

[Elise]「So that coward already fled to another continent. All right, thank you.」

@move_f f=iris@bisyo out=r t=300
@route route=d:2 wt=1

@huki b=8 wt=1
@move_f f=iris@syuuti in=r t=300
@huki ev=7

[Elise] (Looks like I won't be able to have my revenge right away...)

@bs f=iris@bisyo

[Elise] (Well, it's okay to take it slow since it might take me a while to regain all my powers anyway.)

[Elise] (Well, I should go to the harbor city as soon as possible.)

@move_f f=iris@bisyo out=r t=300
