scoreboard objectives add K-Engine.schedule dummy
$scoreboard players set K-Engine.schedule.$(node).delay K-Engine.schedule $(delay)
$scoreboard players set K-Engine.schedule.$(node).current_delay K-Engine.schedule $(delay)
$scoreboard players set K-Engine.schedule.$(node).pause K-Engine.schedule 0

$function sys:flush/log {sys:schedule, node:"$(node)"}

$function root:api/debug/message/success {sys:"schedule", message:"Created node: $(node)"}