; UNUSED: "149_1" and "149_2" are used instead.

;; ■ Forest
;; ● Royal Route
;; ● Demon King Route (If you choose Dominate the World)

;; head to the forest

@bgm f=Theme1

@move_f f=iris@bisyo in=r t=300

[Elise]「There should be enough space here...」

@bs f=iris@kougeki2

@mes_win back=1 pos=1

\fw:\mCOME ON OUT, DEMONS!\n\mHEED THE CALL OF YOUR OVERLORD, DEVIL IBLIS!

@mes_win back=0 pos=2

;; Demon Summoning
;; Multiple demons appear one after another

@bs f=iris@emi_hoho

[Elise]「Ohohoho～♪ It seems that I fully recovered all my mana with so many Greater Demons answering my call. Unlike my previous attempt...ahah.」

[Demons]「Ah, that was because―」

@bs f=iris@reisyo

[Elise]「―I know, demons. Power is everything to demons. And now, I have that power once again.」

[Elise]「But know that I will have you demons work hard to destroy the Royal Capital. Isn't it great?」

[Demons]「Of course, Overlord Iblis!」

@bs f=iris@bisyo

[Elise]「Let's invade the Royal Capital until it's completely under my control! Hm... Speaking of which, Sonia must still be in that city...」

@bs f=iris@emi

[Elise]「Well, it's regretful but she's the princess of that country but her fate is sealed with it.」

@bs f=iris@kougeki1

[Elise]「Come on, demons! To the Royal Capital!」

[Demons]「Awoohohohoh!!」

@move_f f=iris@kougeki1 out=r t=300

;; Below, the battle
;; Demon King who attacks the royal capital
;; Proceed through the castle while defeating the Holy Knight
