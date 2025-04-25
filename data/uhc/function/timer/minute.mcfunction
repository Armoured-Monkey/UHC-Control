# Handles timings of events
# Schedules self with time 1 minute

# Timers
scoreboard players add minutes uhc.timer 1
scoreboard players add Timer uhc.stats 1
scoreboard players add marker uhc.timer 1
scoreboard players add border_status uhc.timer 1

# Gentleman's Rule
execute if score GRule uhc.config = minutes uhc.timer run schedule function uhc:timer/gr_over 5s

# World Border
execute store result score Current uhc.border run worldborder get
execute if score shrink uhc.border = minutes uhc.timer run tellraw @a {"text":"World border has started shrinking.", "color":"#E25903"}

# Eternal Time
# Day - Night uhc.timer = 0
execute if score Eternal uhc.config = minutes uhc.timer if score Night uhc.config matches 0 run function uhc:options/eternaltime/eternalday
# Night - Night uhc.timer = 1
execute if score Eternal uhc.config = minutes uhc.timer if score Night uhc.config matches 1 run function uhc:options/eternaltime/eternalnight

##### Temp #####
# Final border is 256
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 20 if score finish uhc.border matches 256 run worldborder set 256 1200
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 40 if score finish uhc.border matches 256 run worldborder set 256 2400
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 60 if score finish uhc.border matches 256 run worldborder set 256 3600
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 80 if score finish uhc.border matches 256 run worldborder set 256 4800
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 100 if score finish uhc.border matches 256 run worldborder set 256 6000
# Final border is 128
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 20 if score finish uhc.border matches 128 run worldborder set 128 1200
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 40 if score finish uhc.border matches 128 run worldborder set 128 2400
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 60 if score finish uhc.border matches 128 run worldborder set 128 3600
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 80 if score finish uhc.border matches 128 run worldborder set 128 4800
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 100 if score finish uhc.border matches 128 run worldborder set 128 6000
# Final border is 64
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 20 if score finish uhc.border matches 64 run worldborder set 64 1200
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 40 if score finish uhc.border matches 64 run worldborder set 64 2400
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 60 if score finish uhc.border matches 64 run worldborder set 64 3600
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 80 if score finish uhc.border matches 64 run worldborder set 64 4800
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 100 if score finish uhc.border matches 64 run worldborder set 64 6000
# Final border is 32
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 20 if score finish uhc.border matches 32 run worldborder set 32 1200
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 40 if score finish uhc.border matches 32 run worldborder set 32 2400
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 60 if score finish uhc.border matches 32 run worldborder set 32 3600
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 80 if score finish uhc.border matches 32 run worldborder set 32 4800
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 100 if score finish uhc.border matches 32 run worldborder set 32 6000
# Final border is 128
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 20 if score finish uhc.border matches 16 run worldborder set 16 1200
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 40 if score finish uhc.border matches 16 run worldborder set 16 2400
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 60 if score finish uhc.border matches 16 run worldborder set 16 3600
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 80 if score finish uhc.border matches 16 run worldborder set 16 4800
execute if score shrink uhc.border = minutes uhc.timer if score duration uhc.border matches 100 if score finish uhc.border matches 16 run worldborder set 16 6000
##### Temp #####

# Detect markers and border status updates
execute if score marker uhc.timer = marker uhc.config run function uhc:timer/time_marker
execute if score shrink uhc.border <= minutes uhc.timer if score border_status uhc.timer = border_status uhc.config run function uhc:timer/border_status_update

# Update Stats scoreboard
execute store result score AlivePlayers uhc.stats if entity @a[tag=uhc.player]
execute store result score Spectators uhc.stats if entity @a[tag=uhc.spectator]

# Schedule
schedule function uhc:timer/minute 60s