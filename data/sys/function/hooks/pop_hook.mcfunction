$data remove storage k-e:hooks $(sys).$(node).data.$(hook)

$function root:api/debug/message/success {sys:"hooks", message:"$(sys).$(node).data.$(hook) removed from hooks"}