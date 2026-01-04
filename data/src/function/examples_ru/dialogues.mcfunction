# Диалоги это самая комплексная система в K-Engine

# У диалогов есть что-то наподобии конвертера как у objection.lol, диалог принимает
# набор SNBT текстов и тэгов, и потом конвертирует эти текст и тэги в индексированный
# список символов и команд которые постепенно выводятся при активации

# Создание диалога

# node - идентификатор нода
# import - SNBT структура которая конвертируется в список символов и команд
function sys:dialogue/create {node:"d1",import:[\
    {tag:{type:"actionbar",value:true}},\
    {text:""},\
    {text:"Hello World!"},\
    {tag:{type:"pause",value:20}},\
    {tag:{type:"actionbar",value:false}},\
]}

# Активация диалога (@minecraft:tick)
# С тэгом actionbar:true будет отображать диалог всем выбранным сущностям в селекторе, в этом случае @p
execute as @p run function sys:dialogue/activate {node:"d1"}

# Диалоги можно группировать в очереди

# При активации очереди они проиграются друг за другом
function sys:dialogue_queue/create {node:"q1",queue:"d1, d2, d3"}

# @minecraft:tick
function sys:dialogue_queue/activate {node:"q1"}

# Как работают тэги

# Тэги диалогов индексируются вместе с текстом
# Если тэг был добавлен перед текстом - он выполнится только после печати этого же текста

#function sys:dialogue/create {node:"d1",import:[\
#    {tag:{type:"actionbar",value:true}},\              <- Тэг
#    {text:""},\                                        <- Пустой текст, после которого заработает тэг
#    {text:"Hello World!"},\                            <- Актуальный текст диалога
#]}

# Все тэги диалогов:

# {type:"actionbar",value:true} -> Отображает диалог в actionbar'е
# {type:"actionbar",value:false} -> Отключает отображение actionbar'а, текст пропадёт со временем
# {type:"actionbar",value:"force"} -> Насильно отключает actionbar, моментально опустошая его
# {type:"step",value:"3"} -> Количество символов выводимых за один тик диалога
# {type:"pause",value:"20"} -> Пауза в тиках
# {type:"delay",value:"20"} -> Задержка перед выводом следующего символа
# {type:"typing",command:"say dialogue tick"} -> Команда выполняемая при каждом тике диалога
# {type:"hook",command:"say dialogue ended"} -> Привязка хука к моменту в диалоге