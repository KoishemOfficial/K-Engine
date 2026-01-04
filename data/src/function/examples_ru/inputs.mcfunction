# @minecraft:tick as @p


# inputs система это простой набор функций и предикатов для работы с отслеживанием
# клавиш определённых игроков или группы игроков


# Отслеживание

# Цикличная проверка W клавиши
execute if function sys:inputs/on_hold/w run say hi

# Одноразовая проверка W клавиши
execute if function sys:inputs/on_press/w run say hi

# Код ниже будет проигнорирован потому что on_press проверка для клавиши может быть только одна на функцию
# Игнорирование будет только если проверка идёт для одной и той же клавиши
# execute if function sys:inputs/on_press/w run say hi

# Отслеживание нажатий можно блокировать определённым игрокам
function sys:inputs/lock {input:"w"}
function sys:inputs/unlock {input:"w"}

# Если не хочется использовать макросы в целях оптимизации, можно использовать приватные функции
function sys:inputs/private/lock/w
function sys:inputs/private/unlock/w

# Блокировку можно переключать вкл/выкл
function sys:inputs/toggle {input:"w"}

# Статус блокировки и нажатий можно проверять через дебаггер
# Дебаггер предназначен только для проверки на ошибки, так что он работает только в одиночной игре
function sys:inputs/debug