execute if entity @s[type=player] run function root:internal/boot/_check
execute if entity @s[type=player] run function root:internal/devmenu/_check

execute if entity @s[type=player] run function sys:inputs/private/_reset_press

# Redirect to src
function src:as_entity