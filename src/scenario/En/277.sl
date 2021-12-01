
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Sakuya: son of a merchant: 1st stage general purpose

;; Background ■ Prostitute room

@bgm f=dungeon3

[Merchant's son]「Hey hey, big sister♪ Let's have fun again today♪」

@move_f f=sakuya@bisyo_hoho body=oiran in=r t=300
[Sakuya]「Eh... Of course. Welcome, little guest. ♥」


@move_f f=sakuya@bisyo_hoho out=r t=300

;; Effect ■ Dark
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
