$execute if data storage k-e:gc $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/success {sys:"gc", message:"Deleted node: $(node) from $(sys) module"}
$execute unless data storage k-e:gc $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/error {sys:"gc", message:"Node $(node) from $(sys) module is not found."}

$data remove storage k-e:gc $(sys).node_list.data[{entry:"$(node)"}]

$function sys:hooks/pop_node {sys:$(sys),node:$(node)}

$execute unless data storage k-e:gc $(sys).node_list.data run function sys:gc/private/_clear_temp {sys:$(sys)}