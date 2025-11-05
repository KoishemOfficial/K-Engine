# Runs every time the world is restarted, or on /reload

function sys:dialogue/create_queue {node:q1,queue:"d1, d2, d3"}

function sys:dialogue/create {node:d1,import:[\
    {tag:{type:"actionbar",value:true}},\
    {text:""},\
    {tag:{type:"pause",value:20}},\
    {text:"Text1"},\
    {tag:{type:"actionbar",value:force}}\
]}

function sys:dialogue/create {node:d2,import:[\
    {tag:{type:"actionbar",value:true}},\
    {text:""},\
    {tag:{type:"pause",value:20}},\
    {text:"t e x t 2"},\
    {tag:{type:"actionbar",value:force}}\
]}

function sys:dialogue/create {node:d3,import:[\
    {tag:{type:"actionbar",value:true}},\
    {text:""},\
    {tag:{type:"pause",value:20}},\
    {text:"tExT3"},\
    {tag:{type:"actionbar",value:force}}\
]}