$data merge storage k-e:trigger3d {$(node):{$(input)}}

$function sys:trigger3d/private/_spawn_display with storage k-e:trigger3d $(node)
$function sys:trigger3d/private/_calculate with storage k-e:trigger3d $(node)