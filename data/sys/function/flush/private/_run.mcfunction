$function sys:$(sys)/delete {node:$(value)}

scoreboard players add K-Engine.flush.node_list.id K-Engine 1
$execute store result storage k-e:flush $(sys).node_list.active_id int 1 run scoreboard players get K-Engine.flush.node_list.id K-Engine

$data modify storage k-e:flush $(sys).node_list.value set from storage k-e:flush $(sys).node_list.data[$(active_id)].entry

$execute unless score K-Engine.flush.node_list.id K-Engine >= K-Engine.flush.node_list.size K-Engine run function sys:flush/private/_run with storage k-e:flush $(sys)

$execute if score K-Engine.flush.node_list.id K-Engine = K-Engine.flush.node_list.size K-Engine run function sys:flush/private/_clear_temp with storage k-e:flush $(sys)