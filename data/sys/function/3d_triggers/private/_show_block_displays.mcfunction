$execute if function root:api/debug/if_debug run function sys:3d_triggers/private/_spawn_display with storage k-e:3d_triggers $(value)

scoreboard players add K-Engine.3d_triggers.node_list.id K-Engine.3d_triggers 1
execute store result storage k-e:3d_triggers node_list.active_id int 1 run scoreboard players get K-Engine.3d_triggers.node_list.id K-Engine.3d_triggers

$data modify storage k-e:3d_triggers node_list.value set from storage k-e:3d_triggers node_list.data[$(active_id)].entry

execute unless score K-Engine.3d_triggers.node_list.id K-Engine.3d_triggers >= K-Engine.3d_triggers.node_list.size K-Engine.3d_triggers run function sys:3d_triggers/private/_show_block_displays with storage k-e:3d_triggers node_list

execute if score K-Engine.3d_triggers.node_list.id K-Engine.3d_triggers = K-Engine.3d_triggers.node_list.size K-Engine.3d_triggers run function sys:3d_triggers/private/_clear_show_temp