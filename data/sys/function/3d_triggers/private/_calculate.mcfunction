# Get scaled sizes (×1000 precision)
$execute store result score K-Engine.3d_triggers.$(id).size_x K-Engine.3d_triggers run data get storage k-e:3d_triggers $(id).x 1000
$execute store result score K-Engine.3d_triggers.$(id).size_y K-Engine.3d_triggers run data get storage k-e:3d_triggers $(id).y 1000
$execute store result score K-Engine.3d_triggers.$(id).size_z K-Engine.3d_triggers run data get storage k-e:3d_triggers $(id).z 1000

# Copy to safe working values
$scoreboard players operation K-Engine.3d_triggers.$(id).dx_safe K-Engine.3d_triggers = K-Engine.3d_triggers.$(id).size_x K-Engine.3d_triggers
$scoreboard players operation K-Engine.3d_triggers.$(id).dy_safe K-Engine.3d_triggers = K-Engine.3d_triggers.$(id).size_y K-Engine.3d_triggers
$scoreboard players operation K-Engine.3d_triggers.$(id).dz_safe K-Engine.3d_triggers = K-Engine.3d_triggers.$(id).size_z K-Engine.3d_triggers

$execute store result storage k-e:3d_triggers $(id).dx double 0.001 run scoreboard players get K-Engine.3d_triggers.$(id).dx_safe K-Engine.3d_triggers
$execute store result storage k-e:3d_triggers $(id).dy double 0.001 run scoreboard players get K-Engine.3d_triggers.$(id).dy_safe K-Engine.3d_triggers
$execute store result storage k-e:3d_triggers $(id).dz double 0.001 run scoreboard players get K-Engine.3d_triggers.$(id).dz_safe K-Engine.3d_triggers

# Subtract 1 block (1000 thousandths)
$scoreboard players remove K-Engine.3d_triggers.$(id).dx_safe K-Engine.3d_triggers 1000
$scoreboard players remove K-Engine.3d_triggers.$(id).dy_safe K-Engine.3d_triggers 1000
$scoreboard players remove K-Engine.3d_triggers.$(id).dz_safe K-Engine.3d_triggers 1000

# Clamp negatives to zero
$execute if score K-Engine.3d_triggers.$(id).dx_safe K-Engine.3d_triggers matches ..-1 run scoreboard players set K-Engine.3d_triggers.$(id).dx_safe K-Engine.3d_triggers 0
$execute if score K-Engine.3d_triggers.$(id).dy_safe K-Engine.3d_triggers matches ..-1 run scoreboard players set K-Engine.3d_triggers.$(id).dy_safe K-Engine.3d_triggers 0
$execute if score K-Engine.3d_triggers.$(id).dz_safe K-Engine.3d_triggers matches ..-1 run scoreboard players set K-Engine.3d_triggers.$(id).dz_safe K-Engine.3d_triggers 0

# Convert back to doubles (dividing by 1000)
$execute store result storage k-e:3d_triggers $(id).dx_safe double 0.001 run scoreboard players get K-Engine.3d_triggers.$(id).dx_safe K-Engine.3d_triggers
$execute store result storage k-e:3d_triggers $(id).dy_safe double 0.001 run scoreboard players get K-Engine.3d_triggers.$(id).dy_safe K-Engine.3d_triggers
$execute store result storage k-e:3d_triggers $(id).dz_safe double 0.001 run scoreboard players get K-Engine.3d_triggers.$(id).dz_safe K-Engine.3d_triggers
