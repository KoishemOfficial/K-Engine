$data remove storage k-e:dialogue $(node)

$scoreboard players reset K-Engine.dialogue.$(node).len K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).char K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).type K-Engine.dialogue

$scoreboard players reset K-Engine.dialogue.$(node).index K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).text_index K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).obj_text_index K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).tag_index K-Engine.dialogue

$scoreboard players reset K-Engine.dialogue.$(node).current_delay K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).delay K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).display_index K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).pause K-Engine.dialogue

$scoreboard players reset K-Engine.dialogue.$(node).actionbar K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).run K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).display_size K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).export_index K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).obj_index K-Engine.dialogue
$scoreboard players reset K-Engine.dialogue.$(node).obj_size K-Engine.dialogue

$function sys:hooks/emit {sys:dialogue,hook:delete,node:$(node)}

$function sys:flush/pop {sys:dialogue,node:$(node)}