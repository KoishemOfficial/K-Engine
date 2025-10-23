function sys:schedule/delete_all
function sys:caption/delete_all

function sys:hooks/pop_sys {sys:schedule}
function sys:hooks/pop_sys {sys:caption}

function root:api/debug/message/success {sys:"flush", message:"Deleted all nodes across all modules"}