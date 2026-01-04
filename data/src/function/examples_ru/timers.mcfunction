# timers модуль это продвинутая система отсчёта времени по HH:MM:SS:TT формулировке

# Создание таймера
# node - идентификатор таймера
# start - стартовая позиция создания таймера
# end - конечная позиция на которой таймер выполнит функцию
# repeats - будет ли зациклен таймер или нет

# Если start значение выше чем end, таймер будет идти в обратную сторону
# Таймер не пойдёт в обратную сторону если в реальном времени изменить start или end
function sys:timers/create {\
    node:"t1",\
    start:"h:0,m:0,s:0,t:0",\
    end:"h:0,h:0,s:5,t:0",\
    repeats:false\
}

# Активация таймера (@minecraft:tick)
function sys:timers/activate {node:"t1"}

# Таймеры можно ставить на паузу
function sys:timers/pause {node:"t1"}
function sys:timers/resume {node:"t1"}

# Значения таймеров можно менять в реальном времени

# node - идентификатор
# arg - атрибут который будет изменён
# value - заменяемое значение

# arg поддерживает start, start_h, start_m, start_s, start_t, repeats, end_h, end_m, end_s, end_t
function sys:timers/set {node:"t1",arg:"start",value:"h:0,m:0,s:0,t:0"}

# Прогресс таймеров можно отображать. Эта функция предназначена исключительно для дебага, так что она работает
# только в одиночной игре

# as @<> -> те кому будет отображаться прогресс таймера в title actionbar
# node - идентификатор объекта
# format - визуальный стиль таймера. Поддерживает "raw", "formatted" и "stringified"
execute as @p run function sys:timers/debug {node:"t1",format:stringified}

# Данные таймеров можно экспортировать для использования в своих целях
function sys:timers/export {node:"t1"}

# Эти данные можно подтянуть по пути data get storage k-e:timers <node>.export.<format>

# Форматы
# stringified -> HH:MM:SS:TT -> Притягивает уже обработанный вид времени отображаемый в дебаггере или в часах
# formatted -> h: "HH", m: "MM", s: "SS", t: "TT" -> Притягивает пред-обработанный вид времени, удобно для кастомных часов
# raw -> h: HH, m: MM, s: SS, t: TT -> Притягивает полностью сырой вид времени, вместо текста настоящие числа