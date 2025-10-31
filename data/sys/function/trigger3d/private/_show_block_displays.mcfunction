$execute if function root:api/debug/if_debug run function sys:trigger3d/private/_spawn_display with storage k-e:trigger3d $(value)

scoreboard players add K-Engine.trigger3d.node_list.id K-Engine.trigger3d 1
execute store result storage k-e:trigger3d node_list.active_id int 1 run scoreboard players get K-Engine.trigger3d.node_list.id K-Engine.trigger3d

$data modify storage k-e:trigger3d node_list.value set from storage k-e:trigger3d node_list.data[$(active_id)].entry

execute unless score K-Engine.trigger3d.node_list.id K-Engine.trigger3d >= K-Engine.trigger3d.node_list.size K-Engine.trigger3d run function sys:trigger3d/private/_show_block_displays with storage k-e:trigger3d node_list

execute if score K-Engine.trigger3d.node_list.id K-Engine.trigger3d = K-Engine.trigger3d.node_list.size K-Engine.trigger3d run function sys:trigger3d/private/_clear_show_temp