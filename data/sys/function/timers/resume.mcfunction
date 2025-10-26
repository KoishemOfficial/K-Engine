$scoreboard players set K-Engine.timers.$(node).paused K-Engine.timers 0

$function sys:hooks/emit {sys:timers,hook:resume,node:$(node)}