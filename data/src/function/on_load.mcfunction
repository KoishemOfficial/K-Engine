# Runs every time the world is restarted, or on /reload

function sys:dialogue/create {node:d1,import:[\
    {tag:{type:actionbar,value:true}},\
    {text:""},\
    {tag:{type:pause,value:20}},\
    {text:"Hello World!"},\
    {tag:{type:actionbar,value:force}},\
]}

function sys:dialogue/create {node:d2,import:[\
    {tag:{type:actionbar,value:true}},\
    {text:""},\
    {tag:{type:pause,value:20}},\
    {text:"Hello World 22222!"},\
    {tag:{type:actionbar,value:force}},\
]}

function sys:dialogue/create {node:d3,import:[\
    {tag:{type:actionbar,value:true}},\
    {text:""},\
    {tag:{type:pause,value:20}},\
    {text:"Hello World 333333333!"},\
    {tag:{type:actionbar,value:force}},\
]}

function sys:dialogue_queue/create {node:q1,queue:"d1, d2, d3"}