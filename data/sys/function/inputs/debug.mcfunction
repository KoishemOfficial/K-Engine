data modify storage k-e:inputs trigger.w set value "gray"
execute if entity @s[predicate=sys:inputs/w] run data modify storage k-e:inputs trigger.w set value "green"
execute if entity @s[tag=K-Engine.inputs.w_lock] run data modify storage k-e:inputs trigger.w set value "red"

data modify storage k-e:inputs trigger.a set value "gray"
execute if entity @s[predicate=sys:inputs/a] run data modify storage k-e:inputs trigger.a set value "green"
execute if entity @s[tag=K-Engine.inputs.a_lock] run data modify storage k-e:inputs trigger.a set value "red"

data modify storage k-e:inputs trigger.s set value "gray"
execute if entity @s[predicate=sys:inputs/s] run data modify storage k-e:inputs trigger.s set value "green"
execute if entity @s[tag=K-Engine.inputs.s_lock] run data modify storage k-e:inputs trigger.s set value "red"

data modify storage k-e:inputs trigger.d set value "gray"
execute if entity @s[predicate=sys:inputs/d] run data modify storage k-e:inputs trigger.d set value "green"
execute if entity @s[tag=K-Engine.inputs.d_lock] run data modify storage k-e:inputs trigger.d set value "red"

data modify storage k-e:inputs trigger.jump set value "gray"
execute if entity @s[predicate=sys:inputs/jump] run data modify storage k-e:inputs trigger.jump set value "green"
execute if entity @s[tag=K-Engine.inputs.jump_lock] run data modify storage k-e:inputs trigger.jump set value "red"

data modify storage k-e:inputs trigger.crouch set value "gray"
execute if entity @s[predicate=sys:inputs/crouch] run data modify storage k-e:inputs trigger.crouch set value "green"
execute if entity @s[tag=K-Engine.inputs.crouch_lock] run data modify storage k-e:inputs trigger.crouch set value "red"

data modify storage k-e:inputs trigger.sprint set value "gray"
execute if entity @s[predicate=sys:inputs/sprint] run data modify storage k-e:inputs trigger.sprint set value "green"
execute if entity @s[tag=K-Engine.inputs.sprint_lock] run data modify storage k-e:inputs trigger.sprint set value "red"

data modify storage k-e:inputs trigger.slot0 set value "gray"
execute if entity @s[predicate=sys:inputs/slot0] run data modify storage k-e:inputs trigger.slot0 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot0_lock] run data modify storage k-e:inputs trigger.slot0 set value "red"

data modify storage k-e:inputs trigger.slot1 set value "gray"
execute if entity @s[predicate=sys:inputs/slot1] run data modify storage k-e:inputs trigger.slot1 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot1_lock] run data modify storage k-e:inputs trigger.slot1 set value "red"

data modify storage k-e:inputs trigger.slot2 set value "gray"
execute if entity @s[predicate=sys:inputs/slot2] run data modify storage k-e:inputs trigger.slot2 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot2_lock] run data modify storage k-e:inputs trigger.slot2 set value "red"

data modify storage k-e:inputs trigger.slot3 set value "gray"
execute if entity @s[predicate=sys:inputs/slot3] run data modify storage k-e:inputs trigger.slot3 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot3_lock] run data modify storage k-e:inputs trigger.slot3 set value "red"

data modify storage k-e:inputs trigger.slot4 set value "gray"
execute if entity @s[predicate=sys:inputs/slot4] run data modify storage k-e:inputs trigger.slot4 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot4_lock] run data modify storage k-e:inputs trigger.slot4 set value "red"

data modify storage k-e:inputs trigger.slot5 set value "gray"
execute if entity @s[predicate=sys:inputs/slot5] run data modify storage k-e:inputs trigger.slot5 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot5_lock] run data modify storage k-e:inputs trigger.slot5 set value "red"

data modify storage k-e:inputs trigger.slot6 set value "gray"
execute if entity @s[predicate=sys:inputs/slot6] run data modify storage k-e:inputs trigger.slot6 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot6_lock] run data modify storage k-e:inputs trigger.slot6 set value "red"

data modify storage k-e:inputs trigger.slot7 set value "gray"
execute if entity @s[predicate=sys:inputs/slot7] run data modify storage k-e:inputs trigger.slot7 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot7_lock] run data modify storage k-e:inputs trigger.slot7 set value "red"

data modify storage k-e:inputs trigger.slot8 set value "gray"
execute if entity @s[predicate=sys:inputs/slot8] run data modify storage k-e:inputs trigger.slot8 set value "green"
execute if entity @s[tag=K-Engine.inputs.slot8_lock] run data modify storage k-e:inputs trigger.slot8 set value "red"

function sys:inputs/private/_debug with storage k-e:inputs trigger