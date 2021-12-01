; UNUSED: "066_1" and "066_2" are used instead.

;; ■ Cave / Nest
;; ● Royal Route
;; ⑫ Branch: Victory

@bgm f=battle5

;; After the attack animation, Daika step back

[Deca]「KYUUUU...」

@move_f f=iris@reisyo in=r t=300

[Elise]「So... Have you figured out who I am, Deca?」

[Deca]「KYUI! KYUI! ♥」

@bs f=iris@bisyo

[Elise]「Ah... You recognized me, finally! ♥」

@bs f=iris@ikari

[Elise]「Aaah... And I had planned to roast you as punishment for disobeying me...!」

[Deca]「KUUUN?!」

@bs f=iris@bisyo

[Elise]「Well, I also forgot that I let you live free in the sea... So I'll forgive you this time as an exception.」

[Deca]「... KYUUI!」

[Elise]「So, Deca. Come and serve me.」

[Deca]「GYUI!」

@bs f=iris@kanasimi

[Elise]「... Now that this little fishy problem has been solved, I should think about how to get to the Royal Capital.」

@bs f=iris@bisyo op2=kettei

[Elise]「Ha―ha! Why don't YOU take me there!」

[Deca]「... GYUIIIII!!」

@bs f=iris@emi

[Elise]「Haha... You must be even faster than that lame boat!」

;; Iris, ride on the Daika (*a feeling like riding a boat).

@bs f=iris@bisyo

[Elise]「So Deca, take me to the Royal Capital!」

[Deca]「GYUI!」

@move_f f=iris@bisyo out=r t=300

;; Daika, going dark as he progresses through the sea

@fade type=out t=1000
@wait t=1000
@fade type=in t=1000 wt=1
