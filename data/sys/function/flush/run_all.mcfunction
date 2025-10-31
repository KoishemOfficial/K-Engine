function sys:flush/run {sys:timers}
function sys:flush/run {sys:dialogue}
function sys:flush/run {sys:"trigger3d"}

function sys:hooks/pop_sys {sys:timers}
function sys:hooks/pop_sys {sys:dialogue}
function sys:hooks/pop_sys {sys:"trigger3d"}

function root:api/debug/message/success {sys:"flush", message:"Deleted all nodes across all modules"}