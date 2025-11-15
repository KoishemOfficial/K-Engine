function root:api/config/debug/on

function root:api/debug/columns {value:5}
function root:api/debug/add_shortcut {\
    label:[{text:"⟳",bold:true},{text: " Reload",bold:false}],\
    command:"reload",\
    width:55\
}
function root:api/debug/add_shortcut {\
    label:[{color:"aqua",text: "🆔",bold:true},{text:" Node amount",bold:false}],\
    command:"function root:api/util/node_count",\
    width:85\
}
function root:api/debug/add_shortcut {\
    label:{color:"red",text: "❌ Disable Debug"},\
    command:"function root:api/config/debug/off",\
    width:90\
}
function root:api/debug/add_shortcut {\
    label:{color:"red",text: "🗑 GC all"},\
    command:"function sys:gc/run_all",\
    width:65\
}