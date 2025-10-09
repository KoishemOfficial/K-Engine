$data remove storage k-e:schedule $(node)

$scoreboard players reset K-Engine.schedule.$(node).current_delay K-Engine.schedule
$scoreboard players reset K-Engine.schedule.$(node).delay K-Engine.schedule
$scoreboard players reset K-Engine.schedule.$(node).pause K-Engine.schedule

$function sys:hooks/emit {sys:schedule,hook:delete,node:$(node)}

$function sys:flush/pop {sys:schedule,node:$(node)}