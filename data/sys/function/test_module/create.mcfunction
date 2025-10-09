$data merge storage test_module {$(node):{id:$(node)}}

$function sys:flush/log {sys:"test_module", node:"$(node)"}

$function root:api/debug/message/success {sys:"test", message:"Created node: $(node)"}