$data merge storage k-e:schedule {$(node):{delay:$(delay),id:$(node)}}

scoreboard objectives add K-Engine.schedule dummy
$scoreboard players set K-Engine.schedule.$(node).delay K-Engine.schedule $(delay)

$function sys:flush/log {sys:"schedule", node:"$(node)"}

$function root:api/debug/message/success {sys:"schedule", message:"Created node: $(node)"}