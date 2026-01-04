# Практически во всех модулях которые создают объекты (ноды) есть функция создания и удаления
function sys:timers/create {node:""}

function sys:timers/delete {node:""}
function sys:timers/delete_all

# Функции удаления полностью удаляют объект, скорборды и data storage подсоединённые к ним а также хуки
# Для полного удаления всех объектов и данных можно использовать
function sys:gc/run_all

# Чтобы увидеть полезные команды и хуки модулей можно прописать help
# У всех модулей есть такая команда
function sys:inputs/help
function sys:timers/help