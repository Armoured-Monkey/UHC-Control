# Called by function: admin/setup
# Sets all default settings

## Game Rules
function uhc:options/game_rules/announce_advancements_true
function uhc:options/game_rules/fire_tick_false
function uhc:options/game_rules/friendly_fire_true
function uhc:options/game_rules/patrol_spawning_true
function uhc:options/game_rules/phantom_spawning_true
function uhc:options/game_rules/raids_true
function uhc:options/game_rules/regeneration_false
function uhc:options/game_rules/trader_true

## World Border
function uhc:border/duration/100
function uhc:border/end/256
function uhc:border/start/4096
function uhc:border/shrink/100

## Timings
function uhc:options/marker/20
scoreboard players set marker_compare uhc.config 20
function uhc:options/border_updates/10
function uhc:options/gentlemensrule/20
function uhc:options/eternaltime/20
function uhc:options/eternaltime/day