
;; ■ East Island / Mad City
;; ● Royal Route
;; ● Options: Strive to attack / Become a prostitute
;; ○ Attack with all your might

@bgm f=dungeon2

@move_f f=iris@kougeki1 in=r t=300

[Elise]「Well... I don't like this plan. Let's do a direct assault.」

@move_f f=sakuya@metoji in=l t=300

[Sakuya]「... It seems to be no use persuading you... Go to \$LOCATION[Castle Gate], and we can attack directly.」

@bs f=sakuya@kanasimi

[Sakuya]「However, do not be reluctant to change your mind and disguise as oiran.」

@move_f f=sakuya@kanasimi out=l t=300
@move_f f=iris@kougeki1 out=r t=300

;; → free action
