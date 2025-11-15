$data merge storage k-e:trigger3d {$(node):{id:$(node),$(input),pos:"$(pos)",filter:"$(filter)",offset:3}}

scoreboard objectives add K-Engine.trigger3d dummy

$execute if function root:api/debug/if_debug run function sys:trigger3d/private/_spawn_display with storage k-e:trigger3d $(node)
$function sys:trigger3d/private/_calculate with storage k-e:trigger3d $(node)
$function sys:trigger3d/private/_spawn_anchor with storage k-e:trigger3d $(node)

$execute unless data storage k-e:trigger3d node_list.data[{entry:"$(node)"}] run data modify storage k-e:trigger3d node_list.data append value {entry:"$(node)"}

$scoreboard players set K-Engine.trigger3d.$(node).triggered K-Engine.trigger3d 0

$function sys:gc/log {sys:"trigger3d", node:"$(node)"}

$function root:api/debug/message/success {sys:"trigger3d", message:"Created node: $(node)"}