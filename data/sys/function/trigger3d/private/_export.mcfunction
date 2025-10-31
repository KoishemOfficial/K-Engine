$function root:api/debug/message/success {sys:"trigger3d", message:"Exported node: $(id)"}

$tellraw @a {"click_event":{"action":"copy_to_clipboard","value":"function sys:trigger3d/create {node:$(id),input:\"x:$(x),y:$(y),z:$(z)\",pos:\"$(pos_x) $(pos_y) $(pos_z)\",filter:\"$(filter)\"}"}}

$data remove storage k-e:trigger3d $(id).pos_x
$data remove storage k-e:trigger3d $(id).pos_y
$data remove storage k-e:trigger3d $(id).pos_z