
;; ■ Prince Mansion
;; ● Royal Route
;; ● 5th place of succession to the throne
;; ● Infiltration
;; Event conditions: Talk to the maid in the mansion
;; Enter the Est room with the maid

;; Two maids ahead

@bgm f=bgm03

[Maid A]「Oh no, Master Eyster did it again?!」

@move_f f=iris@bisyo body=maid in=r t=300

[Elise]「They're whispering to each other... They might be gossiping about some juicy secret. Let's eavesdrop without getting noticed.」

[Maid B]「I'm telling you... It's true! The girl packed all her belongings and left the mansion last night.」

[Maid A]「Poor girl... She was hired only last week.」

[Maid A]「Such a young and pretty girl too, it's so sad!」

[Maid B]「The only maids left working in this mansion are old like us...」

[Maid A]「Hey, who are you calling ol―」

@huki id=12 b=1

@route route=up:3 wt=1

@bs f=iris@emi

[Elise]「Nice to meet you. I'm the new maid... Elise.」

[Maid A]「Oh... Nice to meet you.」

[Maid B]「Nice to meet you.」

;; Maids leave Iris
; REMOVED
;@route id=11 route=l:1,d:3,r:1,d:8  wt=0
; NEW
@route id=11 route=l:1,d:3,r:1,d:8 wt=0
; REMOVED
;@route id=12 route=r:1,d:4,l:1,d:7  wt=1
; NEW
@route id=12 route=r:1,d:4,l:1,d:7 wt=1

[Maid A]「I feel so sorry for this girl... She will certainly soon―」

[Maid B]「Shhh― she can still hear you!」

;; the maids disappear

@bs f=iris@kuyasii

[Elise]「Well, that was awkward. But they didn't seem to be sharing any useful information anyway. Well, let's check another room.」

@move_f f=iris@kuyasii out=r t=300

;; Iris, move
