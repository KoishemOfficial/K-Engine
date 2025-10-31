function sys:flush/run {sys:timers}
function sys:flush/run {sys:dialogue}
function sys:flush/run {sys:"3d_triggers"}

function sys:hooks/pop_sys {sys:timers}
function sys:hooks/pop_sys {sys:dialogue}
function sys:hooks/pop_sys {sys:"3d_triggers"}

function root:api/debug/message/success {sys:"flush", message:"Deleted all nodes across all modules"}