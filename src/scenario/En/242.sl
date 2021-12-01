
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ visitor (Iris)
;; Background ■ Main room of the play area

@huki id=1 b=1 wt=1
@bgm f=Dungeon1

[Brothel's Owner]「This...this is really... Welcome!」

@huki id=4 b=8 wt=1

[Samurai]「... Yes. This girl. I give you 300 taels of silver to buy her and take her to the castle. Do we have a deal?」

@huki id=1 b=1 wt=1

[Brothel's Owner]「Then... Are you... Are you going to take her to \$ENEMY[17]? This is... This is too―」

@huki b=1 wt=1
@move_f f=iris@odoroki body=oiran in=r t=300

[Elise] (Uh... \ENEMY[17]...?! My intuition was indeed correct. Thanks to this man, I'll be able to enter the castle...)

[Samurai]「You don't need to know what I'm going to do with this girl. Just take the money and bring her to the carriage.」

@huki id=1 b=1 wt=1

[Brothel's Owner]「Yes. Yes. I know...」

@huki b=8 wt=1
@bs f=iris@kanasimi
[Elise] (... A carriage? Sakuya could hide in it...)

@bs f=iris@bisyo

[Elise]「Hah. Please give me a moment to adjust my dress.」

@dir dir=r
@move_f f=iris@bisyo out=r t=300
