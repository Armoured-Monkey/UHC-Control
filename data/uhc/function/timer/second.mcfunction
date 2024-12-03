execute as @a[scores={uhc.deaths=1}] run function uhc:death
execute as @a[tag=!uhc.player,tag=!uhc.spectator] run function uhc:new_player_joined
schedule function uhc:timer/second 1s