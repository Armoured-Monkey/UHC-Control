# Create Teams and set colours
# 0 pre-teams - dark_gray
# 1 blue
# 2 dark_aqua
# 3 dark_blue
# 4 dark_green
# 5 dark_purple
# 6 dark_red
# 7 gold
# 8 green
# 9 light_purple
# 10 red
# 11 spectators - black
# 12 dummy - white

team add uhc.0
team add uhc.1
team add uhc.2
team add uhc.3
team add uhc.4
team add uhc.5
team add uhc.6
team add uhc.7
team add uhc.8
team add uhc.9
team add uhc.10
team add uhc.11
team add uhc.12
team modify uhc.0 color dark_gray
team modify uhc.1 color aqua
team modify uhc.1 color blue
team modify uhc.2 color dark_aqua
team modify uhc.3 color dark_blue
team modify uhc.4 color dark_green
team modify uhc.5 color dark_purple
team modify uhc.6 color dark_red
team modify uhc.7 color gold
team modify uhc.8 color green
team modify uhc.9 color light_purple
team modify uhc.10 color red
team modify uhc.11 color black
team modify uhc.12 color white
team modify uhc.0 friendlyFire false

# Default Options: 
# Friendly Fire - True
team modify uhc.1 friendlyFire true
team modify uhc.2 friendlyFire true
team modify uhc.3 friendlyFire true
team modify uhc.4 friendlyFire true
team modify uhc.5 friendlyFire true
team modify uhc.6 friendlyFire true
team modify uhc.7 friendlyFire true
team modify uhc.8 friendlyFire true
team modify uhc.9 friendlyFire true
team modify uhc.10 friendlyFire true
team modify uhc.11 friendlyFire true
team modify uhc.12 friendlyFire true
# Gamerules
gamerule doInsomnia true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true
gamerule disableRaids false
gamerule announceAdvancements true
gamerule naturalRegeneration false 
gamerule doFireTick true 
gamerule commandBlockOutput false
gamerule spectatorsGenerateChunks false
gamerule randomTickSpeed 0
gamerule doDaylightCycle false
gamerule spawnRadius 0
gamerule fallDamage false

# Scoreboards
scoreboard objectives add uhc.deaths deathCount "deaths"
scoreboard objectives add uhc.health health "Health"
scoreboard objectives add uhc.kills minecraft.custom:minecraft.player_kills "Kills"
scoreboard objectives add uhc.team trigger "team_no"
scoreboard objectives add uhc.border dummy
scoreboard objectives add uhc.lobby dummy "Lobby"
scoreboard objectives setdisplay sidebar uhc.lobby
scoreboard objectives add uhc.timer dummy
scoreboard objectives add uhc.interface
scoreboard players set loadModules uhc.interface 1

# Lobby
setworldspawn 0 253 0
execute positioned 0 255 0 run fill ~-12 250 ~-12 ~11 253 ~11 barrier hollow
execute positioned 0 255 0 run fill ~-11 253 ~-11 ~10 253 ~10 air
tp @a[tag=!global.ignore.pos] 0 253 0
time set noon
schedule function uhc:particles 1t
schedule function uhc:teams/team_selector 1t

# World border
worldborder center 0 0
worldborder warning distance 8
worldborder damage amount 1
worldborder damage buffer 1

# Announce
tellraw @a {"text":"Setup Complete, use book to configure UHC.", "color":"#FFC300"}

loot replace entity @a[team=uhc.0] hotbar.0 loot uhc:book