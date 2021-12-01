
;; ■ Ship
;; ● Royal Route

;; Event conditions, go to the bow.

;; Sea Demon, Squid Squid, Appears

[Giant Squid]「GYUIIIIII!」

;[Sailor]「Abandon ship!!! Abandon ship!!!」
[Sailor]「It be a foul beast! Swim fer yer life!」

@route id=6 route=l:6,d:7 wt=0 spd=6
@route id=7 route=r:2,d:6 wt=0 spd=6

@bs f=iris@kuyasii

[Elise]「A monster? Here?! It'll be very troublesome to fight at sea.」

[Giant Squid]「GRRRRRR」

[Elise]「Wait... It seems to want to communicate...」

;; Iris takes a step closer and asks, "? "icon
@route route=d wt=1
@dir dir=r wt=1
@huki b=2

@bs f=iris@odoroki op2=hatena

[Elise]「Ah... I feel like I've seen this creature before―?」

;; "! "icon
@huki b=1

@bs f=iris@odoroki op2=kettei

[Elise]「―Oh! Are... Aren't you the giant squid that I used to raise?!」

@bs f=iris@bisyo

[Elise]「Well, I had completely forgotten that I left you in this part of the ocean.」

[Giant Squid]「GYUUUUU! GYUIIIIII!!」

@bs f=iris@emi

[Elise]「Deca, it's me! I'm your master, the Devil Iblis!」

;; Daika, "? "icon
@huki id=2 b=2

[Deca]「G U I?」

;; Daika, "..." icon
@huki id=2 b=8

[Deca]「...」

;; Iris, "..." icon
@huki b=8

@bs f=iris@bisyo

[Elise]「...」

;; screen shake
@qk
