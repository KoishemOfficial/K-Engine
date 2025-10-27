function root:api/config/debug/on

function root:api/devmenu/columns {value:5}
function root:api/devmenu/add_shortcut {\
    label:{color:"yellow",text: "☀ Day"},\
    command:"time set noon",\
    width:50\
}
function root:api/devmenu/add_shortcut {\
    label:[{color:"blue",text: "🌙",bold:true},{bold:false,text:" Night"}],\
    command:"time set midnight",\
    width:50\
}
function root:api/devmenu/add_shortcut {\
    label:[{color:"aqua",text: "🌤",bold:true},{bold:false,text:" Clear"}],\
    command:"weather clear",\
    width:50\
}
function root:api/devmenu/add_shortcut {\
    label:{color:"aqua",text: "🌧 Rain"},\
    command:"weather rain",\
    width:50\
}
function root:api/devmenu/add_shortcut {\
    label:{color:"aqua",text: "⛈ Thunder"},\
    command:"weather thunder",\
    width:65\
}
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
    label:{color:"red",text: "🗑 Flush all"},\
    command:"function sys:flush/run_all",\
    width:65\
}