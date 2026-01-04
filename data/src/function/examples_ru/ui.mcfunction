# UI модуль это бекэнд для создания интерфейсов

# Простой пример интерфейса


# Создания интерфейса
# node может быть любым
function sys:ui/create {node:"interface"}

# Добавление объекта, в нашем случае простая кнопка
# name может быть любым
function sys:ui/add_object {node:"interface", name: "button"}

# Добавление хука в кнопке, чтобы при нажатии она выполняла команду
# Инпутом можно выбирать w a s d, jump, crouch, sprint, здесь используются инпуты модуля inputs
function sys:ui/add_hook {node: "interface", name:"button", input: "jump", command: "say button is pressed"}

# Заранее выбираем кнопку чтобы интерфейс понимал с чем мы взаимодействуем
function sys:ui/select {node: "interface", name: "button"}

# Активируем игроку интерфейс (@minecraft:tick)
execute as @p run function sys:ui/activate {node: "interface"}

# Теперь при нажатии на прыжок (бинд jump) игрок будет активировать команду "say button is pressed" которую мы привязали к нашей кнопке
# Кнопки, АКА объекты могут иметь любые скрипты, всё зависит от создателя интерфейса

# Простой пример меню для игры

function sys:ui/create {node:"main_menu"}

function sys:ui/add_object {node:"main_menu", name: "start_button"}
function sys:ui/add_object {node:"main_menu", name: "settings"}
function sys:ui/add_object {node:"main_menu", name: "exit"}

function sys:ui/add_hook {node: "main_menu", name:"start_button", input: "w", command: "function sys:ui/select {node: 'main_menu', name: 'exit'}"}
function sys:ui/add_hook {node: "main_menu", name:"start_button", input: "jump", command: "say The game is starting!"}
function sys:ui/add_hook {node: "main_menu", name:"start_button", input: "s", command: "function sys:ui/select {node: 'main_menu', name: 'settings'}"}

function sys:ui/add_hook {node: "main_menu", name:"settings", input: "w", command: "function sys:ui/select {node: 'main_menu', name: 'start_button'}"}
function sys:ui/add_hook {node: "main_menu", name:"settings", input: "jump", command: "say Opening settings!"}
function sys:ui/add_hook {node: "main_menu", name:"settings", input: "s", command: "function sys:ui/select {node: 'main_menu', name: 'exit'}"}

function sys:ui/add_hook {node: "main_menu", name:"exit", input: "w", command: "function sys:ui/select {node: 'main_menu', name: 'settings'}"}
function sys:ui/add_hook {node: "main_menu", name:"exit", input: "jump", command: "say Exiting the game!"}
function sys:ui/add_hook {node: "main_menu", name:"exit", input: "s", command: "function sys:ui/select {node: 'main_menu', name: 'start_button'}"}

function sys:ui/select {node: "main_menu", name: "start_button"}

execute as @p run function sys:ui/activate {node: "main_menu"}

# Теперь у нас есть меню

# start_button
# settings
# exit

# Мы автоматически выбираем start_button, w и s работают как скролл меню, jump (space) работает как активация
# С помощью UI модуля можно делать меню любых видов, игровые механики и много других вещей