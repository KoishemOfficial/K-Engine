$data remove storage test_module $(node)

$function sys:flush/unlog {sys:"test_module", node:"$(node)"}

$function root:api/debug/message/success {sys:"test", message:"Deleted node: $(node)"}