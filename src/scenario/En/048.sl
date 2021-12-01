
;; ■ Harvest Town
;; ※ Event occurrence conditions: Go out after listening to the story from the father of the weapon shop.

@bgm f=dungeon5

@wait t=1000

@huki b=7
@move_f f=iris@kanasimi in=r t=300

[Elise]「The bandits he mentioned are probably human too. How could the villagers be so afraid of their own kind? Those cowards!」

@huki b=8
@bs f=iris@kuyasii

[Elise]「I could just break into their tiny little houses and force them to speak, but I'll get in trouble if I accidentally kill one of them.」

[Elise]「Well, it can't be helped. I'd better kill the bandits instead even though it's a pain.」

@huki b=7
@bs f=iris@syuuti

[Elise]「Dammit! Can't believe that I, the Devil, would chase after some lowlife thugs just to help those human cowards.」

[Elise]「Are my actions being influenced by those humans...?」

@bs f=iris@reisyo

[Elise]「Well, this doesn't matter right now. I'll take care of the bandits first and think later!」

@bs f=iris@bisyo

[Elise]「I should head towards east to the wasteland.」

@move_f f=iris@bisyo out=r t=300
;; I made a sigh and proceeded toward the mountain indicated by the weapon store.
