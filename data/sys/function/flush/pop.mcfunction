$execute if data storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/success {sys:"flush", message:"Deleted node: $(node) from $(sys) module"}
$execute unless data storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/error {sys:"flush", message:"Node $(node) from $(sys) module is not found."}

$data remove storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}]

$function sys:hooks/pop_node {sys:$(sys),node:$(node)}

$execute unless data storage k-e:flush $(sys).node_list.data run function sys:flush/private/_clear_temp {sys:$(sys)}