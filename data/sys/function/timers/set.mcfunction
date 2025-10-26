$function sys:timers/private/set/_$(arg) {node:$(node),value:$(value)}

$function sys:timers/private/_pull {node:$(node)}

$function sys:hooks/emit {sys:timers,hook:set,node:$(node)}