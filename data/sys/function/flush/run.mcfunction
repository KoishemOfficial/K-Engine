$data modify storage k-e:flush $(sys).node_list.value set from storage k-e:flush $(sys).node_list.data[0].entry
$data modify storage k-e:flush $(sys).sys set value $(sys)

scoreboard players set K-Engine.flush.node_list.id K-Engine 1
$execute store result storage k-e:flush $(sys).node_list.active_id int 1 run scoreboard players get K-Engine.flush.node_list.id K-Engine

$execute store result score K-Engine.flush.node_list.size K-Engine run data get storage k-e:flush $(sys).node_list.data
scoreboard players add K-Engine.flush.node_list.size K-Engine 1

$function sys:flush/private/_run with storage k-e:flush $(sys).node_list

$execute unless data storage k-e:flush $(sys).node_list.data run function sys:flush/private/_clear_temp with storage k-e:flush $(sys)

$function root:api/debug/message/success {sys:"flush", message:"Deleted all $(sys) nodes"}