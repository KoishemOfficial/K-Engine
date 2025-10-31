$data remove storage k-e:flush $(sys)

scoreboard players reset K-Engine.flush.node_list.id K-Engine.flush
scoreboard players reset K-Engine.flush.node_list.size K-Engine.flush
scoreboard players reset K-Engine.flush.node_list.amount K-Engine.flush

$scoreboard objectives remove K-Engine.$(sys)

$function root:api/debug/message/success {sys:"flush", message:"Deleted $(amount) node(s) from $(sys) module"}