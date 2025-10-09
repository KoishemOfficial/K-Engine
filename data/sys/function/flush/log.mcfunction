scoreboard objectives add K-Engine.flush dummy

$execute if data storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/notification {sys:"$(sys)", message:"Node $(node) is overwritten!"}
$execute unless data storage k-e:flush $(sys).node_list.data[{entry:"$(node)"}] run data modify storage k-e:flush $(sys).node_list.data append value {entry:"$(node)"}