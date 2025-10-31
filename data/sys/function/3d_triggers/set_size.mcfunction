$data merge storage k-e:3d_triggers {$(node):{$(input)}}

$function sys:3d_triggers/private/_spawn_display with storage k-e:3d_triggers $(node)
$function sys:3d_triggers/private/_calculate with storage k-e:3d_triggers $(node)