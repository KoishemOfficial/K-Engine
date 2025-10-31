$tellraw @a [{"click_event":{"action":"copy_to_clipboard","value":"function sys:3d_triggers/create {node:$(id),input:\"x:$(x),y:$(y),z:$(z)\",pos:\"$(pos_x) $(pos_y) $(pos_z)\",filter:\"$(filter)\"}"},"color":"gray","text":"[sys: "},{"color":"#3FA9F5",text:"3d_triggers"},{"color":"gray","text":"] "},{"color":"green","text":"✔ Node $(id) exported successfully!\n"},{"text":"Click the text to copy the function.",color:yellow}]

$data remove storage k-e:3d_triggers $(id).pos_x
$data remove storage k-e:3d_triggers $(id).pos_y
$data remove storage k-e:3d_triggers $(id).pos_z