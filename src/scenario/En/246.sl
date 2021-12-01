
;; ★Diesel Mine "RPG4 Planning"
;; ■ Prostitute event: attracting customers

;; ■ Visitor (Sakuya)
;; Background ■ Main room of the play area

@huki id=1 b=1 wt=1
@bgm f=Dungeon1

[Brothel's Owner]「This...this is really... Welcome!」

@huki id=4 b=8 wt=1

[Samurai]「... Yes. This girl. I give you 300 taels of silver to buy her and take her to the castle. Do we have a deal?」

@huki id=1 b=1 wt=1

[Brothel's Owner]「Then... Are you... Are you really going to take her to the castle? This is... This is too―」

@move_f f=sakuya@sumasi body=oiran in=r t=300

[Sakuya] (... That's it! The boss is so nervous, he must know that oirans brought to castle never return...)

[Samurai]「You don't need to know what I'm going to do with this girl. Just take the money and bring her to the carriage.」

[Brothel's Owner]「Yes. Yes. I know...」

@huki b=8 wt=1
@bs f=sakuya@odoroki

[Sakuya] (... A carriage? Elise could hide in it... Perfect.)

@bs f=sakuya@metoji
[Sakuya] (She may not know Way of Ninja but she can use magic to conceal herself.)

@bs f=sakuya@emi
[Sakuya]「I understand, mister. Please just give me a moment to adjust my make up. ～♪」

@move_f f=sakuya@emi out=r t=300
