$execute store result storage k-e:3d_triggers $(node).pos_x double 1 run data get entity @n[tag=K-Engine.3d_triggers.$(node).anchor] Pos[0]
$execute store result storage k-e:3d_triggers $(node).pos_y double 1 run data get entity @n[tag=K-Engine.3d_triggers.$(node).anchor] Pos[1]
$execute store result storage k-e:3d_triggers $(node).pos_z double 1 run data get entity @n[tag=K-Engine.3d_triggers.$(node).anchor] Pos[2]

$function sys:3d_triggers/private/_export with storage k-e:3d_triggers $(node)