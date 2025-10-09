$scoreboard players set K-Engine.schedule.$(node).pause K-Engine.schedule 0

$function sys:hooks/emit {sys:schedule,hook:pause,node:$(node)}

$function root:api/debug/message/success {sys:"schedule", message:"Resumed node: $(node)"}