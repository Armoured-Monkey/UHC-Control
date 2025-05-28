# Announce gentleman's rule is over.
# Called by timer/minute

tellraw @a {"text":"The Gentleman's Rule is now over.", "color":"#d9b35c"}
execute at @a run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.5 1