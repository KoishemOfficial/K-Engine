$tp @n[tag=K-Engine.3d_triggers.$(id).display,type=block_display] @n[tag=K-Engine.3d_triggers.$(id).anchor,type=item_display]
$execute as @p[tag=K-Engine.3d_triggers.$(id).move] at @s run tp @n[tag=K-Engine.3d_triggers.$(id).anchor,type=item_display] ^ ^ ^$(offset)

$execute if score K-Engine.3d_triggers.$(id).triggered K-Engine.3d_triggers matches 1 if score K-Engine.3d_triggers.$(id).triggered_prev K-Engine.3d_triggers matches 0 run function sys:hooks/emit {sys:"3d_triggers",hook:enter,node:$(id)}
$execute if score K-Engine.3d_triggers.$(id).triggered K-Engine.3d_triggers matches 0 if score K-Engine.3d_triggers.$(id).triggered_prev K-Engine.3d_triggers matches 1 run function sys:hooks/emit {sys:"3d_triggers",hook:exit,node:$(id)}
$scoreboard players operation K-Engine.3d_triggers.$(id).triggered_prev K-Engine.3d_triggers = K-Engine.3d_triggers.$(id).triggered K-Engine.3d_triggers

$execute as @n[tag=K-Engine.3d_triggers.$(id).anchor] at @s as $(filter) if entity @s[dx=$(dx_safe),dy=$(dy_safe),dz=$(dz_safe)] positioned ~-1 ~-1 ~-1 if entity @s[dx=$(dx),dy=$(dy),dz=$(dz)] run return run scoreboard players set K-Engine.3d_triggers.$(id).triggered K-Engine.3d_triggers 1
$scoreboard players set K-Engine.3d_triggers.$(id).triggered K-Engine.3d_triggers 0