# Runs every time the world is restarted, or on /reload

function src:menu/spawn

function sys:ui/create {node:test}

function sys:ui/add_object {node:test, name:button1}

function sys:ui/add_hook {node:test, name:button1, input:s,command:"function src:menu/button1/s"}
function sys:ui/add_hook {node:test, name:button1, input:select,command:"function src:menu/button1/select"}
function sys:ui/add_hook {node:test, name:button1, input:deselect,command:"function src:menu/button1/deselect"}

function sys:ui/add_object {node:test, name:button2}

function sys:ui/add_hook {node:test, name:button2, input:w,command:"function src:menu/button2/w"}
function sys:ui/add_hook {node:test, name:button2, input:s,command:"function src:menu/button2/s"}
function sys:ui/add_hook {node:test, name:button2, input:select,command:"function src:menu/button2/select"}
function sys:ui/add_hook {node:test, name:button2, input:deselect,command:"function src:menu/button2/deselect"}

function sys:ui/add_object {node:test, name:button3}

function sys:ui/add_hook {node:test, name:button3, input:w,command:"function src:menu/button3/w"}
function sys:ui/add_hook {node:test, name:button3, input:select,command:"function src:menu/button3/select"}
function sys:ui/add_hook {node:test, name:button3, input:deselect,command:"function src:menu/button3/deselect"}

function sys:ui/select {node:test, name:button1}