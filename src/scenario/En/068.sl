
;; ■ East Island / Farm
;; ● Royal Route
;; *Event occurrence conditions: Go to some extent on the map.

@bgm f=dungeon5

@move_f f=iris@bisyo in=r t=300

[Elise]「... Hmmm, the landscape here seems somewhat different than anywhere I've been before...」


@bs f=iris@kanasimi


@route route=up:3 wt=1
@bs f=iris@bisyo

[Elise]「Human, I need directions.」

[Farmer 1]「Eh? Your clothes are so strange... What can I do for you?」

@huki b=2 wt=1

[Elise]「Where is the Royal Capital? Don't tell me THIS is the place...」

@huki id=5 b=2
@bs f=iris@odoroki op2=hatena

[Farmer 1]「Eh? Royal capital? Do you mean the capital city?」

; NEW
@bs f=iris@odoroki op2=konwaku

[Elise]「No, the Royal Capital is... Well, the capital of this country? Haven't you heard about it?」

; NEW
@bs f=iris@odoroki

@dir id=5 dir=r wt=1
@dir id=5 dir=l wt=1
@dir id=5 dir=d wt=1

[Farmer 1]「Hah... I don't know.」

@huki b=8 wt=1

[Elise]「What... Are you serious?」

[Farmer 1]「I really don't know.」

; NEW
@move_f f=iris@odoroki out=r t=300

@route route=down:4 wt=1

; REMOVED
;@bs f=iris@kanasimi op2=konwaku
; NEW
@move_f f=iris@kanasimi op2=konwaku in=r t=300

@huki b=7 wt=1

[Elise]「Ridiculous! I was told that the Royal Capital is somewhere on this continent...」

[Elise]「... Maybe I should try asking someone else.」

@move_f f=iris@kanasimi out=r t=300

;; Talk to the farmers around you
