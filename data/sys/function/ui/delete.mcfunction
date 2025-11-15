$data remove storage k-e:ui $(node)

$function sys:hooks/emit {sys:ui,hook:delete,node:$(node)}

$function sys:gc/pop {sys:ui,node:$(node)}