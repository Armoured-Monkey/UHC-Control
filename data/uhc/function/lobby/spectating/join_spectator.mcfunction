# Called by join_spectator_team_from_lobby advancement
# Adds player to spectator team when standing in the correct lobby position
scoreboard players set @s uhc.team -1
title @s actionbar {"text":"You will spectate the UHC game.", "color":"#E25903"}
advancement revoke @s only uhc:utility/join_spectator_team_from_lobby
tp @s 0.5 251.0 0.5
playsound block.note_block.bit master @s 0.5 251.0 0.5
