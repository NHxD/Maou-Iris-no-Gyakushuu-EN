
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Sakuya: son of a merchant: second stage general purpose

;; Background ■ Prostitute room

@bgm f=dungeon3
[Merchant's son]「Hey hey, big sister♪ Today, let me ejaculate a lot! Just thinking of you... I can't wait anymore♪」


@move_f f=sakuya@bisyo body=oiran in=r t=300
[Sakuya]「Teehee♥ What am I going to do with you, little guest♥ All right, but you cannot come inside, okay?」




@move_f f=sakuya@bisyo out=r t=300

;; Effect ■ Dark
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1

