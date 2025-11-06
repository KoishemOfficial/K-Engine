$data remove storage k-e:dialogue_queue $(node)

$scoreboard players reset K-Engine.dialogue_queue.$(node).size K-Engine.dialogue_queue
$scoreboard players reset K-Engine.dialogue_queue.$(node).index K-Engine.dialogue_queue

$function sys:hooks/emit {sys:dialogue,hook:delete,node:$(node)}

$function sys:flush/pop {sys:dialogue,node:$(node)}