
;; ● True Demon King Route (Fighting back to the hero)

;; 38: Victory Iris

@move_speed id=35 spd=5
@move_speed id=10 spd=6
@move_speed id=1 spd=6

@dir_fix id=35 type=on
@se f=風切り音1
@c_jump id=35 y=3
@wait t=500
@dir_fix id=35 type=off


@anime id=35 num=657 wt=0
@route id=35 route=up:5 wt=0

@wait t=100

@se f=風切り音1
@flash t=300
@invisible id=1 type=on
@invisible id=10 type=on

@huki id=35 b=1
@route id=1 route=down wt=0
@route route=down wt=0
@route id=10 route=down,left
@dir id=10 dir=down
@wait t=1200

@se f=Thunder7
@flash t=300
@se f=風切り音1
@invisible id=1 type=off
@invisible id=10 type=off

@huki id=35 b=1
@dir id=35 dir=down
@move_speed id=35 spd=3

@wait t=500


@huki id=35 b=1
@anime id=35 num=666
@dir id=35 dir=left wt=0
@fb id=35 dir=back

@wait t=500

@se f=Blow6
@change id=35 f=zexy_nowBody num=1

@wait t=500

@bgm f=Scene2

@huki id=34 b=7
[Grand Justice]「Ugh... The Chosen One defeated so easily. But, you see, I'm not worried...」

@route id=34 route=right
@dir id=34 dir=up

@huki id=34 b=1
[Grand Justice]「... For the ritual to summon God has now finally been completed!」

@huki id=10 b=1

@move_f f=iris@odoroki in=r t=300

[Elise]「It can't be?!」

@move_f f=iris@odoroki out=r t=300

@move_speed spd=4
@route route=down:2

[Grand Justice]「Hahahaha! O God Almighty! Please accept my sacred body as a humble vessel for your Great Rebirth! Come! Come on now!!!」

@anime id=34 num=667 wt=0
@wait t=1000
@anime id=34 num=669 wt=0
@wait t=200
@change id=34 f=null

@wait t=2000

@move_speed spd=4
@route route=up:4
@wait t=1000

@flash t=500
@se f=地鳴りの音

@huki id=1 b=1
@huki id=10 b=1
@huki id=12 b=1

@dir id=1 dir=up wt=0
@dir id=10 dir=up wt=0
@dir id=12 dir=up

@wait t=100

@flash t=100
@se f=Thunder6
@wait t=100

@flash t=100
@se f=Thunder6
@wait t=100

@route id=12 route=down:5
@dir id=12 dir=up

@move_speed spd=3
@route route=up:2

@flash t=100
@se f=Thunder6
@wait t=100

@flash t=100
@se f=Thunder6
@wait t=100

@move_speed spd=5
@route route=up:2
@wait t=1000

@flash t=100
@se f=Thunder6
@wait t=100

@flash t=100
@se f=Thunder6
@wait t=100

;; God's advent production
;; The Holy God Zevis appears

@c_jump id=34 y=-8
@anime id=34 num=668 wt=0
@wait t=1000
@anime id=34 num=670 wt=0
@wait t=100
@flash t=3000
@dir id=34 dir=left wt=0
@change id=34 f=$BigMonster2
@step_anime id=34 type=on

@huki id=10 b=1
@wait t=1000

@move_speed id=12 spd=3
@move_speed id=10 spd=3

@fb id=12 dir=back wt=0
@route id=10 route=right,up

@wait t=1000

@move_f f=iris@odoroki in=r t=300

[Elise]「Oh, no.... of all of them, it had to be Holy God Jervis! How did he manage to summon such a powerful god anyway...?!」

@move_f f=iris@odoroki out=r t=300

; NEW
@mes_win back=1 pos=1

\fw:\m『BRING FORTH THY HOLY HAMMER OF JUSTICE FOR ALL THAT IS EVIL SHALT BE SMITTEN AND RETURNED TO DUST.』

; NEW
@mes_win back=0 pos=2

;; Event Battle: Holy God (Defeated with 9999 Special Moves in 1 turn)
