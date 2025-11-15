scoreboard objectives add K-Engine.dialogue_queue dummy

$data merge storage k-e:dialogue_queue {$(node):{id:$(node),queue:[$(queue)]}}

$execute store result score K-Engine.dialogue_queue.$(node).size K-Engine.dialogue_queue run data get storage k-e:dialogue_queue $(node).queue 
$scoreboard players remove K-Engine.dialogue_queue.$(node).size K-Engine.dialogue_queue 1

$scoreboard players set K-Engine.dialogue_queue.$(node).index K-Engine.dialogue_queue 0
$execute store result storage k-e:dialogue_queue $(node).index int 1 run scoreboard players get K-Engine.dialogue_queue.$(node).index K-Engine.dialogue_queue

$data modify storage k-e:dialogue_queue $(node).current_value set from storage k-e:dialogue_queue $(node).queue[0]

$function sys:gc/log {sys:dialogue_queue, node:"$(node)"}

$function root:api/debug/message/success {sys:"dialogue_queue", message:"Created list: $(node)"}