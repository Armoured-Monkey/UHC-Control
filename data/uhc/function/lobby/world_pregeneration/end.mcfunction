# Clear Scoreboards
scoreboard objectives remove uhc.pregen

gamerule minecraft:spectators_generate_chunks false

# Put player back in the lobby
teleport @a[tag=pregen] ~ 300 ~
gamemode creative @a[tag=uhc.pregen]
spreadplayers ~ ~ 0 1 false @a[tag=uhc.pregen]
tag @a[tag=uhc.pregen] remove uhc.pregen

# Reset Worldborder damage settings
worldborder damage amount 0.2

title @a actionbar ["",{"text":"Pregeneration Complete!","color":"#E25903"}]