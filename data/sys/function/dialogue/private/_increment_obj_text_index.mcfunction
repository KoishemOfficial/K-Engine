$execute store result score K-Engine.dialogue.$(id).obj_text_index K-Engine.dialogue run data get storage k-e:dialogue $(id).obj_text_index 1
$scoreboard players add K-Engine.dialogue.$(id).obj_text_index K-Engine.dialogue 1
$execute store result storage k-e:dialogue $(id).obj_text_index int 1 run scoreboard players get K-Engine.dialogue.$(id).obj_text_index K-Engine.dialogue