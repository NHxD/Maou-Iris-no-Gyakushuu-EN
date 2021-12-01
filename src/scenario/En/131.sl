
;; ● Royal Route
;; ● 2nd place in succession to the throne

;; Iris, start moving
;; Move inside the castle
;; go to the royal room

@bgm f=bgm03

@move_f f=iris@reisyo in=r t=300

[Elise]「Hmm... This must be Prince Lannan's room. Hmm, the door's locked...」

;; try to open, but not open
@anime num=212

@bs f=iris@kuyasii

[Elise]「Hah. I really can't open it.」

@bs f=iris@kanasimi

[Elise]「Tsk... Guess there's no other way but to use a magic spell to see what's inside the room.」

;; Iris, magic activation
@anime num=206

;;@bs f=iris@reisyoi_hoho

; NEW
@bs f=iris@kuyasii_hoho

[Elise]「Oh la la～ What a gentle brother...」

@move_f f=iris@kuyasii_hoho out=r t=300
