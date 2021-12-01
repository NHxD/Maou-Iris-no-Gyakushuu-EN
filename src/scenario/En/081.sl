
;; ■ East Island / Pleasure Quarter / Main Room
;; ● Royal Route
;; ● Options: Strive to attack / Become a prostitute
;; Become a prostitute
;; ○ Event occurrence condition: Enter the play area and talk to the receptionist
;; → select "Yes"
;; *The main room for forced movement and play area
;; Branch: In case of non-virgin

@bgm f=Town1

@move_f f=sakuya@metoji_hoho body=hadaka in=l t=300
@move_f f=iris@syuuti_hoho body=hadaka in=r t=300

[Master]「Uh-huh, your bodies look very nice...」

[Master]「What's your name?」

@bs f=sakuya@ikari_hoho

[Sakuya]「My name is Sakuya.」

[Master]「Sakuya, you are slim and your breasts are nicely plump but firm. You have potential to be our number one here.」

[Master]「This one... Are you from abroad? You have a very rare skin complexion...」

@bs f=iris@ikari_hoho

[Elise]「I'm Elise. No matter where I come from. I can be a high-class courtesan, right?」

[Master]「Uh-huh! Of course... You sure are a pretty girl!」

[Master]「Although your breasts are a little small... But I have a couple of wealthy guests who prefer flat chests anyway.」

; REMOVED
;@bs f=iris@kuyasii op2=konwaku
; NEW
@bs f=iris@kuyasii_hoho op2=konwaku

[Elise]「... Your words didn't make me happy at all.」

[Master]「Oh? But you will help me make a lot of money! Hehehe ♥」

[Master]「Great! Qualified! I employ both of you!」

; REMOVED
;@move_f f=iris@kuyasii out=r t=300
; NEW
@move_f f=iris@kuyasii_hoho out=r t=300
@move_f f=sakuya@sumasi_hoho out=l t=300

;; * Get the courtesan costume
