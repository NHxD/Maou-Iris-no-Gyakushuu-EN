
;; ■ Castle
;; ● Demon King Route (If you choose Dominate the World)

;; Demon King who attacks the royal capital
;; Proceed through the castle while defeating the Holy Knight

@bgm f=battle7

@move_f f=iris@kuyasii in=r t=300

[Elise]「You fragile little things. Turns out that holy knights are just small fry too. Well, let's move on to the main course...」

; NEW
@move_f f=iris@kuyasii out=r t=300

@map_scroll dir=u dis=4 spd=5 wt=0
@route route=u:3
@wait t=1000

@huki id=21 b=1

[Chiot]「Devil Iblis!」

@map_scroll dir=d dis=2 spd=5 wt=0
@route id=21 route=d:3
; NEW
@move_f f=iris@bisyo in=r t=300
; REMOVED
;@bs f=iris@bisyo

[Elise]「This voice... Ohohoho～♪ I saved you for last! I made sure that you would see the day that I would throw the world into absolute chaos!」

@huki b=3
@bs f=iris@emi

[Elise]「Oh, the wait was so excruciating but... The time has finally come... The moment when I can face you again!」

@anime num=602

@move_f f=sion@ikari2 in=l t=300

[Chiot]「If only I had defeated you the first time, none of this would have happened to the kingdom... I will never forgive you!」

@bs f=iris@reisyo

[Elise]「I love that expression on your face, Chiot. I'm thrilled to be your enemy. However, this won't be enough... Far from it.」

@huki id=21 b=1
@bs f=sion@ikari1

[Chiot]「What?!」

@bs f=iris@bisyo_hoho

[Elise]「What I really want to see is you barking like a dog in the throes of despair.」

@bs f=iris@emi_hoho

[Elise]「Now, show me...you crawling on the ground and lashing about in great pain ～♪ Ahahaha!」

@move_f f=iris@emi_hoho out=r t=300
@move_f f=sion@ikari1 out=l t=300

;; ○ Event Battle: Brave
