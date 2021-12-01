
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Sakuya: son of a merchant: 3rd stage general purpose

;; Background ■ Prostitute room

@bgm f=dungeon3
[Merchant's son]「Hey hey, I'll come inside your vagina lots and lots today♪ I love you, big sister!」


@move_f f=sakuya@bisyo body=oiran in=r t=300
[Sakuya]「Ah... Well, little customer... Hm... Telling you is useless, uh?」

@bs f=sakuya@kanasimi_hoho
[Sakuya](Uh... I cannot let myself be swept away by this kind of thing... Will I be able to refuse him again... I do not have such confidence...)

@move_f f=sakuya@kanasimi_hoho out=r t=300

;; Effect ■ Dark
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
