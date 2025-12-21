# File: game/death.mcfunction
# Description: Processes a player when they die.
# Called by: game\timer\second.mcfunction

# Set the player to spectator mode.
gamemode spectator @s
team join uhc.spec @s
tag @s remove uhc.player
tag @s add uhc.spectator

# Run death sound for all players
execute at @a run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 0.5 1

# Update scoreboards
scoreboard players set @s uhc.deaths 0
execute store result score AlivePlayers uhc.stats if entity @a[tag=uhc.player]
execute store result score Spectators uhc.stats if entity @a[tag=uhc.spectator]