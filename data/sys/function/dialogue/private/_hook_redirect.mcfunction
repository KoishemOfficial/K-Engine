$data modify storage k-e:dialogue $(id).command set from storage k-e:dialogue $(id).import[$(index)].tag.command
$function sys:dialogue/private/_add_hook with storage k-e:dialogue $(id)