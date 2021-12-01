
;; ● True Demon King Route (Fighting back to the hero)

@bgm f=Scene2

@mes_win back=1 pos=1

\fw:\m『... NGH?! ... TO DRIVE GOD TO THIS POINT.\n\mSUCH INSOLENCE!』

@mes_win back=0 pos=2
@move_f f=iris@kuyasii in=r t=300

[Elise]「... Ah... Ah... J-Just... a little... more...... B-But I'm running out of... mana...」

@mes_win back=1 pos=1

\fw:\m『GOD IS IMMORTAL! BURN! NOVA THUNDER ARMAGEDDON!』

@mes_win back=0 pos=2
@move_f f=iris@kuyasii out=r t=150
; REMOVED
;@anime id=1 num=125
; NEW
@anime id=1 num=125 wt=0
; NEW
@wait t=1500
; NEW
@anime id=1 num=79 wt=0
; NEW
@wait t=300
; NEW
@anime id=1 num=511
@qk t=500

[Elise]「Arghhhhh!!!」

@se f=床にドサッ
@change num=1
@wait t=1000
@mes_win back=1 pos=1

\fw:\m『DEVIL, GIVE UP THIS POINTLESS STRUGGLE...\n\mALL YOUR EFFORTS ARE FUTILE FOR I AM IMMORTAL.\n\mNOW, ACCEPT YOUR DEATH.』

@mes_win back=0 pos=2

@huki b=8

[Elise]「Ngh...」

[Elise] (Dammit! I'm the Devil... How can I lie on the ground like this...)

@mes_win back=1 pos=1
@anime id=1 num=120

\fw:\m『... THIS IS THE END!!!』

@mes_win back=0 pos=2
@huki id=9 b=1

[Chiot]「Elise!!!」

@bgm
@huki b=8
@ev f=AP@Black2

[Elise] (......... Ngh, I... have... no more... strength... left...)

; NEW
@fade type=out t=2000

@mes_win back=1 pos=1

; NEW
@wait t=1500

\fw:\m『Fufu～ This is not like you, Elise.』

@ev
@mes_win back=0 pos=2

[Elise]「... Uh...?! Who...?」

@mes_win back=1 pos=1

; NEW
@fade type=in t=1000

\fw:\m『WHAT IS THIS?\n\mWHERE DOES ALL THIS POWER COME FROM?!』

@mes_win back=0 pos=2
@se f=Saint8
@flash t=500
@move_f f=sion@ikari1s body=normals in=l t=300

[Chiot]「Everyone in the world... humans, demons, animals... everyone! Please lend your strength to Elise!」

@move_f f=sion@ikari1 out=l t=300

@anime num=0701 wt=0
@move_f f=sakuya@emi opacity=125 in=r t=300

[Sakuya]『... Just little more... Get up!』


@anime num=51 wt=0
@move_f f=zexy@syuuti opacity=125 in=l t=300

[Zekushi]『I don't like this... but I entrust all our hopes and dreams to you...!』

@anime num=53 wt=0
@move_f f=sonia@ikari opacity=175 type=in new=1 ox=-50 mx=50

[Sonia]『All our feelings... are with you!』

; REMOVED
;@falsh t=100
; NEW
@flash t=100
@bs t=100
@anime num=52 wt=0
@change num=0 wt=0
@dir dir=d wt=0

; NEW
@c_jump wt=0

@wait t=1000

@huki id=7
@move_f f=iris@kuyasii in=r t=300

[Elise]「This is so humiliating. I'm supposed to be the embodiment of absolute destruction and fear.」
[Elise]「But now, I'm being helped by those weak humans... no, by every living things in this world.」

@bgm f=Battle3
@bs f=iris@reisyo

[Elise]「Tsk... fine. If this can help me defeat that annoying God who just humiliated me...\nThen I can definitely put up with this.」

@move_f f=iris@reisyo out=r t=300

@move_f f=sion@tere2s body=normals in=l t=300

[Chiot]「... I think it'd be okay to be honest with your feelings for once and thank everyone... But Elise will never chan―」

@move_f f=iris@odoroki_hoho in=r t=300

[Elise]「―Zip it! You're too noisy... I'll save the world, isn't that enough?!」

@move_f f=sion@tere out=l t=300
@dir dir=u
@bs f=iris@reisyo

[Elise]「Well, you've been quite patient, God. Are you perhaps frightened by my newfound strength?」

@mes_win back=1 pos=1

@anime id=1 num=120
@anime id=1 num=98 wt=0

\fw:\m『THE WHOLE WORLD LENDING THEIR POWER TO THE DEVIL, THE ENEMY OF THE WORLD? VERY WELL, THEN.\n\mGOD SHALL RETURN EVERYTHING TO NOTHING.』

@mes_win back=0 pos=2

; REMOVED
;@bs f=iris@takawarai_z body_op=z
; NEW
@zoom_f f=iris@takawarai_z src=iris@reisyo in=r t=300

[Elise]「Hehe～Ohohoho～♪ Do you really think that you can defeat me now? It's time for YOU to disappear forever!」

; REMOVED
;@move_f f=iris@takawarai_z out=r t=150
; NEW
@move_f f=iris@takawarai_z body_op=z out=r t=150

;; Battle again
