
;; ■ Small Village / Inn

@wait t=1000

@bgm f=bgm02

@move_f f=iris@bisyo in=r t=300

[Elise]「What do you want?」

[Resident]「My apologies for waking you up.」

[Resident]「Actually, our village chief has invited you to come over to his house.」

[Resident]「He has something to discuss with you.」

@bs f=iris@kanasimi

[Elise]「What is it about?」

[Resident]「Sorry, I don't know the details. Could you pay him a visit?」

@move_f f=iris@kanasimi out=r t=300

;; If the map was created, change the navigation below
