$execute as @s if function sys:inputs/on_press/w run function sys:hooks/emit {sys:ui,hook:$(current_obj)_w,node:$(id)}
$execute as @s if function sys:inputs/on_press/a run function sys:hooks/emit {sys:ui,hook:$(current_obj)_a,node:$(id)}
$execute as @s if function sys:inputs/on_press/s run function sys:hooks/emit {sys:ui,hook:$(current_obj)_s,node:$(id)}
$execute as @s if function sys:inputs/on_press/d run function sys:hooks/emit {sys:ui,hook:$(current_obj)_d,node:$(id)}

$execute as @s if function sys:inputs/on_press/jump run function sys:hooks/emit {sys:ui,hook:$(current_obj)_jump,node:$(id)}
$execute as @s if function sys:inputs/on_press/crouch run function sys:hooks/emit {sys:ui,hook:$(current_obj)_crouch,node:$(id)}
$execute as @s if function sys:inputs/on_press/sprint run function sys:hooks/emit {sys:ui,hook:$(current_obj)_sprint,node:$(id)}