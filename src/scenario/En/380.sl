
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-events 5 and 6: Prostitutes: Zexy

;; Background ■ House of Prostitute

;; ■ Event occurrence conditions: If Iris has sold herself even once, enter the prostitute's hall
;; ■ If you have sold yourself more than once
;; ■ Event occurrence condition: Find "Prostitute House" on the free map and talk to the receptionist
;; Branch ■ If no one is present

@bgm f=Scene5

@move_f f=iris@kanasimi in=r t=300

[Elise]「Well, unfortunately I don't have anybody to recommend at the moment.」

[Butler]「I see. By the way, how about yourself, ma'am? I believe you would sell for a nice price.」

@huki b=2 wt=1
@bs f=iris@kuyasii

[Elise]「...Me? I don't work for humans... In the worst case scenario, I can sell myself in town.」

[Butler]「I see... That's a shame.」

[Butler]「Well, if you ever find someone to recommend, please come again.」

@move_f f=iris@kuyasii out=r t=300

;; Jump ■ To the map?
