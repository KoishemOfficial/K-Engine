$data remove storage k-e:dialogue_queue $(node)

$scoreboard players reset K-Engine.dialogue_queue.$(node).size K-Engine.dialogue_queue
$scoreboard players reset K-Engine.dialogue_queue.$(node).index K-Engine.dialogue_queue


$function sys:hooks/emit {sys:dialogue_queue,hook:delete,node:$(node)}

$function sys:gc/pop {sys:dialogue_queue,node:$(node)}