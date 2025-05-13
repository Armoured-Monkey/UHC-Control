scoreboard objectives add uhc.pregen dummy

gamerule spectatorsGenerateChunks true
worldborder damage amount 0

execute store result score pregenmax uhc.pregen run worldborder get
execute if score pregenmax uhc.pregen matches ..400 run scoreboard players set pregenmax uhc.pregen 400
scoreboard players set pregenmove uhc.pregen 200
scoreboard players operation pregenmax uhc.pregen /= pregenmove uhc.pregen

scoreboard players set pregenmove uhc.pregen 0
scoreboard players set pregenset uhc.pregen 1
scoreboard players set pregendirection uhc.pregen 1

scoreboard players set pregenmod uhc.pregen 2
scoreboard players operation pregenmodulus uhc.pregen = pregenmax uhc.pregen
scoreboard players operation pregenmodulus uhc.pregen %= pregenmod uhc.pregen

data modify storage uhc:pregeneration gamemode set from entity @a[tag=uhc.pregen,limit=1] playerGameType
gamemode spectator @a[tag=uhc.pregen]
teleport @a[tag=uhc.pregen] ~ 300 ~

tellraw @a ["",{"text":"Pregen starting. This could take a while...\n ","color":"green"}]

function uhc:border/pregeneration/loop