
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event: Prostitute event: Sakuya: Evil officer: Third stage

;; Background ■ Prostitute room

@bgm f=field5

@huki id=1 b=4 wt=1

[Corrupt deputy official]「Oh hun, it was amazing! Sakuya, you are now my possession. I will come back to look for you soon...」

[Corrupt deputy official]「No, I can just buy you out of the whorehouse and make you my concubine! Hehehe! Not bad, not bad! So, just wait for me, Sakuya!」
;; ■ to be dropped = to be hired

;; Situation ■ The evil officer is leaving

@route id=1 route=d:9 wt=1
@se f=Open1 vol=90
@switches id=208 val=1
@wait t=500
@dir dir=d

@move_f f=sakuya@bisyo body=oiran in=r t=300

[Sakuya]「Thank you so much, my lord. ♥ Ha ah...」

@bs f=sakuya@metoji
@huki b=8 wt=1
[Sakuya] (What happened to me? I let myself became possession of this evil daikan... Should I really be enchanted to become his lover?)

@bs f=sakuya@bisyo

[Sakuya] (It might be okay. In that case, I could steal all his money before killing him.)

@bs f=sakuya@bisyo op2=onpu
[Sakuya] (Giving his money to poor families should count as payback for his countless dirty deeds.)

@bs f=sakuya@bisyo_hoho
[Sakuya] (And if only temporarily, I can still keep enjoying that kind of fun! ♥ I also want to feel good...)

@bs f=sakuya@odoroki

@huki b=8 wt=1

[Sakuya]「Ah...」

@bs f=sakuya@metoji_hoho op2=ase
[Sakuya] (Wait. What am I thinking?! How can I be happy about this? It is not time to enjoy myself. Idiot.)


@bs f=sakuya@kanasimi_hoho
@huki b=7 wt=1

[Sakuya] (But... But why... Am I feeling so hot and itchy down there... Whenever I think about sex, I yearn for it so badly.)

@move_f f=sakuya@kanasimi_hoho out=r t=300

;; Jump ■ To the next scene
