$scoreboard players remove K-Engine.timers.$(node).start_s K-Engine.timers 1
$scoreboard players set K-Engine.timers.$(node).start_t K-Engine.timers 19

$execute if score K-Engine.timers.$(node).start_s K-Engine.timers matches ..-1 if score K-Engine.timers.$(node).start_m K-Engine.timers matches 1.. run function sys:timers/private/_decrement_m {node:$(node)}
