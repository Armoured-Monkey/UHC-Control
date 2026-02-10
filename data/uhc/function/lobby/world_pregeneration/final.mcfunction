execute if score pregenmodulus uhc.pregen matches 1 as @a[tag=uhc.pregen] at @s run teleport @s ~ ~ ~200 0 90
execute if score pregenmodulus uhc.pregen matches 0 as @a[tag=uhc.pregen] at @s run teleport @s ~ ~ ~-200 0 90

scoreboard players add pregenmove uhc.pregen 1

execute unless score pregenmax uhc.pregen = pregenmove uhc.pregen run schedule function uhc:lobby/world_pregeneration/final 5s
execute if score pregenmax uhc.pregen = pregenmove uhc.pregen run function uhc:lobby/world_pregeneration/end