$data modify storage k-e:hooks $(sys).$(node).data.$(hook) append value {command:"$(command)"}

$function root:api/debug/message/success {sys:"$(sys)", message:"Added $(hook) hook to $(sys) module"}