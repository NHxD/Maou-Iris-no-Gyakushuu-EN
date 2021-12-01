
;; ★Diesel Mine "RPG4 Planning"
;; ■ Sub-event 4: Guard: First stage

;; Background ■ Prison

;; Situation ■ The guards first appear after Iris awakes

@bgm f=Scene2
[Elise] (I hear footsteps... the guard is coming this way. I can't use magic so I must tread very carefully...)

@route id=4 route=l:8 wt=1
@dir id=4 dir=u
@wait t=500

[Jailer]「Oh, you're awake already? I'm the sole guard of this prison and... I can't help but laugh at how the Devil can be so cute! Hehehe...」

@huki b=8 wt=1

@move_f f=iris@ikari body=hadaka-kubiwa in=r t=300
[Elise]「Hah. You better stop believing that you could keep me locked up in here forever.」

@huki id=4 b=8 wt=1

[Jailer]「Heh? You keep running your cheeky mouth of yours even though you've already been caught.」
[Jailer]「And you can't escape... If you dare try to use magic even once, you will be instantly electrocuted. Hehe.」

[Jailer]「So, don't resist or you might die! Ahahaha!」

@bs f=iris@kuyasii

[Elise]「Tsk...really, uh? It's gonna be tough.」

[Jailer]「I'll make sure to pay you a visit whenever I'm on patrol. So get ready... Hehehe.」

;; Situation ■ The guard opens the prison key and enters inside.

@route id=4 route=r:3 wt=1
@dir id=4 dir=u
@wait t=500
@huki id=4 b=3 wt=1

[Jailer]「And...hehehe... To think that the Devil is such a beautiful girl. I'll love you very much.」

@se f=Open3 vol=90
@switches id=210 val=1
@wait t=1000
@dir dir=r
@route id=4 route=u:4 wt=1
@dir id=4 dir=l
@wait t=500
@huki b=8 wt=1
@bs f=iris@ikari

[Elise]「So what if the prisoner is a pretty girl? That doesn't give you the right to abuse your authority. Tsk.」

@wait t=500
@bs f=iris@kuyasii

[Elise] (This might be the opportunity to get out of here... If I can manage to escape from this cell then beat up the guard...)

[Jailer]「Hey, don't even think about escaping from this cell. You can't go back upstairs without my key. Hehehe.」

[Jailer]「And, as long as you wear that collar, you cannot hurt me! Hehehehe!」

@move_f f=iris@kuyasii out=r t=300
