$data merge storage k-e:dialogue {$(node):{id:$(node),import:$(import),typing:"return 1",step:1,export_index:0,display_index:0,obj_index:0,text_index:0,obj_text_index:0,tag_index:0,export_display:[{text:""}],export_text:[],export_tag:[]}}

scoreboard objectives add K-Engine.dialogue dummy

$execute store result score K-Engine.dialogue.$(node).size K-Engine.dialogue run data get storage k-e:dialogue $(node).import

$scoreboard players set K-Engine.dialogue.$(node).run K-Engine.dialogue 1

$scoreboard players set K-Engine.dialogue.$(node).export_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).display_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).display_size K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).obj_index K-Engine.dialogue 0

$scoreboard players set K-Engine.dialogue.$(node).text_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).obj_text_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).tag_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).index K-Engine.dialogue 0

$execute store result storage k-e:dialogue $(node).tag_index int 1 run scoreboard players get K-Engine.dialogue.$(node).tag_index K-Engine.dialogue
$execute store result storage k-e:dialogue $(node).index int 1 run scoreboard players get K-Engine.dialogue.$(node).index K-Engine.dialogue
$execute store result storage k-e:dialogue $(node).text_index int 1 run scoreboard players get K-Engine.dialogue.$(node).text_index K-Engine.dialogue
$execute store result storage k-e:dialogue $(node).obj_text_index int 1 run scoreboard players get K-Engine.dialogue.$(node).obj_text_index K-Engine.dialogue

$scoreboard players set K-Engine.dialogue.$(node).step K-Engine.dialogue 1
$execute store result storage k-e:dialogue $(node).step int 1 run scoreboard players get K-Engine.dialogue.$(node).step K-Engine.dialogue

$scoreboard players set K-Engine.dialogue.$(node).pause K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).delay K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).current_delay K-Engine.dialogue 0

$function sys:hooks/pop_node {sys:dialogue,node:$(node)}

$function sys:dialogue/private/_convert with storage k-e:dialogue $(node)

$function sys:flush/log {sys:dialogue, node:"$(node)"}

$function root:api/debug/message/success {sys:"dialogue", message:"Created node: $(node)"}