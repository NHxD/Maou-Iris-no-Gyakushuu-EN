
;; ● True Demon King Route (Fighting back to the hero)

;;----------------------------------------------
@invisible type=on
@through type=on
@dot_move dir=up x=19 y=7
;;----------------------------------------------
;; Sonia change clothes

;; Change of clothes format
;;*************************************
@through id=10 type=on
@change id=10 f=iris_nowBody num=0
@move_speed id=10 spd=4
;;-------------------------------------
@dot_move id=10 dir=down x=19 y=6
;;*************************************

;; Change of clothes format
;;*************************************
@through id=11 type=on
@change id=11 f=sonia_nowBody num=0
@move_speed id=11 spd=4
;;-------------------------------------
@dot_move id=11 dir=up x=19 y=9
;;*************************************

;; Change of clothes format
;;*************************************
@through id=12 type=on
@change id=12 f=sion num=0
@move_speed id=12 spd=4
;;-------------------------------------
@dot_move id=12 dir=right x=17 y=7
;;*************************************

;; Change of clothes format
;;*************************************
@through id=13 type=on
@change id=13 f=zexy_nowBody num=0
@move_speed id=13 spd=4
;;-------------------------------------
@dot_move id=13 dir=left x=21 y=7
;;*************************************

@fade type=in t=250

@bgm f=dungeon10

@huki id=13 b=8
@move_f f=zexy@odoroki in=l t=300

[Zekushi]「... I never would have thought that one day I'd be saved by the Devil. Or worse, that God would turn out to be like...that.」

@dir id=11 dir=up
@dir id=12 dir=up
@dir id=13 dir=up
@huki id=10 b=8
@move_f f=iris@kuyasii in=r t=300

[Elise]「Well that's Holy God Jervis for you. And he happens to be the most dangerous god among all the gods I know. *sigh*」

@move_f f=zexy@odoroki out=l t=300
@move_f f=sonia@kanasimi in=l t=300

@huki id=11 b=8
[Sonia]「Holy... God?」

@bs f=iris@kanasimi

[Elise]「His sole raison d'être is to banish all that is evil... And to him, it means just about everyone in both the human and demon realms.」

@move_f f=sonia@kanasimi out=l t=300
@move_f f=zexy@odoroki in=l t=300

@huki id=13 b=1
[Zekushi]「No way...?!」

@move_f f=zexy@odoroki out=l t=300
@move_f f=sion@kanasimi in=l t=300

@huki id=12 b=8
[Chiot]「Going against a god... Can we really do this...?」

@bs f=iris@bisyo

[Elise]「Well, there is only one way to kill a god... And that is by using a weapon infused with divine energy.」

@move_f f=sion@kanasimi out=l t=300
@move_f f=sonia@kuyasii in=l t=300

@huki id=11 b=2
[Sonia]「So with it, we could defeat the Holy God? But where could we find such a weapon?」

@bs f=iris@kanasimi

[Elise]「Well, if I could find a source of divine energy, I should be able to channel it into my weapon to turn it into a Divine Blade.」

[Elise]「*sigh* no time for me to rest then, my journey must continue...」

@move_f f=iris@kanasimi out=r t=300
@move_f f=sonia@kuyasii out=l t=300

@huki id=10 b=8
@anime id=10 num=652 wt=0
@wait t=250

@huki id=11 b=1
@huki id=12 b=1
@huki id=13 b=1
@wait t=1000

@move_f f=sonia@odoroki in=l t=300

[Sonia]「Lady Elise?!」

@move_f f=sonia@odoroki out=l t=300

@move_speed id=12 spd=5
@route id=12 route=up
@dir id=12 dir=right wt=0
@dir id=10 dir=left

; NEW
@huki id=10 b=2

@wait t=500

@move_f f=sion@tuujou in=l t=300

[Chiot]「Hey, wait... take me with you! Let's fight God together and make this world...... a world where everyone can live free and happy!」

@move_f f=iris@kuyasii in=r t=300

[Elise]「Bleh, I would absolutely despise this kind of world. But all right, even without your Sacred Sword's power, you can at least be my shield.」

@huki id=10 b=8
@bs f=iris@kanasimi_hoho op2=ase

[Elise] (It feels awkward having to travel with the Hero... who was the one I hated the most only a short while ago...)

@move_f f=sion@tuujou out=l t=300

@move_speed id=11 spd=3
@dir id=10 dir=down wt=0
@dir id=12 dir=down wt=0
@dir id=13 dir=down wt=0
@route id=11 route=up
@dir id=13 dir=left wt=0

@move_f f=sonia@kuyasii in=l t=300

[Sonia]「I want to go, too!」

@huki id=11 b=1
@bs f=iris@kanasimi op2=kyohi

[Elise]「No, you can't, Sonia.」

@bs f=sonia@odoroki op2=kettei

[Sonia]「―Whaaa?! Why...?!!」

@move_f f=sonia@odoroki out=l t=300

@huki id=12 b=8
@move_f f=sion@tuujou in=l t=300

[Chiot]「This will most certainly be a perilous journey. Princess, please stay here and pray for our safe return.」

@huki id=13 b=1
@bs f=iris@bisyo

[Elise]「Zekushi. You look after Sonia, all right? Thanks.」

@move_f f=sion@tuujou out=l t=300

@dir id=13 dir=up

@move_f f=zexy@odoroki in=l t=300

[Zekushi]「―What... me?!」

@huki id=10 b=2
@bs f=iris@ikari_hoho

[Elise]「Do you have any objections?! I wonder who saved your life...」

@huki id=13 b=6
@bs f=zexy@kanasimi_hoho op2=konwaku

[Zekushi]「Ah... Uh... I understand...」

@move_f f=zexy@kanasimi_hoho out=l t=300
@move_f f=iris@ikari_hoho out=r t=300

@route id=11 route=left:2,up

@huki id=11 b=8
@wait t=1000

@move_f f=sonia@kanasimi in=l t=300

[Sonia]「Lord Chiot...」

@move_f f=sion@tuujou in=r t=300

[Chiot]「Don't worry, Princess. I promise you that we will come back safe and sound.」

;; After that, Zexy will be able to work in the brothel.
;; You will be able to move with the princess and Zexy instead of the hero at Demon Castle. (For sub-event handling)

@move_f f=sion@tuujou out=r t=300
@move_f f=sonia@kanasimi out=l t=300

@dir id=10 dir=left wt=0
@dir id=12 dir=right wt=0
@move_f f=iris@bisyo in=r t=300

[Elise]「First, we should gather some information about the divine energy.」

@move_f f=sion@reisei in=l t=300


;; NEW
[Chiot]「There's a town north of Grand Kingdom full of adventurers and magic users, they should know something about it.」
@bs f=iris@bisyo
[Elise]「Sounds good. Let's go.」
@bs f=sion@reisei


[Chiot]「Got it.」

@move_f f=iris@bisyo out=r t=300
@move_f f=sion@reisei out=l t=300

@anime id=10 num=652

@anime id=10 num=653 wt=0
@anime id=12 num=653

@anime id=10 num=304 wt=0
@anime id=12 num=304 wt=0

@wait t=200
@flash t=300
@change id=10 f=null num=0
@change id=12 f=null num=0

;; Iris and Zion leave the castle
;; head to the village
