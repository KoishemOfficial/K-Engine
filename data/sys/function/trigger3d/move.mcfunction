$function root:api/debug/message/success {sys:"trigger3d", message:"Enabled move for the node: $(node)"}

$data modify storage k-e:trigger3d $(node).offset set value $(offset)

$execute unless entity @s[tag=K-Engine.trigger3d.$(node).move] run return run tag @s add K-Engine.trigger3d.$(node).move
$execute if entity @s[tag=K-Engine.trigger3d.$(node).move] run return run tag @s remove K-Engine.trigger3d.$(node).move