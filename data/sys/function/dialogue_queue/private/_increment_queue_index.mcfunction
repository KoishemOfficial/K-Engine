$scoreboard players add K-Engine.dialogue_queue.$(id).index K-Engine.dialogue_queue 1
$execute store result storage k-e:dialogue_queue $(id).index int 1 run scoreboard players get K-Engine.dialogue_queue.$(id).index K-Engine.dialogue_queue

$function sys:dialogue/private/_pull_queue_value with storage k-e:dialogue_queue $(id)