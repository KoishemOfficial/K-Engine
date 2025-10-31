$data merge storage k-e:trigger3d {$(node):{filter:"$(filter)"}}

$function sys:trigger3d/private/_spawn_display with storage k-e:trigger3d $(node)
$function sys:trigger3d/private/_calculate with storage k-e:trigger3d $(node)

$function root:api/debug/message/success {sys:"trigger3d", message:"Updated filter $(filter) for the node $(node)"}