scoreboard objectives add K-Engine.timers dummy

$data merge storage k-e:timers {$(node):{id:$(node),start:{$(start)},end:{$(end)},repeats:$(repeats),paused:0}}

$function sys:timers/private/_pull {node:$(node)}

$function sys:timers/private/_reverse_check {node:$(node)}

$function sys:gc/log {sys:timers, node:"$(node)"}

$function root:api/debug/message/success {sys:"timers", message:"Created node: $(node)"}