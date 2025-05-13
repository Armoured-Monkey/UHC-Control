# Clear Scoreboards
scoreboard objectives remove uhc.pregen

# Clear Gamerule Changes
gamerule spectatorsGenerateChunks false
gamerule doWeatherCycle true
gamerule doDaylightCycle true
gamerule doMobSpawning true

# Reset Players
teleport @a[tag=pregen] ~ 300 ~
gamemode creative @a[tag=uhc.pregen]
spreadplayers ~ ~ 0 1 false @a[tag=uhc.pregen]
tag @a[tag=uhc.pregen] remove uhc.pregen

# Reset Worldborder to Default
worldborder set 59999968
worldborder damage amount 0.2

# Chat feedback
tellraw @a ["",{"text":"Pregen complete.\n ","color":"green"}]