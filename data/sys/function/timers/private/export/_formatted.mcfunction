$execute if score K-Engine.timers.$(id).start_h K-Engine.timers matches ..9 run data modify storage k-e:timers $(id).export.formatted.h set value "0$(export_h)"
$execute if score K-Engine.timers.$(id).start_m K-Engine.timers matches ..9 run data modify storage k-e:timers $(id).export.formatted.m set value "0$(export_m)"
$execute if score K-Engine.timers.$(id).start_s K-Engine.timers matches ..9 run data modify storage k-e:timers $(id).export.formatted.s set value "0$(export_s)"
$execute if score K-Engine.timers.$(id).start_t K-Engine.timers matches ..9 run data modify storage k-e:timers $(id).export.formatted.t set value "0$(export_t)"

$execute if score K-Engine.timers.$(id).start_h K-Engine.timers matches 10.. run data modify storage k-e:timers $(id).export.formatted.h set value "$(export_h)"
$execute if score K-Engine.timers.$(id).start_m K-Engine.timers matches 10.. run data modify storage k-e:timers $(id).export.formatted.m set value "$(export_m)"
$execute if score K-Engine.timers.$(id).start_s K-Engine.timers matches 10.. run data modify storage k-e:timers $(id).export.formatted.s set value "$(export_s)"
$execute if score K-Engine.timers.$(id).start_t K-Engine.timers matches 10.. run data modify storage k-e:timers $(id).export.formatted.t set value "$(export_t)"

$data modify storage k-e:timers $(id).export_h set from storage k-e:timers $(id).export.formatted.h
$data modify storage k-e:timers $(id).export_m set from storage k-e:timers $(id).export.formatted.m
$data modify storage k-e:timers $(id).export_s set from storage k-e:timers $(id).export.formatted.s
$data modify storage k-e:timers $(id).export_t set from storage k-e:timers $(id).export.formatted.t

$function sys:timers/private/export/_stringified with storage k-e:timers $(id)