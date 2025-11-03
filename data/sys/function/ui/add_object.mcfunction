$execute unless data storage k-e:ui $(node).obj[{name:"$(name)"}] run data modify storage k-e:ui $(node).objects append value {name:"$(name)"}

$function root:api/debug/message/success {sys:"ui", message:"Added obj $(name) to node $(node)"}