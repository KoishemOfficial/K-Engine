$scoreboard players add K-Engine.dialogue.$(id).obj_index K-Engine.dialogue 1
$execute store result storage k-e:dialogue $(id).obj_index int 1 run scoreboard players get K-Engine.dialogue.$(id).obj_index K-Engine.dialogue

$scoreboard players set K-Engine.dialogue.$(id).display_index K-Engine.dialogue 0
$execute store result storage k-e:dialogue $(id).display_index int 1 run scoreboard players get K-Engine.dialogue.$(id).display_index K-Engine.dialogue

$data modify storage k-e:dialogue $(id).export_display append from storage k-e:dialogue $(id).export_text[$(obj_index)].$(display_index)[]
$function sys:dialogue/private/_pre_append with storage k-e:dialogue $(id)

$function sys:hooks/emit {sys:dialogue,hook:$(export_index),node:$(id)}

$scoreboard players add K-Engine.dialogue.$(id).export_index K-Engine.dialogue 1
$execute store result storage k-e:dialogue $(id).export_index int 1 run scoreboard players get K-Engine.dialogue.$(id).export_index K-Engine.dialogue