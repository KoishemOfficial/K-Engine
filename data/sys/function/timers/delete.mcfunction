$data remove storage k-e:timers $(node)

$scoreboard players reset K-Engine.timers.$(node).start_h K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).start_m K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).start_s K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).start_t K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).end_h K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).end_m K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).end_s K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).end_t K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).repeats K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).paused K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).reverse K-Engine.timers

$function sys:hooks/emit {sys:timers,hook:delete,node:$(node)}

$function sys:flush/pop {sys:timers,node:$(node)}