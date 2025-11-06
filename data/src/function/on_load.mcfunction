# Runs every time the world is restarted, or on /reload

function sys:dialogue/create {node:d1,import:[\
    {tag:{type:"actionbar",value:true}},\
    {text:""},\
    {tag:{type:"pause",value:40}},\
    {text:"Прошло около трёх лет с момента как мой брат пропал без вести.\n"},\
    {tag:{type:"pause",value:40}},\
    {text:"Строка номер 2 лол"},\
    {tag:{type:"actionbar",value:force}}\
]}