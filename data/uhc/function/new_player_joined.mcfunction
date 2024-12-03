# Called by second.mcfunction when an untagged (new) player joins the game.

# Tags as spectator and sets gamemode. 
team join uhc.spec @s
tag @s add uhc.spectator
gamemode spectator @a[tag=uhc.spectator]