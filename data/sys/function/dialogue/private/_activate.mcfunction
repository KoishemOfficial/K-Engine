$execute if score K-Engine.dialogue.$(id).pause K-Engine.dialogue matches 0.. run return run scoreboard players remove K-Engine.dialogue.$(id).pause K-Engine.dialogue 1

$execute if score K-Engine.dialogue.$(id).obj_index K-Engine.dialogue >= K-Engine.dialogue.$(id).obj_size K-Engine.dialogue run function sys:hooks/emit {sys:dialogue,hook:$(export_index),node:$(id)}
$execute if score K-Engine.dialogue.$(id).obj_index K-Engine.dialogue >= K-Engine.dialogue.$(id).obj_size K-Engine.dialogue run return run scoreboard players set K-Engine.dialogue.$(id).run K-Engine.dialogue 0

$execute unless score K-Engine.dialogue.$(id).display_index K-Engine.dialogue matches -1.. run scoreboard players set K-Engine.dialogue.$(id).display_index K-Engine.dialogue 0
$execute unless score K-Engine.dialogue.$(id).obj_index K-Engine.dialogue matches -1.. run scoreboard players set K-Engine.dialogue.$(id).obj_index K-Engine.dialogue 0
$execute store result score K-Engine.dialogue.$(id).display_size K-Engine.dialogue run data get storage k-e:dialogue $(id).export_text[$(obj_index)]
$execute unless score K-Engine.dialogue.$(id).obj_size K-Engine.dialogue matches ..-1 store result score K-Engine.dialogue.$(id).obj_size K-Engine.dialogue run data get storage k-e:dialogue $(id).export_text
$execute store result storage k-e:dialogue $(id).index int 1 run scoreboard players get K-Engine.dialogue.$(id).index K-Engine.dialogue

$execute if score K-Engine.dialogue.$(id).current_delay K-Engine.dialogue matches -1.. run scoreboard players remove K-Engine.dialogue.$(id).current_delay K-Engine.dialogue 1

$data modify storage k-e:dialogue $(id).export_display[$(export_index)] set from storage k-e:dialogue $(id).export_text[$(obj_index)].$(display_index)[]
 
$execute if score K-Engine.dialogue.$(id).display_index K-Engine.dialogue > K-Engine.dialogue.$(id).display_size K-Engine.dialogue run function sys:dialogue/private/_increment_obj_index with storage k-e:dialogue $(id)
$execute if score K-Engine.dialogue.$(id).current_delay K-Engine.dialogue matches ..-1 run function sys:dialogue/private/_reset_delay with storage k-e:dialogue $(id)