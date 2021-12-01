
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: Iris: Players: Second stage

;; Background ■ Prostitute room

@bgm f=dungeon3
@huki id=1 b=4 wt=1

[Playboy]「Ah, I have to bother you again today ♪ I've already become your regular customer, haha♪」

@move_f f=iris@kanasimi body=oiran in=r t=300

[Elise]「Uh... You raffish man, being a regular customer at a brothel is pretty common.」

@bs f=iris@bisyo op2=onpu

[Elise]「However... If you're willing to spend much, much more money on me today...」

[Playboy]「Wow, you are so imperious... Ahah♪ But I understand, that's all the charm of domineering Queen Elise ～♪」

@move_f f=iris@bisyo out=r t=300

;; Effect ■ Darkness
@fade type=out t=1000 wt=1
@wait t=1000
@fade type=in t=1000 wt=1
