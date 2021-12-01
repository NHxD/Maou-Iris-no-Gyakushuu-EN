
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Sakuya: son of a merchant: 1st stage

;; Background ■ Prostitute room

@bgm f=dungeon3
[Merchant's son]「See you later, big sister! Let's do it again next time!」


@move_f f=sakuya@bisyo_hoho body=oiran in=r t=300
[Sakuya]「Eh... Well... Yes, see you again. Thank you♥」



;; Situation ■ Merchant's son leaves

@route id=1 route=d:9 wt=1
@se f=Open1 vol=90
@switches id=208 val=1
@wait t=500
@dir dir=d
@huki b=8 wt=1
@bs f=sakuya@metoji_hoho

[Sakuya]「Eeee... he seemed happy. But I am little bit shocked.」

@bs f=sakuya@kanasimi
[Sakuya]「For this young child to come here... And for him to know...and do those things...」

@bs f=sakuya@kanasimi_hoho
[Sakuya]「But when I think of what we just did... I feel...little...weird. What is this feeling?」



@move_f f=sakuya@kanasimi_hoho out=r t=300

;; Jump ■ To the next scene
