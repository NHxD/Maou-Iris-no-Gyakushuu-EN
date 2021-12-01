
;; ■ Cave
;; ● Royal Route
;; ⑪ When I wake up, I'm in a cave.

@bgm f=dungeon5

[Elise]「... Ow... Ow... Ah...」

@move_f f=iris@kanasimi in=r t=300

[Elise]「Ngh... Where am I?!」

;; Look over Iris left and right.
@dir dir=r wt=1
@huki b=8 wt=1
@dir dir=l wt=1
@huki b=8 wt=1

[Elise]「It looks like I'm in a cave but it's so dark in here... How am I ever going to leave this place...?」

[Elise]「I better proceed cautiously and watch my step until I find the exit somehow...」

@move_f f=iris@kanasimi out=r t=300

;; Iris, go
;; Advance while defeating the Lizardman in the cave
