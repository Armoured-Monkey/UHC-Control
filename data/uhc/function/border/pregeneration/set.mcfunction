scoreboard players set pregenmove pregencount 0
execute if score pregendirection pregencount matches 2 run scoreboard players add pregenset pregencount 1
execute if score pregendirection pregencount matches 4 run scoreboard players add pregenset pregencount 1
scoreboard players add pregendirection pregencount 1
execute if score pregendirection pregencount matches 5 run scoreboard players set pregendirection pregencount 1