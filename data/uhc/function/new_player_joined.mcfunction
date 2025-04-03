# Called by second.mcfunction when an untagged (new) player joins the game.

# Tags as spectator and sets gamemode. 
team join uhc.spec @s
tag @s add uhc.spectator
gamemode spectator @a[tag=uhc.spectator]
execute store result score AlivePlayers uhc.stats if entity @a[tag=uhc.player]
execute store result score Spectators uhc.stats if entity @a[tag=uhc.spectator]