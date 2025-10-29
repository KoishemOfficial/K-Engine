$data modify storage k-e:dialogue $(id).value set from storage k-e:dialogue $(id).import[$(index)].tag.value
$function sys:dialogue/private/_set_pause with storage k-e:dialogue $(id)