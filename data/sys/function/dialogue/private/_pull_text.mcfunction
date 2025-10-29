$data modify storage k-e:dialogue $(id).current_text set from storage k-e:dialogue $(id).import[$(index)]
$data modify storage k-e:dialogue $(id).temp_text set from storage k-e:dialogue $(id).current_text
$data modify storage k-e:dialogue $(id).temp_text.text set string storage k-e:dialogue $(id).current_text.text 0 $(step)

$execute store result score K-Engine.dialogue.$(id).len K-Engine.dialogue run data get storage k-e:dialogue $(id).import[$(index)].text
$execute store result storage k-e:dialogue $(id).len int 1 run scoreboard players get K-Engine.dialogue.$(id).len K-Engine.dialogue
$scoreboard players set K-Engine.dialogue.$(id).char K-Engine.dialogue $(step)
$scoreboard players add K-Engine.dialogue.$(id).char K-Engine.dialogue $(step)
$execute store result storage k-e:dialogue $(id).char int 1 run scoreboard players get K-Engine.dialogue.$(id).char K-Engine.dialogue

$data modify storage k-e:dialogue $(id).export_text append value {$(text_index):[]}