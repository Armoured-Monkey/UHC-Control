# Called by admin/setup.mcfunction
# Ticking in lobby

tp @a[team=] 0 253 0
team join uhc.0 @a[team=]
loot replace entity @a hotbar.0 loot uhc:book
execute store result score PlayerCount uhc.lobby if entity @a[tag=uhc.player]
execute store result score AdminCount uhc.lobby if entity @a[gamemode=creative]

kill @e[type=item,x=-25,y=250,z=-25,dx=51,dy=5,dz=51]

# Enable Team Picker for all players if configured to do so. 
execute if score picker uhc.config matches 1 run scoreboard players enable @a uhc.team
execute if score spectator uhc.config matches 1 run scoreboard players enable @a uhc.spectator

# Team Picker enabled for UHC Admins regardless of setting
scoreboard players enable @a[gamemode=creative] uhc.spectator
scoreboard players enable @a[gamemode=creative] uhc.team


effect give @a resistance 1 100 true
effect give @a weakness 1 100 true

# Join players to teams based on scoreboard number that is created via team selector in book.
team join uhc.spec @a[scores={uhc.team=-1}]
team join uhc.0 @a[scores={uhc.team=0}]
team join uhc.1 @a[scores={uhc.team=1}]
team join uhc.2 @a[scores={uhc.team=2}]
team join uhc.3 @a[scores={uhc.team=3}]
team join uhc.4 @a[scores={uhc.team=4}]
team join uhc.5 @a[scores={uhc.team=5}]
team join uhc.6 @a[scores={uhc.team=6}]
team join uhc.7 @a[scores={uhc.team=7}]
team join uhc.8 @a[scores={uhc.team=8}]
team join uhc.9 @a[scores={uhc.team=9}]
team join uhc.10 @a[scores={uhc.team=10}]


scoreboard players set @a[team=uhc.0] uhc.team 0
scoreboard players set @a[team=uhc.0] uhc.spectator 0
tag @a[team=uhc.spec] add uhc.spectator
tag @a[team=uhc.spec] remove uhc.player
tag @a[team=uhc.0] remove uhc.player
tag @a[team=!uhc.spec, team=!uhc.0] add uhc.player
tag @a[team=!uhc.spec] remove uhc.spectator


schedule function uhc:lobbytick 1t