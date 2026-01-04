# @minecraft:load

# devmenu это меню разработчика с набором настраиваемых кнопок

# Чтобы devmenu работал и вызывался на CTRL + SHIFT (Sprint + Crouch в биндах) нужно включать дебаг режим
# devmenu не доступен обычным игрокам если дебаг выключен
function root:api/config/debug/on

# Количество столбиков кнопок
function root:api/debug/columns {value:5}

# Кнопки меню
# label принимает SNBT текст
# command вызывает команду/функцию при нажатии
# width ширина кнопки
function root:api/debug/add_shortcut {\
    label:[{text:"⟳",bold:true},{text: " Reload",bold:false}],\
    command:"reload",\
    width:55\
}
function root:api/debug/add_shortcut {\
    label:[{text: "Debug on",color:"green"}],\
    command:"function root:api/config/debug/on",\
    width:70\
}
function root:api/debug/add_shortcut {\
    label:[{text: "Debug off",color:"red"}],\
    command:"function root:api/config/debug/off",\
    width:70\
}

# Кнопки появляются после /reload
# Создание кнопок не должно быть внутри командных блоков так как после
# каждого /reload список кнопок сбрасывается