
;; ★Diesel Mine "RPG2 Planning"
;; ■ Sub-event 1: Prostitution: Aristocrat: First stage

;;Background

@bgm f=dungeon3
@huki id=14 b=8 wt=1

[Aristocrat]「Oh... I see, I see...」

;; Situation ■ Aristocratic licking Iris' body from top to bottom (slide the standing picture up and down)

@move_f f=iris@ikari in=r t=300

[Elise]「Hm? What's the matter with you... You've got something to say?」

[Aristocrat]「Oh sorry, it was rude of me to ogle you... But what are you doing out here? Can I do something for you?」

@huki b=8 wt=1
@bs f=iris@kuyasii

[Elise]「Nothing. I was just looking for opportunities to make money while I'm here.」

[Aristocrat]「I see. In that case, would you be interested in selling your beautiful body, miss?」

@huki b=8 wt=1
@bs f=iris@ikari_hoho

[Elise]「...」

@huki b=8 wt=1
@move_f f=iris@ikari_hoho out=r t=300

;; Choice ■ Choice 1: Do not sell → Don't sell / Choice 2: Sell → Sell
