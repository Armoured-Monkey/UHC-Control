# Clear Scoreboards
scoreboard objectives remove pregencount

# Clear Gamerule Changes
gamerule spectatorsGenerateChunks false
gamerule doWeatherCycle true
gamerule doDaylightCycle true
gamerule doMobSpawning true

# Reset Players
teleport @a[tag=pregen] ~ 300 ~
execute as @a[tag=pregen] if data storage vb:worldpregen {gamemode:0} run gamemode survival @s
execute as @a[tag=pregen] if data storage vb:worldpregen {gamemode:1} run gamemode creative @s
execute as @a[tag=pregen] if data storage vb:worldpregen {gamemode:2} run gamemode adventure @s
data remove storage vb:worldpregen gamemode
spreadplayers ~ ~ 0 1 false @a[tag=pregen]
tag @a[tag=pregen] remove pregen

# Reset Worldborder to Default
worldborder set 59999968
worldborder damage amount 0.2

# Chat feedback
tellraw @a ["",{"text":"Pregen complete.\n ","color":"green"}]