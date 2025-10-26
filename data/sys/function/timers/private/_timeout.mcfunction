$function sys:hooks/emit {sys:timers,hook:timeout,node:$(node)}

$execute if score K-Engine.timers.$(node).repeats K-Engine.timers matches 0 run function sys:timers/pause {node:$(node)}
$execute if score K-Engine.timers.$(node).repeats K-Engine.timers matches 1 run function sys:timers/private/_reset {node:$(node)}