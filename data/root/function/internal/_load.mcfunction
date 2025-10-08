# Initialize scoreboards
scoreboard objectives add K-Engine dummy
scoreboard objectives add K-Engine.on_boot minecraft.custom:minecraft.leave_game

execute unless score K-Engine.Debug.toggle K-Engine matches 0.. run scoreboard players set K-Engine.Debug.toggle K-Engine 0

# Clear the devmenu shortcuts
data remove storage k-e:bind_menu action

# Module redirection
function sys:inputs/private/_load

# Redirect to the src
function src:on_load
function src:config