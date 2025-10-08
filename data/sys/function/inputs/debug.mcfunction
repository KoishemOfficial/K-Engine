data modify storage k-e:inputs trigger.w set value "gray"
execute if entity @s[tag=K-Engine.inputs.w_lock] run data modify storage k-e:inputs trigger.w set value "red"
execute if entity @s[tag=K-Engine.inputs.w_triggered] run data modify storage k-e:inputs trigger.w set value "green"

data modify storage k-e:inputs trigger.a set value "gray"
execute if entity @s[tag=K-Engine.inputs.a_lock] run data modify storage k-e:inputs trigger.a set value "red"
execute if entity @s[tag=K-Engine.inputs.a_triggered] run data modify storage k-e:inputs trigger.a set value "green"

data modify storage k-e:inputs trigger.s set value "gray"
execute if entity @s[tag=K-Engine.inputs.s_lock] run data modify storage k-e:inputs trigger.s set value "red"
execute if entity @s[tag=K-Engine.inputs.s_triggered] run data modify storage k-e:inputs trigger.s set value "green"

data modify storage k-e:inputs trigger.d set value "gray"
execute if entity @s[tag=K-Engine.inputs.d_lock] run data modify storage k-e:inputs trigger.d set value "red"
execute if entity @s[tag=K-Engine.inputs.d_triggered] run data modify storage k-e:inputs trigger.d set value "green"

data modify storage k-e:inputs trigger.jump set value "gray"
execute if entity @s[tag=K-Engine.inputs.jump_lock] run data modify storage k-e:inputs trigger.jump set value "red"
execute if entity @s[tag=K-Engine.inputs.jump_triggered] run data modify storage k-e:inputs trigger.jump set value "green"

data modify storage k-e:inputs trigger.crouch set value "gray"
execute if entity @s[tag=K-Engine.inputs.crouch_lock] run data modify storage k-e:inputs trigger.crouch set value "red"
execute if entity @s[tag=K-Engine.inputs.crouch_triggered] run data modify storage k-e:inputs trigger.crouch set value "green"

data modify storage k-e:inputs trigger.sprint set value "gray"
execute if entity @s[tag=K-Engine.inputs.sprint_lock] run data modify storage k-e:inputs trigger.sprint set value "red"
execute if entity @s[tag=K-Engine.inputs.sprint_triggered] run data modify storage k-e:inputs trigger.sprint set value "green"

data modify storage k-e:inputs trigger.slot0 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot0_lock] run data modify storage k-e:inputs trigger.slot0 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot0_triggered] run data modify storage k-e:inputs trigger.slot0 set value "green"

data modify storage k-e:inputs trigger.slot1 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot1_lock] run data modify storage k-e:inputs trigger.slot1 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot1_triggered] run data modify storage k-e:inputs trigger.slot1 set value "green"

data modify storage k-e:inputs trigger.slot2 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot2_lock] run data modify storage k-e:inputs trigger.slot2 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot2_triggered] run data modify storage k-e:inputs trigger.slot2 set value "green"

data modify storage k-e:inputs trigger.slot3 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot3_lock] run data modify storage k-e:inputs trigger.slot3 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot3_triggered] run data modify storage k-e:inputs trigger.slot3 set value "green"

data modify storage k-e:inputs trigger.slot4 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot4_lock] run data modify storage k-e:inputs trigger.slot4 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot4_triggered] run data modify storage k-e:inputs trigger.slot4 set value "green"

data modify storage k-e:inputs trigger.slot5 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot5_lock] run data modify storage k-e:inputs trigger.slot5 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot5_triggered] run data modify storage k-e:inputs trigger.slot5 set value "green"

data modify storage k-e:inputs trigger.slot6 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot6_lock] run data modify storage k-e:inputs trigger.slot6 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot6_triggered] run data modify storage k-e:inputs trigger.slot6 set value "green"

data modify storage k-e:inputs trigger.slot7 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot7_lock] run data modify storage k-e:inputs trigger.slot7 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot7_triggered] run data modify storage k-e:inputs trigger.slot7 set value "green"

data modify storage k-e:inputs trigger.slot8 set value "gray"
execute if entity @s[tag=K-Engine.inputs.slot8_lock] run data modify storage k-e:inputs trigger.slot8 set value "red"
execute if entity @s[tag=K-Engine.inputs.slot8_triggered] run data modify storage k-e:inputs trigger.slot8 set value "green"

function sys:inputs/private/_debug with storage k-e:inputs trigger