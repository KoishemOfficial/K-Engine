$execute unless data storage k-e:ui $(node){previous_obj:""} run function sys:ui/private/_deselect with storage k-e:ui $(node)
$data modify storage k-e:ui $(node).current_obj set value $(name)
$data modify storage k-e:ui $(node).previous_obj set from storage k-e:ui $(node).current_obj
$function sys:hooks/emit {sys:ui,hook:$(name)_select,node:$(node)}