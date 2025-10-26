$data merge storage k-e:caption {$(node):{id:$(node),import:$(import),index:0}}

scoreboard objectives add K-Engine.caption dummy

$function sys:caption/private/_pull_type with storage k-e:caption $(node)

$function sys:flush/log {sys:caption, node:"$(node)"}

$function root:api/debug/message/success {sys:"caption", message:"Created node: $(node)"}