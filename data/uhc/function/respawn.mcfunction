# Respawn a player when they have died.
# Run by an admin using /execute as <player> run function:uhc/respawn
# Target is @s - being the player getting respawned.
# Can only reliably respawn a player if they still have a teammate alive.

# Copy team number from copy to functional scoreboard
scoreboard players operation @s uhc.team = @s uhc.teamCopy
# Fix tags
tag @s remove uhc.spectator
tag @s add uhc.player
# Set team
team join uhc.1 @s[scores={uhc.team=1}]
team join uhc.2 @s[scores={uhc.team=2}]
team join uhc.3 @s[scores={uhc.team=3}]
team join uhc.4 @s[scores={uhc.team=4}]
team join uhc.5 @s[scores={uhc.team=5}]
team join uhc.6 @s[scores={uhc.team=6}]
team join uhc.7 @s[scores={uhc.team=7}]
team join uhc.8 @s[scores={uhc.team=8}]
team join uhc.9 @s[scores={uhc.team=9}]
team join uhc.10 @s[scores={uhc.team=10}]
team join uhc.11 @s[scores={uhc.team=11}]
team join uhc.12 @s[scores={uhc.team=12}]
# Teleport to an alive team mate
tp @s[team=uhc.1] @r[team=uhc.1]
tp @s[team=uhc.2] @r[team=uhc.2]
tp @s[team=uhc.3] @r[team=uhc.3]
tp @s[team=uhc.4] @r[team=uhc.4]
tp @s[team=uhc.5] @r[team=uhc.5]
tp @s[team=uhc.6] @r[team=uhc.6]
tp @s[team=uhc.7] @r[team=uhc.7]
tp @s[team=uhc.8] @r[team=uhc.8]
tp @s[team=uhc.9] @r[team=uhc.9]
tp @s[team=uhc.10] @r[team=uhc.10]
tp @s[team=uhc.11] @r[team=uhc.11]
tp @s[team=uhc.12] @r[team=uhc.12]
# Set gamemode to survival
gamemode survival @s
# Update stats scoreboard
execute store result score AlivePlayers uhc.stats if entity @a[tag=uhc.player]
execute store result score Spectators uhc.stats if entity @a[tag=uhc.spectator]