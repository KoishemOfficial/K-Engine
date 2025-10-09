$function sys:$(sys)/delete {node:$(value)}

$data modify storage k-e:flush $(sys).node_list.value set from storage k-e:flush $(sys).node_list.data[0].entry

scoreboard players add K-Engine.flush.node_list.amount K-Engine.flush 1
$execute store result storage k-e:flush $(sys).node_list.amount int 1 run scoreboard players get K-Engine.flush.node_list.amount K-Engine.flush

$execute store result score K-Engine.flush.node_list.size K-Engine.flush run data get storage k-e:flush $(sys).node_list.data
scoreboard players add K-Engine.flush.node_list.size K-Engine.flush 1

$execute unless score K-Engine.flush.node_list.size K-Engine.flush matches ..1 run function sys:flush/private/_run with storage k-e:flush $(sys).node_list

$execute if score K-Engine.flush.node_list.size K-Engine.flush matches ..1 run function sys:flush/private/_clear_temp {sys:$(sys), amount:$(amount)}