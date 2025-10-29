$function sys:dialogue/private/_pull_type with storage k-e:dialogue $(id)

# If text
$execute if score K-Engine.dialogue.$(id).type K-Engine.dialogue matches 0 run function sys:dialogue/private/_pull_text with storage k-e:dialogue $(id)
$execute if score K-Engine.dialogue.$(id).type K-Engine.dialogue matches 0 run function sys:dialogue/private/_convert_text with storage k-e:dialogue $(id)

# If tag
$execute if score K-Engine.dialogue.$(id).type K-Engine.dialogue matches 1 run function sys:dialogue/private/_check_tag with storage k-e:dialogue $(id)
$execute if score K-Engine.dialogue.$(id).type K-Engine.dialogue matches 1 run function sys:dialogue/private/_increment_index with storage k-e:dialogue $(id)

$execute if score K-Engine.dialogue.$(id).index K-Engine.dialogue >= K-Engine.dialogue.$(id).size K-Engine.dialogue run return run function sys:dialogue/private/_clear_temp with storage k-e:dialogue $(id)
$execute unless score K-Engine.dialogue.$(id).index K-Engine.dialogue >= K-Engine.dialogue.$(id).size K-Engine.dialogue run function sys:dialogue/private/_convert with storage k-e:dialogue $(id)