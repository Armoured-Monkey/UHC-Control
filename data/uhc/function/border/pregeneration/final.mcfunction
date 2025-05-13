execute if score pregenmodulus pregencount matches 1 as @a[tag=pregen] at @s run teleport @s ~ ~ ~200 0 90
execute if score pregenmodulus pregencount matches 0 as @a[tag=pregen] at @s run teleport @s ~ ~ ~-200 0 90

scoreboard players add pregenmove pregencount 1

execute unless score pregenmax pregencount = pregenmove pregencount run schedule function uhc:border/pregeneration/final 5s
execute if score pregenmax pregencount = pregenmove pregencount run function uhc:border/pregeneration/end