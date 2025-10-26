$data remove storage k-e:caption $(node)

$function sys:hooks/emit {sys:caption,hook:delete,node:$(node)}

$function sys:flush/pop {sys:caption,node:$(node)}