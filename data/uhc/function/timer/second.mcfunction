# Run death sequence if someone has died
execute as @a[scores={uhc.deaths=1}] run function #uhc:game/death

# Run new player joined sequence if someone has joined
execute as @a[tag=!uhc.joined] run function uhc:new_player_joined

# Checks all players to ensure that their modified attributes are not left over from the lobby
execute as @a[tag=!uhc.attributes_reset,tag=!uhc.spectator] run function uhc:reset_attributes

schedule function #uhc:game/second 1s