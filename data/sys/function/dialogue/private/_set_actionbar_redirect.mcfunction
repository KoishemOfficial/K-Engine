$data modify storage k-e:dialogue $(id).value set from storage k-e:dialogue $(id).import[$(index)].tag.value
$execute if data storage k-e:dialogue $(id).import[$(index)].tag{value:"force"} run data modify storage k-e:dialogue $(id).value set value 2
$function sys:dialogue/private/_set_actionbar with storage k-e:dialogue $(id)