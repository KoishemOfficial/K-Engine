$scoreboard players set K-Engine.dialogue.$(node).actionbar K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).run K-Engine.dialogue 1
$scoreboard players set K-Engine.dialogue.$(node).pause K-Engine.dialogue -1
$scoreboard players set K-Engine.dialogue.$(node).display_size K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).display_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).export_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).obj_index K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).obj_size K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).delay K-Engine.dialogue 0
$scoreboard players set K-Engine.dialogue.$(node).current_delay K-Engine.dialogue 0

$execute store result storage k-e:dialogue $(node).obj_index int 1 run scoreboard players get K-Engine.dialogue.$(node).obj_index K-Engine.dialogue
$execute store result storage k-e:dialogue $(node).export_index int 1 run scoreboard players get K-Engine.dialogue.$(node).export_index K-Engine.dialogue
$execute store result storage k-e:dialogue $(node).display_index int 1 run scoreboard players get K-Engine.dialogue.$(node).display_index K-Engine.dialogue
$execute store result score K-Engine.dialogue.$(node).obj_size K-Engine.dialogue run data get storage k-e:dialogue $(node).export_text

$data modify storage k-e:dialogue $(node).export_display set value [{text:""}]
$data modify storage k-e:dialogue $(node).typing set value "return 1"

$function root:api/debug/message/success {sys:"dialogue", message:"Reset node: $(node)"}