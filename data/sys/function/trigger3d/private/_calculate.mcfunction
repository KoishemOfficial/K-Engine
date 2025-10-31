# Get scaled sizes (×1000 precision)
$execute store result score K-Engine.trigger3d.$(id).size_x K-Engine.trigger3d run data get storage k-e:trigger3d $(id).x 1000
$execute store result score K-Engine.trigger3d.$(id).size_y K-Engine.trigger3d run data get storage k-e:trigger3d $(id).y 1000
$execute store result score K-Engine.trigger3d.$(id).size_z K-Engine.trigger3d run data get storage k-e:trigger3d $(id).z 1000

# Copy to safe working values
$scoreboard players operation K-Engine.trigger3d.$(id).dx_safe K-Engine.trigger3d = K-Engine.trigger3d.$(id).size_x K-Engine.trigger3d
$scoreboard players operation K-Engine.trigger3d.$(id).dy_safe K-Engine.trigger3d = K-Engine.trigger3d.$(id).size_y K-Engine.trigger3d
$scoreboard players operation K-Engine.trigger3d.$(id).dz_safe K-Engine.trigger3d = K-Engine.trigger3d.$(id).size_z K-Engine.trigger3d

$execute store result storage k-e:trigger3d $(id).dx double 0.001 run scoreboard players get K-Engine.trigger3d.$(id).dx_safe K-Engine.trigger3d
$execute store result storage k-e:trigger3d $(id).dy double 0.001 run scoreboard players get K-Engine.trigger3d.$(id).dy_safe K-Engine.trigger3d
$execute store result storage k-e:trigger3d $(id).dz double 0.001 run scoreboard players get K-Engine.trigger3d.$(id).dz_safe K-Engine.trigger3d

# Subtract 1 block (1000 thousandths)
$scoreboard players remove K-Engine.trigger3d.$(id).dx_safe K-Engine.trigger3d 1000
$scoreboard players remove K-Engine.trigger3d.$(id).dy_safe K-Engine.trigger3d 1000
$scoreboard players remove K-Engine.trigger3d.$(id).dz_safe K-Engine.trigger3d 1000

# Clamp negatives to zero
$execute if score K-Engine.trigger3d.$(id).dx_safe K-Engine.trigger3d matches ..-1 run scoreboard players set K-Engine.trigger3d.$(id).dx_safe K-Engine.trigger3d 0
$execute if score K-Engine.trigger3d.$(id).dy_safe K-Engine.trigger3d matches ..-1 run scoreboard players set K-Engine.trigger3d.$(id).dy_safe K-Engine.trigger3d 0
$execute if score K-Engine.trigger3d.$(id).dz_safe K-Engine.trigger3d matches ..-1 run scoreboard players set K-Engine.trigger3d.$(id).dz_safe K-Engine.trigger3d 0

# Convert back to doubles (dividing by 1000)
$execute store result storage k-e:trigger3d $(id).dx_safe double 0.001 run scoreboard players get K-Engine.trigger3d.$(id).dx_safe K-Engine.trigger3d
$execute store result storage k-e:trigger3d $(id).dy_safe double 0.001 run scoreboard players get K-Engine.trigger3d.$(id).dy_safe K-Engine.trigger3d
$execute store result storage k-e:trigger3d $(id).dz_safe double 0.001 run scoreboard players get K-Engine.trigger3d.$(id).dz_safe K-Engine.trigger3d

# Cleanup
$scoreboard players reset K-Engine.trigger3d.$(id).dx_safe K-Engine.trigger3d
$scoreboard players reset K-Engine.trigger3d.$(id).dy_safe K-Engine.trigger3d
$scoreboard players reset K-Engine.trigger3d.$(id).dz_safe K-Engine.trigger3d

$scoreboard players reset K-Engine.trigger3d.$(id).size_x K-Engine.trigger3d
$scoreboard players reset K-Engine.trigger3d.$(id).size_y K-Engine.trigger3d
$scoreboard players reset K-Engine.trigger3d.$(id).size_z K-Engine.trigger3d
