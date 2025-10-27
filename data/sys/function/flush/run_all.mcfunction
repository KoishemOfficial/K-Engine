function sys:timers/delete_all
function sys:dialogue/delete_all

function sys:hooks/pop_sys {sys:timers}
function sys:hooks/pop_sys {sys:dialogue}

function root:api/debug/message/success {sys:"flush", message:"Deleted all nodes across all modules"}