scoreboard players set K-Engine.timers.timers.hour_mult K-Engine.timers 72000
scoreboard players set K-Engine.timers.timers.min_mult K-Engine.timers 1200
scoreboard players set K-Engine.timers.timers.sec_mult K-Engine.timers 20

# start
$scoreboard players set K-Engine.timers.$(node).start_ticks K-Engine.timers 0

$scoreboard players operation K-Engine.timers.tmp K-Engine.timers = K-Engine.timers.$(node).start_h K-Engine.timers
scoreboard players operation K-Engine.timers.tmp K-Engine.timers *= K-Engine.timers.timers.hour_mult K-Engine.timers
$scoreboard players operation K-Engine.timers.$(node).start_ticks K-Engine.timers += K-Engine.timers.tmp K-Engine.timers

$scoreboard players operation K-Engine.timers.tmp K-Engine.timers = K-Engine.timers.$(node).start_m K-Engine.timers
scoreboard players operation K-Engine.timers.tmp K-Engine.timers *= K-Engine.timers.timers.min_mult K-Engine.timers
$scoreboard players operation K-Engine.timers.$(node).start_ticks K-Engine.timers += K-Engine.timers.tmp K-Engine.timers

$scoreboard players operation K-Engine.timers.tmp K-Engine.timers = K-Engine.timers.$(node).start_s K-Engine.timers
scoreboard players operation K-Engine.timers.tmp K-Engine.timers *= K-Engine.timers.timers.sec_mult K-Engine.timers
$scoreboard players operation K-Engine.timers.$(node).start_ticks K-Engine.timers += K-Engine.timers.tmp K-Engine.timers

$scoreboard players operation K-Engine.timers.$(node).start_ticks K-Engine.timers += K-Engine.timers.$(node).start_t K-Engine.timers

# end
$scoreboard players set K-Engine.timers.$(node).end_ticks K-Engine.timers 0

$scoreboard players operation K-Engine.timers.tmp K-Engine.timers = K-Engine.timers.$(node).end_h K-Engine.timers
scoreboard players operation K-Engine.timers.tmp K-Engine.timers *= K-Engine.timers.timers.hour_mult K-Engine.timers
$scoreboard players operation K-Engine.timers.$(node).end_ticks K-Engine.timers += K-Engine.timers.tmp K-Engine.timers

$scoreboard players operation K-Engine.timers.tmp K-Engine.timers = K-Engine.timers.$(node).end_m K-Engine.timers
scoreboard players operation K-Engine.timers.tmp K-Engine.timers *= K-Engine.timers.timers.min_mult K-Engine.timers
$scoreboard players operation K-Engine.timers.$(node).end_ticks K-Engine.timers += K-Engine.timers.tmp K-Engine.timers

$scoreboard players operation K-Engine.timers.tmp K-Engine.timers = K-Engine.timers.$(node).end_s K-Engine.timers
scoreboard players operation K-Engine.timers.tmp K-Engine.timers *= K-Engine.timers.timers.sec_mult K-Engine.timers
$scoreboard players operation K-Engine.timers.$(node).end_ticks K-Engine.timers += K-Engine.timers.tmp K-Engine.timers

$scoreboard players operation K-Engine.timers.$(node).end_ticks K-Engine.timers += K-Engine.timers.$(node).end_t K-Engine.timers

# cleanup
scoreboard players reset K-Engine.timers.timers.hour_mult K-Engine.timers
scoreboard players reset K-Engine.timers.timers.min_mult K-Engine.timers
scoreboard players reset K-Engine.timers.timers.sec_mult K-Engine.timers

scoreboard players reset K-Engine.timers.tmp K-Engine.timers

# reverse check
$execute if score K-Engine.timers.$(node).start_ticks K-Engine.timers < K-Engine.timers.$(node).end_ticks K-Engine.timers run scoreboard players set K-Engine.timers.$(node).reverse K-Engine.timers 0
$execute if score K-Engine.timers.$(node).start_ticks K-Engine.timers > K-Engine.timers.$(node).end_ticks K-Engine.timers run scoreboard players set K-Engine.timers.$(node).reverse K-Engine.timers 1

$scoreboard players reset K-Engine.timers.$(node).end_ticks K-Engine.timers
$scoreboard players reset K-Engine.timers.$(node).start_ticks K-Engine.timers