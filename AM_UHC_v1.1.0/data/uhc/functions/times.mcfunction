scoreboard players add ticks uhc.timer 1

# World border
execute if score shrink uhc.border = ticks uhc.timer run tellraw @a {"text":"World border has started shrinking", "color":"#FFC300"}
# Final border is 256
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 1200 if score finish uhc.border matches 256 run worldborder set 256 1200
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 2400 if score finish uhc.border matches 256 run worldborder set 256 2400
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 3600 if score finish uhc.border matches 256 run worldborder set 256 3600
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 4800 if score finish uhc.border matches 256 run worldborder set 256 4800
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 6000 if score finish uhc.border matches 256 run worldborder set 256 6000
# Final border is 128
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 1200 if score finish uhc.border matches 128 run worldborder set 128 1200
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 2400 if score finish uhc.border matches 128 run worldborder set 128 2400
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 3600 if score finish uhc.border matches 128 run worldborder set 128 3600
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 4800 if score finish uhc.border matches 128 run worldborder set 128 4800
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 6000 if score finish uhc.border matches 128 run worldborder set 128 6000
# Final border is 64
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 1200 if score finish uhc.border matches 64 run worldborder set 64 1200
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 2400 if score finish uhc.border matches 64 run worldborder set 64 2400
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 3600 if score finish uhc.border matches 64 run worldborder set 64 3600
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 4800 if score finish uhc.border matches 64 run worldborder set 64 4800
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 6000 if score finish uhc.border matches 64 run worldborder set 64 6000
# Final border is 32
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 1200 if score finish uhc.border matches 32 run worldborder set 32 1200
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 2400 if score finish uhc.border matches 32 run worldborder set 32 2400
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 3600 if score finish uhc.border matches 32 run worldborder set 32 3600
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 4800 if score finish uhc.border matches 32 run worldborder set 32 4800
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 6000 if score finish uhc.border matches 32 run worldborder set 32 6000
# Final border is 128
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 1200 if score finish uhc.border matches 16 run worldborder set 16 1200
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 2400 if score finish uhc.border matches 16 run worldborder set 16 2400
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 3600 if score finish uhc.border matches 16 run worldborder set 16 3600
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 4800 if score finish uhc.border matches 16 run worldborder set 16 4800
execute if score shrink uhc.border = ticks uhc.timer if score duration uhc.border matches 6000 if score finish uhc.border matches 16 run worldborder set 16 6000

# Enforced Gentlemen's Rule
execute if score GRule uhc.timer = ticks uhc.timer run tellraw @a {"text":"Gentleman's Rule is now over", "color":"#FFC300"}
execute if score GRule uhc.timer = ticks uhc.timer run playsound minecraft:entity.wolf.howl master @a

# Eternal Time
# Day - Light uhc.timer = 1
execute if score Eternal uhc.timer = ticks uhc.timer if score Light uhc.timer matches 1 run function uhc:options/eternaltime/eternalday
# Night - Light uhc.timer = 2
execute if score Eternal uhc.timer = ticks uhc.timer if score Light uhc.timer matches 2 run function uhc:options/eternaltime/eternalnight


# Notifications
# 20 minutes/24000 ticks
execute if score ticks uhc.timer matches 24000 run tellraw @a {"text":"20 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 24000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 24000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 40 minutes/48000 ticks
execute if score ticks uhc.timer matches 48000 run tellraw @a {"text":"40 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 48000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 48000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 60 minutes/72000 ticks
execute if score ticks uhc.timer matches 72000 run tellraw @a {"text":"60 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 72000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 72000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 80 minutes/96000 ticks
execute if score ticks uhc.timer matches 96000 run tellraw @a {"text":"80 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 96000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 96000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 100 minutes/120000 ticks
execute if score ticks uhc.timer matches 120000 run tellraw @a {"text":"100 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 120000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 120000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 120 minutes/144000 ticks
execute if score ticks uhc.timer matches 144000 run tellraw @a {"text":"120 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 144000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 144000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 140 minutes/168000 ticks
execute if score ticks uhc.timer matches 168000 run tellraw @a {"text":"140 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 168000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 168000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 160 minutes/192000 ticks
execute if score ticks uhc.timer matches 192000 run tellraw @a {"text":"160 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 192000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 192000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 180 minutes/216000 ticks
execute if score ticks uhc.timer matches 216000 run tellraw @a {"text":"180 minutes", "color":"#FFC300"}
execute if score ticks uhc.timer matches 216000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 216000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]
# 200 minutes/240000 ticks
execute if score ticks uhc.timer matches 240000 run tellraw @a {"text":"200 minutes - This is the last timer announcement within the pack.", "color":"#FFC300"}
execute if score ticks uhc.timer matches 240000 run playsound minecraft:entity.firework_rocket.launch master @a
execute if score ticks uhc.timer matches 240000 run tellraw @a [{"text":"The World Border is at ", "color":"#FFC300"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#0FF992"},{"text":" across.", "color":"#FFC300"}]


schedule function uhc:times 1t