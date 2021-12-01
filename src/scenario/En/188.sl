
;; ● True Demon King Route (Fighting back to the hero)

;; Arrive at the harbor

@fb dir=for num=2
@dir dir=down

@bgm f=bgm01

@move_f f=sion@tuujou in=l t=300

[Chiot]「It looks like we'll need to board a ship to reach that island.」

@move_f f=iris@bisyo in=r t=300

[Elise]「Indeed... or a giant squid.」

; NEW
;@bs f=sion@taida

[Chiot]「Uh?!」

; REMOVED
;@move_f f=sion@tuujou out=l t=300
; NEW
@move_f f=sion@taida out=l t=300
@move_f f=iris@bisyo out=r t=300
@route route=down:2
@dir dir=left

@huki b=2
@move_f f=iris@bisyo in=r t=300

[Elise]「Well, we're heading to the eastern island, can you take us there?」

@move_f f=iris@bisyo out=r t=300

[Captain]「Aye, this here ship can brin' ye to the eastern island. Ye need \$CURRENCY[500G], 'op in?」


;; Choices: Ride / Stop for now
