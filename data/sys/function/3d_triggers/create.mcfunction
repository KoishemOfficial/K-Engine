$data merge storage k-e:3d_triggers {$(node):{id:$(node),$(input),pos:"$(pos)",filter:"$(filter)",offset:3}}

scoreboard objectives add K-Engine.3d_triggers dummy

$execute if function root:api/debug/if_debug run function sys:3d_triggers/private/_spawn_display with storage k-e:3d_triggers $(node)
$function sys:3d_triggers/private/_calculate with storage k-e:3d_triggers $(node)
$function sys:3d_triggers/private/_spawn_anchor with storage k-e:3d_triggers $(node)

$execute unless data storage k-e:3d_triggers node_list.data[{entry:"$(node)"}] run data modify storage k-e:3d_triggers node_list.data append value {entry:"$(node)"}

$scoreboard players set K-Engine.3d_triggers.$(node).triggered K-Engine.3d_triggers 0

$function sys:hooks/pop_node {sys:"3d_triggers",node:$(node)}

$function sys:flush/log {sys:"3d_triggers", node:"$(node)"}

$function root:api/debug/message/success {sys:"3d_triggers", message:"Created node: $(node)"}