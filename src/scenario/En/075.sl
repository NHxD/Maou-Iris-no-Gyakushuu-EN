
;; ■ East Island / Mad City
;; ● Royal Route
;; ● Options: Strive to attack / Become a prostitute
;; Become a prostitute

@bgm f=dungeon10

@move_f f=iris@kanasimi in=r t=300

[Elise]「... Okay. Let's go with plan B and pretend to be whores.」

[Elise]「We sit tight until comes the opportunity to get close to that Stupid General.」

@move_f f=sakuya@bisyo in=l t=300

[Sakuya]「Yes. I think it is best choice.\nGo to \$LOCATION[Outer City] and work as oiran.」

@bs f=sakuya@metoji

[Sakuya]「But... If you change your mind about this plan...」

[Sakuya]「Then go to \$LOCATION[Castle Gate] and attack directly, although I do not recommend this reckless option.」

@move_f f=iris@kanasimi out=r t=300
@move_f f=sakuya@metoji out=l t=300

;; → free action
