; UNUSED: "060_1", "060_2", "060_3", and "060_4" are used instead.

;; ■ Ship
;; ● Royal Route

;; Event conditions, go to the bow.

@bgm f=dungeon3

@move_f f=iris@kanasimi in=r t=300

[Elise]「I can only see the ocean now... Ugh, It's so boring... What should I do to kill time?」

;; Ship vibration

@bgm f=dungeon2

@bs f=iris@odoroki

[Elise]「Wha―?!」

;; Sea Demon, Squid Squid, Appears

[Giant Squid]「GYUIIIIII!」

@bs f=iris@kuyasii

[Elise]「A monster? Here?! It'll be very troublesome to fight at sea.」

[Giant Squid]「GRRRRRR」

[Elise]「Wait... It seems to want to communicate...」

;; Iris takes a step closer and asks, "? "icon

@bs f=iris@odoroki op2=hatena

[Elise]「Ah... I feel like I've seen this creature before...?」

;; "! "icon

@bs f=iris@odoroki op2=kettei

[Elise]「Oh! Are... Aren't you the giant squid that I used to raise?!」

@bs f=iris@bisyo

[Elise]「Well, I had completely forgotten that I left you in this part of the ocean.」

[Giant Squid]「GYUUUUU! GYUIIIIII!!」

@bs f=iris@emi

[Elise]「Deca, it's me! I'm your master, the Devil Iblis!」

;; Daika, "? "icon

[Deca] 「G U I?」

;; Daika, "..." icon

[Deca]「...」

;; Iris, "..." icon

@bs f=iris@bisyo

[Elise]「...」

;; screen shake
@qk

[Deca]「GYUIIIIIIIIII!」

;; Iris, "sweat" icon

@bs f=iris@kuyasii op2=ase

[Elise]「GYUI? Ah, it might be impossible for you to recognize me while I'm in my human form.」

[Deca]「GYUAAAAAAAAAA!」

@move_f f=iris@kuyasii out=r t=300

;; Event battle: Dio Squid (combat ends halfway)
