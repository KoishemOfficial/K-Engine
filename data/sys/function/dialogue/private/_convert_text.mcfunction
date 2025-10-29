$data modify storage k-e:dialogue $(id).export_text[$(text_index)].$(obj_text_index) append from storage k-e:dialogue $(id).temp_text

$data modify storage k-e:dialogue $(id).temp_text.text set string storage k-e:dialogue $(id).current_text.text 0 $(char)

$function sys:dialogue/private/_increment_char with storage k-e:dialogue $(id)
$execute store result score K-Engine.dialogue.$(id).current_len K-Engine.dialogue run data get storage k-e:dialogue $(id).export_text[$(text_index)].$(obj_text_index)[].text
$scoreboard players operation K-Engine.dialogue.$(id).char_prediction K-Engine.dialogue = K-Engine.dialogue.$(id).current_len K-Engine.dialogue
$scoreboard players operation K-Engine.dialogue.$(id).char_prediction K-Engine.dialogue += K-Engine.dialogue.$(id).step K-Engine.dialogue

$function sys:dialogue/private/_increment_obj_text_index with storage k-e:dialogue $(id)

$execute if score K-Engine.dialogue.$(id).char_prediction K-Engine.dialogue > K-Engine.dialogue.$(id).len K-Engine.dialogue run data modify storage k-e:dialogue $(id).temp_text.text set string storage k-e:dialogue $(id).current_text.text 0 $(len)
$execute if score K-Engine.dialogue.$(id).current_len K-Engine.dialogue = K-Engine.dialogue.$(id).len K-Engine.dialogue run function sys:dialogue/private/_increment_index with storage k-e:dialogue $(id)
$execute if score K-Engine.dialogue.$(id).current_len K-Engine.dialogue = K-Engine.dialogue.$(id).len K-Engine.dialogue run function sys:dialogue/private/_increment_text_index with storage k-e:dialogue $(id)
$execute if score K-Engine.dialogue.$(id).current_len K-Engine.dialogue = K-Engine.dialogue.$(id).len K-Engine.dialogue run function sys:dialogue/private/_reset_obj_text_index with storage k-e:dialogue $(id)
$execute unless score K-Engine.dialogue.$(id).current_len K-Engine.dialogue >= K-Engine.dialogue.$(id).len K-Engine.dialogue run function sys:dialogue/private/_convert_text with storage k-e:dialogue $(id)