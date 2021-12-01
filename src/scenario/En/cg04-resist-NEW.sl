
; 9 = bandit on the left (of the screen)
; 10 = bandit on the right (of the screen)
; 4 = bandit leader

@clear

@through type=on
@through id=9 type=on
@through id=10 type=on
@through id=4 type=on

; iris counter attacks.
@wait t=100
@huki id=4 b=1 wt=0
@anime id=4 num=38 wt=0
@wait t=50
@anime id=9 num=302 wt=0
@anime id=10 num=302 wt=0
@anime id=4 num=302 wt=0

; bandits back off.
@wait t=100

@dir id=9 dir=d wt=0
@dir id=10 dir=d

@dir_fix id=9 type=on wt=0
@dir_fix id=10 type=on wt=0
@dir_fix id=4 type=on

@c_jump id=9 y=-4 spd=6 wt=0
@c_jump id=10 y=-4 spd=6 wt=0
@c_jump id=4 y=-2 spd=6

@dir_fix id=9 type=off wt=0
@dir_fix id=10 type=off wt=0
@dir_fix id=4 type=off

; iris stands up.
@wait t=30
@change num=0
@dir dir=up wt=0
@c_jump y=-1

; iris gets angry
@huki b=5 wt=1


@through type=off
@through id=9 type=off
@through id=10 type=off
@through id=4 type=off
