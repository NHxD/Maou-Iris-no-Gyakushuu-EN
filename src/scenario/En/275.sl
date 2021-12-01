
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Sakuya: son of a merchant: 1st stage

;; Background ■ Prostitute room

@bgm f=dungeon3
[Merchant's son]「Hey hey, big sister, you have really big breasts! I like that kind of beauty!」

@move_f f=sakuya@bisyo_hoho body=oiran in=r t=300
[Sakuya]「Eh? Well, yes... Although it may sound like I am bragging about myself, but I do think that I have big breasts too.」
[Sakuya]「I am glad that you think that I am beautiful. Teehee. ♥」

@bs f=sakuya@metoji op2=ase
[Sakuya] (I really did not expect that such child would come to whorehouse. And this is likely not his first time either. This world is in disarray.)

[Merchant's son]「Ahaha♪ So, big sister♪ First, let's...」

@move_f f=sakuya@metoji out=r t=300

;; Effect ■ Darkness
@bgm
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
