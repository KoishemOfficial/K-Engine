# В дебаггере K-Engine есть набор функций для отображения сообщений и пара полезных утилит

# sys аргумент это система от которой идёт сообщение дебага
# message это внутренность сообщения. Не поддерживает SNBT

# Сообщения отображаются только с включенным дебагом
function root:api/debug/message/error {sys:"", message:""}
function root:api/debug/message/notification {sys:"", message:""}
function root:api/debug/message/success {sys:"", message:""}

# Есть более специфичные типы сообщений
function root:api/debug/message/help_entry {command:"", args:""}
function root:api/debug/message/help_hooks {hooks:""}
function root:api/debug/message/help_tags {tags:""}
function root:api/debug/message/help_label {sys:""}

# Для совместной работы модулей и для удобства есть утилита на проверку того включен ли дебаг
execute if function root:api/debug/if_debug run say debug is on

# Сам дебаг режим можно включать и выключать по удобству
function root:api/config/debug/on
function root:api/config/debug/off

# Количество нодов систем можно посмотреть через команду node_count
function root:api/util/node_count

# on_boot функцию можно перезапустить, чтобы она активировалась при следующем заходе в мир
function root:api/util/on_boot_reset
