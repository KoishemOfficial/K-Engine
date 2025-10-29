$scoreboard players operation K-Engine.dialogue.$(id).current_delay K-Engine.dialogue = K-Engine.dialogue.$(id).delay K-Engine.dialogue
$scoreboard players add K-Engine.dialogue.$(id).display_index K-Engine.dialogue 1
$execute store result storage k-e:dialogue $(id).display_index int 1 run scoreboard players get K-Engine.dialogue.$(id).display_index K-Engine.dialogue