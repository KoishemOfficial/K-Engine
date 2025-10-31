$data modify storage k-e:3d_triggers $(node).offset set value $(offset)

$execute unless entity @s[tag=K-Engine.3d_triggers.$(node).move] run return run tag @s add K-Engine.3d_triggers.$(node).move
$execute if entity @s[tag=K-Engine.3d_triggers.$(node).move] run return run tag @s remove K-Engine.3d_triggers.$(node).move