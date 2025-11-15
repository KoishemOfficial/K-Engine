execute store result score K-Engine.dialogue.node_amount K-Engine.gc run data get storage k-e:gc dialogue.node_list.data
execute store result score K-Engine.dialogue_queue.node_amount K-Engine.gc run data get storage k-e:gc dialogue_queue.node_list.data
execute store result score K-Engine.timers.node_amount K-Engine.gc run data get storage k-e:gc timers.node_list.data
execute store result score K-Engine.trigger3d.node_amount K-Engine.gc run data get storage k-e:gc trigger3d.node_list.data
execute store result score K-Engine.ui.node_amount K-Engine.gc run data get storage k-e:gc ui.node_list.data

scoreboard players operation K-Engine.gc.node_amount K-Engine.gc = K-Engine.dialogue.node_amount K-Engine.gc
scoreboard players operation K-Engine.gc.node_amount K-Engine.gc += K-Engine.dialogue_queue.node_amount K-Engine.gc
scoreboard players operation K-Engine.gc.node_amount K-Engine.gc += K-Engine.timers.node_amount K-Engine.gc
scoreboard players operation K-Engine.gc.node_amount K-Engine.gc += K-Engine.trigger3d.node_amount K-Engine.gc
scoreboard players operation K-Engine.gc.node_amount K-Engine.gc += K-Engine.ui.node_amount K-Engine.gc

tellraw @a ["Node amount: ",{"score":{"name":"K-Engine.gc.node_amount","objective":"K-Engine.gc"}}]

scoreboard players reset K-Engine.gc.node_amount K-Engine.gc
scoreboard players reset K-Engine.dialogue.node_amount K-Engine.gc
scoreboard players reset K-Engine.dialogue_queue.node_amount K-Engine.gc
scoreboard players reset K-Engine.timers.node_amount K-Engine.gc
scoreboard players reset K-Engine.trigger3d.node_amount K-Engine.gc
scoreboard players reset K-Engine.ui.node_amount K-Engine.gc

