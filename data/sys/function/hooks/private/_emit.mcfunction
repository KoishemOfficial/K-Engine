$execute run $(command)

scoreboard players add K-Engine.hooks.list.id K-Engine.hooks 1
$execute store result storage k-e:hooks $(sys).temp.active_id int 1 run scoreboard players get K-Engine.hooks.list.id K-Engine.hooks

$data modify storage k-e:hooks $(sys).temp.command set from storage k-e:hooks $(sys).$(node).data.$(hook)[$(active_id)].command

$execute unless score K-Engine.hooks.list.id K-Engine.hooks >= K-Engine.hooks.list.size K-Engine.hooks run function sys:hooks/private/_emit with storage k-e:hooks $(sys).temp

$execute if score K-Engine.hooks.list.id K-Engine.hooks >= K-Engine.hooks.list.size K-Engine.hooks run function sys:hooks/private/_clear_temp {sys:$(sys)}