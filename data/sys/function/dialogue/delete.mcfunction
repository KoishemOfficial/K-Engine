$data remove storage k-e:dialogue $(node)

$function sys:hooks/emit {sys:dialogue,hook:delete,node:$(node)}

$function sys:flush/pop {sys:dialogue,node:$(node)}