execute if score pregenmove pregencount = pregenset pregencount run function uhc:border/pregeneration/set

execute as @a[tag=pregen] at @s if score pregendirection pregencount matches 1 run teleport @s ~ ~ ~-200 0 90
execute as @a[tag=pregen] at @s if score pregendirection pregencount matches 2 run teleport @s ~200 ~ ~ 0 90
execute as @a[tag=pregen] at @s if score pregendirection pregencount matches 3 run teleport @s ~ ~ ~200 0 90
execute as @a[tag=pregen] at @s if score pregendirection pregencount matches 4 run teleport @s ~-200 ~ ~ 0 90

scoreboard players add pregenmove pregencount 1

execute unless score pregenset pregencount > pregenmax pregencount run schedule function uhc:border/pregeneration/loop 5s
execute if score pregenset pregencount > pregenmax pregencount run function uhc:border/pregeneration/final