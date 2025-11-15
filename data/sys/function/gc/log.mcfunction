scoreboard objectives add K-Engine.gc dummy

$execute if data storage k-e:gc $(sys).node_list.data[{entry:"$(node)"}] run function root:api/debug/message/notification {sys:"$(sys)", message:"Node $(node) is overwritten!"}
$execute unless data storage k-e:gc $(sys).node_list.data[{entry:"$(node)"}] run data modify storage k-e:gc $(sys).node_list.data append value {entry:"$(node)"}