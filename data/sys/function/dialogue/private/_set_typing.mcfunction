$function sys:hooks/add {sys:dialogue,node:$(id),hook:$(text_index),command:"data modify storage k-e:dialogue $(id).typing set value '$(command)'"}
$data remove storage k-e:dialogue $(id).command