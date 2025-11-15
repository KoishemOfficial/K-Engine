$data modify storage k-e:gc $(sys).node_list.value set from storage k-e:gc $(sys).node_list.data[0].entry
$data modify storage k-e:gc $(sys).node_list.sys set value $(sys)

scoreboard players set K-Engine.gc.node_list.amount K-Engine.gc 1
$execute store result storage k-e:gc $(sys).node_list.amount int 1 run scoreboard players get K-Engine.gc.node_list.amount K-Engine.gc

$execute store result score K-Engine.gc.node_list.size K-Engine.gc run data get storage k-e:gc $(sys).node_list.data
scoreboard players add K-Engine.gc.node_list.size K-Engine.gc 1

$function sys:gc/private/_run with storage k-e:gc $(sys).node_list

$execute if score K-Engine.gc.node_list.size K-Engine.gc matches ..1 run function sys:gc/private/_clear_temp {sys:"$(sys)", amount:0}