
;; ■ Small Village / Village Chief's House
;; ○ Mob (Village chief)
;; ③ Event occurrence condition: Go to the village mayor's house and talk.

@bgm f=field5

[Village chief]「Oh! Thanks for coming! Welcome! Many thanks for dealing with the monsters yesterday!」

@move_f f=iris@reisyo in=r t=300

[Elise]「The orcs? That was nothing. I killed them just because they got in my way.」

[Village chief]「Oh, you don't need to be so modest.」

@huki id=4 b=1

[Village chief]「Actually, I have a favor to ask. Could you please assist our village once more by capturing the \$ENEMY[Red Orc]?」

@huki b=2
@bs f=iris@kougeki1
[Elise]「Red Orc?」

@huki id=4 b=6

[Village chief]「Yes. Lately, orcs have been breaking into the village at night to abduct our girls. Red Orc is their fearsome leader.」

@huki id=4 b=7

[Village chief]「Some residents are so worried that they stay awake at night to patrol and guard the village. But orcs are simply too strong for our men.」

[Village chief]「Could you please subdue the Red Orc and return the girls to our village?」

@bs f=iris@ikari op2=konwaku

[Elise]「What a pain! I won't do that for you humans.」

@huki id=4 b=1

[Village chief]「How― Please! We'll do anything we can to repay you. Please reconsider.」

@huki b=8
@bs f=iris@kuyasii
[Elise] (Even though he said that, matters concerning humans are none of my business.)

@huki b=9
@bs f=iris@emi op2=denkyu

[Elise] (―Wait... He said that they would pay me anything for doing this task. This could be a good opportunity.)

@huki b=8
@bs f=iris@reisyo

[Elise] (And since this Red Orc is able to lead other orcs, he must be really strong. He could be a great asset if I can take him under my command.)

@huki b=3
@bs f=iris@takawarai

[Elise]「All right, I accept your request. I'll do it!」

@huki id=4 b=1

[Village chief]「Oh! Thank you so much!」

@move_f f=iris@emi out=r t=300

;; Navi: When the map is completed, correct the following lines.
