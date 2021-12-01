
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Sakuya: Merchant's son: Second stage

;; Background ■ Prostitute room

@bgm f=dungeon3
[Merchant's son]「Oh, it was fun! I'll come again, big sister! I'll impregnate you next time♪ See you then～」


@move_f f=sakuya@kanasimi_hoho body=oiran in=r t=300

[Sakuya]「Eeeehh?! Eh? Eh... Hmmm...」

;; Situation ■ Merchant's son leaves

@route id=1 route=d:9 wt=1
@se f=Open1 vol=90
@switches id=208 val=1
@wait t=500
@dir dir=d
@huki b=8 wt=1
@bs f=sakuya@kuyasii_hoho

[Sakuya]「How could this child say such naughty things with an innocent smile on his face? It is like he did nothing wrong at all.」

@bs f=sakuya@kanasimi_hoho
[Sakuya]「After all, he is spoiled child of rich merchant. So of course, he is arrogant and unable to discern right from wrong.」


@bs f=sakuya@metoji


[Sakuya]「Unfortunately, I cannot do anything about it... And because of his innocent smile, I cannot hate him.」

@bs f=sakuya@kanasimi_hoho

[Sakuya] (If I explain to him with a lot of affection, he may listen to me...)

[Sakuya]「What terrible situation. I am sure that he will come again... And I wonder whether I will be able to refuse him or not.」

@move_f f=sakuya@kanasimi_hoho out=r t=300

;; Jump ■ To the next scene
