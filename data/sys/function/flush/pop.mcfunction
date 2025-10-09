$execute if data storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/success {sys:"$(sys).", message:"Deleted node: $(node)"}
$execute unless data storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/error {sys:"$(sys).", message:"Node $(node) is not found."}

$data remove storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}]

$execute unless data storage k-e:flush $(sys).node_list.data[0] run function sys:flush/private/_clear_temp {sys:$(sys)}