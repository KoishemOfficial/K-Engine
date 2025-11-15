# Initialize scoreboards
scoreboard objectives add K-Engine.global dummy
scoreboard objectives add K-Engine.on_boot minecraft.custom:minecraft.leave_game

execute unless score K-Engine.Debug.toggle K-Engine.global matches 0.. run scoreboard players set K-Engine.Debug.toggle K-Engine.global 0

data merge storage k-e:global {\
    modules:["dialogue", "dialogue_queue", "trigger3d", "ui", "inputs", "hooks", "gc", "timers"],\
    node_modules:["dialogue", "dialogue_queue", "trigger3d", "ui", "timers"],\
}
# Clear the devmenu shortcuts
data remove storage k-e:bind_menu action

# Redirect to the src
function src:on_load
function src:config