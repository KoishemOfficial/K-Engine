$data remove storage k-e:hooks $(sys).$(node).data.$(hook)[$(id)]

$function root:api/debug/message/success {sys:"hooks", message:"$(sys).$(node).data.$(hook)[$(id)] removed from hooks"}