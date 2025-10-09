$data remove storage k-e:hooks $(sys).$(node)

$function root:api/debug/message/success {sys:"hooks", message:"$(sys).$(node) removed from hooks"}