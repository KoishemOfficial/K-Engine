$tellraw @a [{color:"aqua",text:" • "},{color:blue,text:"sys: "},{color:yellow,text:"$(sys)"},{color:white,text:" | "},{color:green,text:"hook: "},{color:yellow,text:"$(hook)"},{color:white,text:" | "},{color:aqua,text:"id: "},{color:yellow,text:"$(display_id)"},{color:white,text:" | "},{color:light_purple,text:"command: "},{color:yellow,text:"$(command)"}]

scoreboard players add K-Engine.hooks.list.display_id K-Engine.hooks 1
$execute store result storage k-e:hooks $(sys).temp.display_id int 1 run scoreboard players get K-Engine.hooks.list.display_id K-Engine.hooks
scoreboard players add K-Engine.hooks.list.id K-Engine.hooks 1
$execute store result storage k-e:hooks $(sys).temp.active_id int 1 run scoreboard players get K-Engine.hooks.list.id K-Engine.hooks

$data modify storage k-e:hooks $(sys).temp.command set from storage k-e:hooks $(sys).$(node).data.$(hook)[$(active_id)].command

$execute unless score K-Engine.hooks.list.id K-Engine.hooks >= K-Engine.hooks.list.size K-Engine.hooks run function sys:hooks/private/_display with storage k-e:hooks $(sys).temp

$execute if score K-Engine.hooks.list.id K-Engine.hooks >= K-Engine.hooks.list.size K-Engine.hooks run function sys:hooks/private/_clear_temp {sys:"$(sys)"}