schedule function uhc:countdown/5 5s
schedule clear #uhc:lobby/second


# Spread players
execute if score start uhc.border matches 4096 run spreadplayers 0 0 1000 2030 true @a[tag=uhc.player]
execute if score start uhc.border matches 2048 run spreadplayers 0 0 450 1015 true @a[tag=uhc.player]
execute if score start uhc.border matches 1024 run spreadplayers 0 0 200 505 true @a[tag=uhc.player]
execute if score start uhc.border matches 512 run spreadplayers 0 0 100 250 true @a[tag=uhc.player]

clear @a
kill @e[type=minecraft:item]

# Set everyone in team 0 to spectator team
team join uhc.spec @a[team=uhc.0]
scoreboard players set @a[team=uhc.spec] uhc.team -1
tag @a[team=!uhc.spec] add uhc.player
tag @a[team=uhc.spec] add uhc.spectator
gamemode spectator @a[team=uhc.spec]

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

# Copy Team Scoreboard
scoreboard players operation @a uhc.teamCopy = @a uhc.team

title @a title {"text":"10","color":"#e25903"} 
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.1

difficulty hard