data modify storage k-e:trigger3d node_list.value set from storage k-e:trigger3d node_list.data[0].entry

scoreboard players set K-Engine.trigger3d.node_list.id K-Engine.trigger3d 1
execute store result storage k-e:trigger3d node_list.active_id int 1 run scoreboard players get K-Engine.trigger3d.node_list.id K-Engine.trigger3d

execute store result score K-Engine.trigger3d.node_list.size K-Engine.trigger3d run data get storage k-e:trigger3d node_list.data

function root:api/debug/message/success {sys:"trigger3d", message:"Shown all displays"}

scoreboard players add K-Engine.trigger3d.node_list.size K-Engine.trigger3d 1

function sys:trigger3d/private/_show_block_displays with storage k-e:trigger3d node_list