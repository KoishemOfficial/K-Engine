$execute store result storage k-e:trigger3d $(node).pos_x double 1 run data get entity @n[tag=K-Engine.trigger3d.$(node).anchor] Pos[0]
$execute store result storage k-e:trigger3d $(node).pos_y double 1 run data get entity @n[tag=K-Engine.trigger3d.$(node).anchor] Pos[1]
$execute store result storage k-e:trigger3d $(node).pos_z double 1 run data get entity @n[tag=K-Engine.trigger3d.$(node).anchor] Pos[2]

$function sys:trigger3d/private/_export with storage k-e:trigger3d $(node)