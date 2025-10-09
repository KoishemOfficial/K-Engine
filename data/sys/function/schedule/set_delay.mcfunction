$scoreboard players set K-Engine.schedule.$(node).delay K-Engine.schedule $(delay)

$function sys:hooks/emit {sys:schedule,hook:set_delay,node:$(node)}

$function root:api/debug/message/success {sys:"schedule", message:"Set delay of $(node) to $(delay)"}