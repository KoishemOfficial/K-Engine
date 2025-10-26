$execute store result storage k-e:timers $(node).export_h int 1 run scoreboard players get K-Engine.timers.$(node).start_h K-Engine.timers
$execute store result storage k-e:timers $(node).export_m int 1 run scoreboard players get K-Engine.timers.$(node).start_m K-Engine.timers
$execute store result storage k-e:timers $(node).export_s int 1 run scoreboard players get K-Engine.timers.$(node).start_s K-Engine.timers
$execute store result storage k-e:timers $(node).export_t int 1 run scoreboard players get K-Engine.timers.$(node).start_t K-Engine.timers

$execute store result storage k-e:timers $(node).export.raw.h int 1 run data get storage k-e:timers $(node).export_h 1
$execute store result storage k-e:timers $(node).export.raw.m int 1 run data get storage k-e:timers $(node).export_m 1
$execute store result storage k-e:timers $(node).export.raw.s int 1 run data get storage k-e:timers $(node).export_s 1
$execute store result storage k-e:timers $(node).export.raw.t int 1 run data get storage k-e:timers $(node).export_t 1

$function sys:timers/private/export/_formatted with storage k-e:timers $(node)