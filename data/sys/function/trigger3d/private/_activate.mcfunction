$tp @n[tag=K-Engine.trigger3d.$(id).display,type=block_display] @n[tag=K-Engine.trigger3d.$(id).anchor,type=item_display]
$execute as @p[tag=K-Engine.trigger3d.$(id).move] at @s run tp @n[tag=K-Engine.trigger3d.$(id).anchor,type=item_display] ^ ^ ^$(offset)

$execute if score K-Engine.trigger3d.$(id).triggered K-Engine.trigger3d matches 1 if score K-Engine.trigger3d.$(id).triggered_prev K-Engine.trigger3d matches 0 run function sys:hooks/emit {sys:"trigger3d",hook:enter,node:$(id)}
$execute if score K-Engine.trigger3d.$(id).triggered K-Engine.trigger3d matches 0 if score K-Engine.trigger3d.$(id).triggered_prev K-Engine.trigger3d matches 1 run function sys:hooks/emit {sys:"trigger3d",hook:exit,node:$(id)}
$scoreboard players operation K-Engine.trigger3d.$(id).triggered_prev K-Engine.trigger3d = K-Engine.trigger3d.$(id).triggered K-Engine.trigger3d

$execute as @n[tag=K-Engine.trigger3d.$(id).anchor] at @s as $(filter) if entity @s[dx=$(dx_safe),dy=$(dy_safe),dz=$(dz_safe)] positioned ~-1 ~-1 ~-1 if entity @s[dx=$(dx),dy=$(dy),dz=$(dz)] run return run scoreboard players set K-Engine.trigger3d.$(id).triggered K-Engine.trigger3d 1
$scoreboard players set K-Engine.trigger3d.$(id).triggered K-Engine.trigger3d 0