function root:api/config/debug/on

function root:api/devmenu/columns {value:5}
function root:api/devmenu/add_shortcut {\
    label:[{text:"⟳",bold:true},{text: " Reload",bold:false}],\
    command:"reload",\
    width:55\
}
function root:api/devmenu/add_shortcut {\
    label:{color:"red",text: "❌ Disable Debug"},\
    command:"function root:api/config/debug/off",\
    width:90\
}
function root:api/devmenu/add_shortcut {\
    label:{color:"red",text: "🗑 gc all"},\
    command:"function sys:gc/run_all",\
    width:65\
}