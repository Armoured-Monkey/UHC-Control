execute if score pregenmove uhc.pregen = pregenset uhc.pregen run function uhc:border/pregeneration/set

execute as @a[tag=uhc.pregen] at @s if score pregendirection uhc.pregen matches 1 run teleport @s ~ ~ ~-200 0 90
execute as @a[tag=uhc.pregen] at @s if score pregendirection uhc.pregen matches 2 run teleport @s ~200 ~ ~ 0 90
execute as @a[tag=uhc.pregen] at @s if score pregendirection uhc.pregen matches 3 run teleport @s ~ ~ ~200 0 90
execute as @a[tag=uhc.pregen] at @s if score pregendirection uhc.pregen matches 4 run teleport @s ~-200 ~ ~ 0 90

scoreboard players add pregenmove uhc.pregen 1

title @a actionbar ["",{"text":"Pregeneration in Progress...","color":"#E25903"}]

execute unless score pregenset uhc.pregen > pregenmax uhc.pregen run schedule function uhc:border/pregeneration/loop 5s
execute if score pregenset uhc.pregen > pregenmax uhc.pregen run function uhc:border/pregeneration/final