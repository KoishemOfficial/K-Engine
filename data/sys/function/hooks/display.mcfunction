scoreboard objectives add K-Engine.hooks dummy

$data modify storage k-e:hooks $(sys).temp.command set from storage k-e:hooks $(sys).$(node).data.$(hook)[0].command
$data modify storage k-e:hooks $(sys).temp.sys set value "$(sys)"
$data modify storage k-e:hooks $(sys).temp.hook set value "$(hook)"
$data modify storage k-e:hooks $(sys).temp.node set value "$(node)"

scoreboard players set K-Engine.hooks.list.display_id K-Engine.hooks 0
$execute store result storage k-e:hooks $(sys).temp.display_id int 1 run scoreboard players get K-Engine.hooks.list.display_id K-Engine.hooks
scoreboard players set K-Engine.hooks.list.id K-Engine.hooks 1
$execute store result storage k-e:hooks $(sys).temp.active_id int 1 run scoreboard players get K-Engine.hooks.list.id K-Engine.hooks

$execute store result score K-Engine.hooks.list.size K-Engine.hooks run data get storage k-e:hooks $(sys).$(node).data.$(hook)
scoreboard players add K-Engine.hooks.list.size K-Engine.hooks 1

$function sys:hooks/private/_display with storage k-e:hooks $(sys).temp

$execute unless data storage k-e:hooks $(sys).$(node).data.$(hook)[0] run function sys:hooks/private/_clear_temp {sys:"$(sys)"}

$function root:api/debug/message/success {sys:"hooks", message:"Displaying all $(hook) hooks from $(sys) module"}