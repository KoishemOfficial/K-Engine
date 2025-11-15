$data remove storage k-e:trigger3d $(node)

$data remove storage k-e:trigger3d node_list.data[{entry:"$(node)"}]

$function sys:hooks/emit {sys:"trigger3d",hook:delete,node:$(node)}

$scoreboard players reset K-Engine.trigger3d.$(node).triggered K-Engine.trigger3d
$scoreboard players reset K-Engine.trigger3d.$(node).triggered_prev K-Engine.trigger3d

$kill @e[tag=K-Engine.trigger3d.$(node).display,type=block_display]
$kill @e[tag=K-Engine.trigger3d.$(node).anchor,type=item_display]

$function sys:gc/pop {sys:"trigger3d",node:$(node)}