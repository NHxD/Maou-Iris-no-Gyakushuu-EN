
;; ■ East Island / Pleasure Quarter / Main Room
;; ● Royal Route
;; ● Options: Strive to attack / Become a prostitute
;; Become a prostitute
;; ○ Event occurrence condition: Enter the play area and talk to the receptionist
;; → select "Yes"
;; *The main room for forced movement and play area

@bgm f=Town1

; REMOVED
;@move_f f=sakuya@bisyo in=l t=300
; NEW
@move_f f=sakuya@kanasimi in=l t=300
; REMOVED
;@move_f f=iris@reisyo in=r t=300
; NEW
@move_f f=iris@kanasimi in=r t=300

[Master]「So you are the women who want to work here?」

[Master]「Uh-huh, both of you have a pretty face. Then... Hey, why are you both looking so stiff. Relax and undress now.」

@bs f=iris@ikari

[Elise] (Psst...can I kill him now...?)

@bs f=sakuya@odoroki_hoho op2=kettei

[Sakuya]「No. Not yet. Although I am angry too, we have to obey his order for now.」

[Master]「Don't you courtesans want to work here? I have a long list of clients for you! ♪」

[Master]「And it's my right to assess the quality of my commodities, right? So, come on, take off your clothes already!」

@bs f=sakuya@metoji

[Sakuya]「Be patient, Elise. Follow his order, for now...」

@bs f=iris@kuyasii_hoho

[Elise]「Why do I feel like he's just a lecherous old man... Ugh.」

; REMOVED
;@move_f f=iris@kuyasiihoho out=r t=300
; NEW
@move_f f=iris@kuyasii_hoho out=r t=300
@move_f f=sakuya@metoji out=l t=300
