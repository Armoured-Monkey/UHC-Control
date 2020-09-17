gamemode spectator @a[scores={uhc.deaths=1}]
execute if entity @a[scores={uhc.deaths=1}] run playsound minecraft:entity.lightning_bolt.thunder master @a
scoreboard players set @a[scores={uhc.deaths=1}, gamemode=spectator] uhc.deaths 0
tp @a[team=, tag=!global.ignore.pos] 0 253 0 
team join uhc.0 @a[team=]
loot replace entity @a[team=uhc.0] hotbar.0 loot uhc:book
execute store result score PlayerCount uhc.lobby if entity @a
execute store result score AdminCount uhc.lobby if entity @a[gamemode=creative]
execute store result score Current uhc.border run worldborder get
