# Called by leave_spectator_team_from_lobby advancement
# Removes player to spectator team when standing in the correct lobby position
scoreboard players set @s uhc.team 0
playsound block.note_block.bit master @s
title @s actionbar {"text":"You will take part in the UHC game.", "color":"#E25903"}
advancement revoke @s only uhc:utility/leave_spectator_team_from_lobby