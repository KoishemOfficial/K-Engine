# trigger3d это модуль для создания dx dy dz триггеров для проверки на наличие сущностей внутри

# Создание 3д триггера

# node - идентификатор объекта
# input - размер триггера в блоках (поддерживает любой размер кроме негативного)
# pos - место спавна триггера
# filter - селектор сущностей на которых реагирует триггер
function sys:trigger3d/create {node:"t1", input:"x:2,y:2,z:2", pos:"8 -60 8", filter:"@a"}

# Триггеры должны быть активированны для работы (@minecraft:tick)
function sys:trigger3d/activate {node:"t1"}

# Триггерам можно менять размер и фильтр в реальном времени
function sys:trigger3d/set_size {node:t1,input:"x:1,y:1,z:1"}
function sys:trigger3d/set_filter {node:t1,filter:"@e[type=arrow]"}

# Привязка хуков к 3д триггерам
function sys:hooks/add {sys:"trigger3d", node:"t1", hook:"enter", command: "say enter"}
function sys:hooks/add {sys:"trigger3d", node:"t1", hook:"exit", command: "say exit"}

# 3д триггеры имеют предпросмотр если дебаг включен
function sys:trigger3d/show_displays
function sys:trigger3d/hide_displays

# Также 3д триггеры можно двигать вручную (эта функция работает только в одиночной игре)

# offset - расстояние от игрока к триггеру
function sys:trigger3d/move {node:"t1", offset:"2"}