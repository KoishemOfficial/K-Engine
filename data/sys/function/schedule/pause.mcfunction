$scoreboard players set K-Engine.schedule.$(node).pause K-Engine.schedule 1

$function sys:hooks/emit {sys:schedule,hook:pause,node:$(node)}

$function root:api/debug/message/success {sys:"schedule", message:"Paused node: $(node)"}