$data remove storage k-e:gc $(sys)

scoreboard players reset K-Engine.gc.node_list.id K-Engine.gc
scoreboard players reset K-Engine.gc.node_list.size K-Engine.gc
scoreboard players reset K-Engine.gc.node_list.amount K-Engine.gc

$scoreboard objectives remove K-Engine.$(sys)

$function root:api/debug/message/success {sys:"gc", message:"Deleted $(amount) node(s) from $(sys) module"}