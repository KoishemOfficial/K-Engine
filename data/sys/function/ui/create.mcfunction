$data merge storage k-e:ui {$(node):{id:$(node),previous_obj:"",objects:[]}}

$function sys:hooks/pop_node {sys:ui,node:$(node)}

$function sys:flush/log {sys:ui, node:"$(node)"}

$function root:api/debug/message/success {sys:"ui", message:"Created node: $(node)"}