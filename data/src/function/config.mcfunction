function root:api/config/debug/on

function root:api/debug/columns {value:5}
function root:api/debug/add_shortcut {\
    label:[{text:"⟳",bold:true},{text: " Reload",bold:false}],\
    command:"reload",\
    width:55\
}
function root:api/debug/add_shortcut {\
    label:[{text:"⟳",bold:true},{text: " Алмаз",bold:false}],\
    command:"give @a diamond 64",\
    width:55\
}