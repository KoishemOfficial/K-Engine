# Runs every time the world is restarted, or on /reload

function sys:dialogue/create {node:d1,import:[\
    {tag:{type:"actionbar",value:true}},\
    {tag:{type:"typing",command:"playsound minecraft:entity.armadillo.scute_drop master @a"}},\
    \
    {text:""},\
    {tag:{type:"pause",value:20}},\
    {text:"Какой-то бла-бла-бла текст номер 1",color:"white"},\
    \
    {tag:{type:"pause",value:20}},\
    \
    {text:" типа красни текст типа страшн",bold:true,color:"red"},\
    \
    {tag:{type:"hook",command:"say End of the dialogue"}},\
    {tag:{type:"actionbar",value:force}},\
]}