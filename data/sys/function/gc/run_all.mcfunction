function sys:gc/run {sys:timers}
function sys:gc/run {sys:dialogue}
function sys:gc/run {sys:dialogue_queue}
function sys:gc/run {sys:"trigger3d"}
function sys:gc/run {sys:"ui"}

function sys:hooks/pop_sys {sys:timers}
function sys:hooks/pop_sys {sys:dialogue}
function sys:hooks/pop_sys {sys:dialogue_queue}
function sys:hooks/pop_sys {sys:"trigger3d"}
function sys:hooks/pop_sys {sys:"ui"}

function root:api/debug/message/success {sys:"gc", message:"Deleted all nodes across all modules"}