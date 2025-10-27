$data merge storage k-e:dialogue {$(node):{id:$(node),import:$(import),index:0}}

scoreboard objectives add K-Engine.dialogue dummy

$function sys:dialogue/private/_pull_type with storage k-e:dialogue $(node)

$function sys:flush/log {sys:dialogue, node:"$(node)"}

$function root:api/debug/message/success {sys:"dialogue", message:"Created node: $(node)"}