$scoreboard players set K-Engine.timers.$(node).paused K-Engine.timers 1

$function sys:hooks/emit {sys:timers,hook:pause,node:$(node)}