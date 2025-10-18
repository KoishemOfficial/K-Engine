function sys:schedule/delete_all

function sys:hooks/pop_sys {sys:schedule}

function root:api/debug/message/success {sys:"flush", message:"Deleted all nodes across all modules"}