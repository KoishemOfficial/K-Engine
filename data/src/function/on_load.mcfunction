# Runs every time the world is restarted, or on /reload

function sys:dialogue/create {node:test,import:[\
    {tag:{type:"actionbar",value:true}},\
    \
    {text:""},\
    {text:"Some red text",color:"red"},\
    \
    {tag:{type:"pause",value:20}},\
    \
    {text:" Some green text",bold:true,color:"green"},\
    \
    {tag:{type:"hook",command:"say End of the dialogue"}},\
    {tag:{type:"actionbar",value:false}},\
]}