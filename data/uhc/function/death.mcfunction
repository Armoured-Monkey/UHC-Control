# Called by second.mcfunction whenever a player has died. 
# as @s

gamemode spectator @s
team join uhc.spec @s
tag @s remove uhc.player
tag @s add uhc.spectator

effect give @s night_vision infinite 1 true
scoreboard players set @s uhc.deaths 0

# Run death sound for all players
execute at @a run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 0.75 1

# Update Stats scoreboard
execute store result score AlivePlayers uhc.stats if entity @a[tag=uhc.player]
execute store result score Spectators uhc.stats if entity @a[tag=uhc.spectator]

