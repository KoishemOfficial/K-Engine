execute if entity @s[predicate=sys:inputs/w,tag=!K-Engine.inputs.w_lock] run return run tag @s add K-Engine.inputs.w_triggered
execute if entity @s[predicate=sys:inputs/a,tag=!K-Engine.inputs.a_lock] run return run tag @s add K-Engine.inputs.a_triggered
execute if entity @s[predicate=sys:inputs/s,tag=!K-Engine.inputs.s_lock] run return run tag @s add K-Engine.inputs.s_triggered
execute if entity @s[predicate=sys:inputs/d,tag=!K-Engine.inputs.d_lock] run return run tag @s add K-Engine.inputs.d_triggered
execute if entity @s[predicate=sys:inputs/jump,tag=!K-Engine.inputs.jump_lock] run return run tag @s add K-Engine.inputs.jump_triggered
execute if entity @s[predicate=sys:inputs/crouch,tag=!K-Engine.inputs.crouch_lock] run return run tag @s add K-Engine.inputs.crouch_triggered
execute if entity @s[predicate=sys:inputs/sprint,tag=!K-Engine.inputs.sprint_lock] run return run tag @s add K-Engine.inputs.sprint_triggered