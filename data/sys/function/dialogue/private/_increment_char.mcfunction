$execute store result score K-Engine.dialogue.$(id).char K-Engine.dialogue run data get storage k-e:dialogue $(id).char 1
$scoreboard players add K-Engine.dialogue.$(id).char K-Engine.dialogue $(step)
$execute store result storage k-e:dialogue $(id).char int 1 run scoreboard players get K-Engine.dialogue.$(id).char K-Engine.dialogue