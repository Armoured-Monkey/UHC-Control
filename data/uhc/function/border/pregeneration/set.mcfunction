scoreboard players set pregenmove uhc.pregen 0
execute if score pregendirection uhc.pregen matches 2 run scoreboard players add pregenset uhc.pregen 1
execute if score pregendirection uhc.pregen matches 4 run scoreboard players add pregenset uhc.pregen 1
scoreboard players add pregendirection uhc.pregen 1
execute if score pregendirection uhc.pregen matches 5 run scoreboard players set pregendirection uhc.pregen 1