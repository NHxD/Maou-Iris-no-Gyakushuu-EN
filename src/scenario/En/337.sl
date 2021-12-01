
;; ★Diesel Mine "RPG4 Planning"
;; ■Sub-event 2: Hypnosis of father in tool shop: 1st stage general purpose

;; ■ Phase 1 general-purpose H scene
;; ■ Do store number/buy tools at tool shop
;; ■ If you choose to store at a tool shop
;;

;; Background ■ Tool shop

@bgm f=field5
@huki id=2 b=3

[Item shop owner]「Hello, Elise. Sorry to bother you, but please, could you look after the shop again?」

@move_f f=iris@kanasimi in=r t=300

[Elise]「Yes, I know.」

@huki b=2

@bs f=iris@kuyasii op2=hatena

[Elise] (Wait... Why did I say that?! I don't have to look after this shop...)

@huki b=7
@bs f=iris@syuuti

[Elise] (Why do I feel like I have to do it... What's happening to me?)

@move_f f=iris@kanasimi out=r t=300

@bgm
