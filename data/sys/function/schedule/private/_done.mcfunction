$scoreboard players operation K-Engine.schedule.$(node).current_delay K-Engine.schedule = K-Engine.schedule.$(node).delay K-Engine.schedule

$function sys:hooks/emit {sys:schedule,hook:done,node:$(node)}