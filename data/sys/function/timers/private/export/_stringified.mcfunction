$data modify storage k-e:timers $(id).export.stringified set value "$(export_h):$(export_m):$(export_s):$(export_t)"

$data remove storage k-e:timers $(id).export_h
$data remove storage k-e:timers $(id).export_m
$data remove storage k-e:timers $(id).export_s
$data remove storage k-e:timers $(id).export_t