$scoreboard players add K-Engine.timers.$(node).start_s K-Engine.timers 1
$scoreboard players set K-Engine.timers.$(node).start_t K-Engine.timers 0
$execute if score K-Engine.timers.$(node).start_s K-Engine.timers matches 60.. run function sys:timers/private/_increment_m {node:$(node)}