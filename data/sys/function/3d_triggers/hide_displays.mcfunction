data modify storage k-e:3d_triggers node_list.value set from storage k-e:3d_triggers node_list.data[0].entry

scoreboard players set K-Engine.3d_triggers.node_list.id K-Engine.3d_triggers 1
execute store result storage k-e:3d_triggers node_list.active_id int 1 run scoreboard players get K-Engine.3d_triggers.node_list.id K-Engine.3d_triggers

execute store result score K-Engine.3d_triggers.node_list.size K-Engine.3d_triggers run data get storage k-e:3d_triggers node_list.data

function root:api/debug/message/success {sys:"3d_triggers", message:"Hid all displays"}

scoreboard players add K-Engine.3d_triggers.node_list.size K-Engine.3d_triggers 1

function sys:3d_triggers/private/_hide_block_displays with storage k-e:3d_triggers node_list