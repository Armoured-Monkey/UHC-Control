schedule function uhc:countdown/5 5s
schedule clear uhc:lobbytick


# Spread players
execute if score start uhc.border matches 4096 run spreadplayers 0 0 450 2000 true @a[tag=uhc.player]
execute if score start uhc.border matches 2048 run spreadplayers 0 0 200 1000 true @a[tag=uhc.player]
execute if score start uhc.border matches 1024 run spreadplayers 0 0 100 500 true @a[tag=uhc.player]
execute if score start uhc.border matches 512 run spreadplayers 0 0 50 250 true @a[tag=uhc.player]

clear @a
kill @e[type=minecraft:item]

# Remove movement
execute as @a[tag=uhc.player] run attribute @s minecraft:movement_speed base set 0
execute as @a[tag=uhc.player] run attribute @s minecraft:jump_strength base set 0

# Ensures all players in Survival
gamemode survival @a[team=!uhc.spec]

advancement revoke @a everything
scoreboard objectives setdisplay sidebar
experience set @a 0 levels
experience set @a 0 points
effect clear @a[team=!uhc.spec]

title @a title {"text":"10","color":"#e25903"} 
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.1

difficulty hard