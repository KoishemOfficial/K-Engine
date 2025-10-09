$data remove storage test_module $(node)

$function sys:flush/pop {sys:"test_module", node:"$(node)"}