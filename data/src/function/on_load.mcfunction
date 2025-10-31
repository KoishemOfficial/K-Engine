# Runs every time the world is restarted, or on /reload

function sys:3d_triggers/create {node:test,input:"x:1,y:1,z:1",pos:"14 -60 15",filter:"@e[type=player]"}