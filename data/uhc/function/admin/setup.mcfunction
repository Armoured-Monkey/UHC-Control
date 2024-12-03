# Setup command
# Called by: user
# 

# Scoreboards
# Lobby Scoreboard Information Display.
scoreboard objectives add uhc.lobby dummy {"text": "UHC Lobby", "bold": true,"color": "#e25903"}
scoreboard players set welcome uhc.lobby 1004
scoreboard players set spacer1 uhc.lobby 1003
scoreboard players set info uhc.lobby 1002
scoreboard players set link uhc.lobby 1001
scoreboard players set spacer2 uhc.lobby 1000
scoreboard players display numberformat welcome uhc.lobby blank
scoreboard players display numberformat info uhc.lobby blank
scoreboard players display numberformat link uhc.lobby blank
scoreboard players display numberformat spacer1 uhc.lobby blank
scoreboard players display numberformat spacer2 uhc.lobby blank
scoreboard players display name welcome uhc.lobby {"text":"Welcome!", "color":"#d9b35c","bold": true}
scoreboard players display name spacer1 uhc.lobby {"text":" "}
scoreboard players display name info uhc.lobby {"text":"More Information:"}
scoreboard players display name link uhc.lobby {"text":"linktr.ee/armouredmonkey"}
scoreboard players display name AdminCount uhc.lobby {"text":"Admin Count:", "color":"#7f3202"}
scoreboard players display name PlayerCount uhc.lobby {"text":"Player Count:", "color":"#7f3202"}
scoreboard players display name spacer2 uhc.lobby {"text":" "}
scoreboard players display numberformat AdminCount uhc.lobby styled {"color": "#d9b35c"}
scoreboard players display numberformat PlayerCount uhc.lobby styled {"color": "#d9b35c"}
scoreboard objectives setdisplay sidebar uhc.lobby
# In-game display scoreboards
scoreboard objectives add uhc.kills minecraft.custom:minecraft.player_kills "Kills"
scoreboard objectives add uhc.stats dummy "Statistics"
scoreboard players set AlivePlayers uhc.stats 0
scoreboard players set Spectators uhc.stats 0
scoreboard players set Timer uhc.stats 0
scoreboard players display name AlivePlayers uhc.stats {"text":"Alive: ", "color":"#7f3202"}
scoreboard players display name Spectators uhc.stats {"text":"Spectators: ", "color":"#7f3202"}
scoreboard players display name Timer uhc.stats {"text":"Timer: ", "color":"#7f3202"}
scoreboard players display numberformat AlivePlayers uhc.stats styled {"color": "#d9b35c"}
scoreboard players display numberformat Spectators uhc.stats styled {"color": "#d9b35c"}
scoreboard players display numberformat Timer uhc.stats styled {"color": "#d9b35c"}
scoreboard objectives add uhc.health health
scoreboard objectives modify uhc.health rendertype hearts
scoreboard objectives add uhc.deaths deathCount
# Background scoreboards
scoreboard objectives add uhc.team trigger "Join Team Number"
scoreboard objectives add uhc.border dummy "UHC Border Configuration"
scoreboard objectives add uhc.timer dummy "UHC Timer"
scoreboard objectives add uhc.interface dummy "UHC Module Interface"
scoreboard objectives add uhc.config dummy "Configuration Options"
scoreboard players set LoadModules uhc.interface 1
scoreboard players set picker uhc.config 0

# Create teams and default team settings.
# 0 pre-teams - white
team add uhc.0
team modify uhc.0 color white
team modify uhc.0 friendlyFire false
# 1-10 teams
team add uhc.1
team modify uhc.1 color blue
team add uhc.2
team modify uhc.2 color dark_aqua
team add uhc.3
team modify uhc.3 color dark_blue
team add uhc.4
team modify uhc.4 color dark_green
team add uhc.5
team modify uhc.5 color dark_purple
team add uhc.6
team modify uhc.6 color dark_red
team add uhc.7
team modify uhc.7 color gold
team add uhc.8
team modify uhc.8 color green
team add uhc.9
team modify uhc.9 color light_purple
team add uhc.10
team modify uhc.10 color red
team add uhc.11
team modify uhc.11 color aqua
team add uhc.12
team modify uhc.12 color yellow
# -1 spectators - black
team add uhc.spec
team modify uhc.spec color gray
# Set Friendly Fire to true (this is the default and can be changed using the Control Book)
team modify uhc.1 friendlyFire true
team modify uhc.2 friendlyFire true
team modify uhc.3 friendlyFire true
team modify uhc.4 friendlyFire true
team modify uhc.5 friendlyFire true
team modify uhc.6 friendlyFire true
team modify uhc.7 friendlyFire true
team modify uhc.8 friendlyFire true
team modify uhc.9 friendlyFire true
team modify uhc.10 friendlyFire true
team modify uhc.12 friendlyFire true
scoreboard players set FriendlyFire uhc.config 1


# Set default gamerule settings and set config scoreboard to reflect this. 
gamerule doInsomnia true
scoreboard players set PhantomSpawning uhc.config 1
gamerule doPatrolSpawning true
scoreboard players set DisablePatrols uhc.config 1
gamerule doTraderSpawning true
scoreboard players set TraderSpawning uhc.config 1
gamerule disableRaids false
scoreboard players set DisableRaids uhc.config 0
gamerule announceAdvancements true
scoreboard players set AnnounceAdvancements uhc.config 1
gamerule naturalRegeneration false 
scoreboard players set NaturalRegen uhc.config 0
gamerule doFireTick true 
scoreboard players set FireTick uhc.config 1

gamerule doWeatherCycle false
weather clear

# Set default minute marker options
scoreboard players set marker uhc.config 20
scoreboard players set marker uhc.timer 0

# Generate the lobby and centre world on 0,0 
setworldspawn 0 253 0
tp @a 0 260 0
execute positioned 0 255 0 run fill ~-25 250 ~-25 ~24 253 ~24 barrier hollow
execute positioned 0 255 0 run fill ~-24 253 ~-24 ~23 253 ~23 air
schedule function uhc:lobbytick 1t
summon item_display 0 258 0 {item:{id:"minecraft:enchanted_golden_apple"},item_display:"fixed",transformation:[5,0,0,0,0,5,0,0,0,0,5,0,0,0,0,1], billboard:"vertical", Tags:[uhc.display]}
summon text_display 0 254 0 {text:"{\"text\":\" 🗡 UHC Control ☠ \",\"color\":\"#e25903\",\"bold\":false}",alignment:"center",background:0,transformation:[5,0,0,0,0,5,0,0,0,0,5,0,0,0,0,1], billboard:"vertical", Tags:[uhc.display]}
# World settings for whilst in lobby. These are reset upon game start.
gamerule commandBlockOutput false
gamerule spectatorsGenerateChunks true
gamerule randomTickSpeed 0
gamerule doDaylightCycle false
gamerule spawnRadius 0
gamerule fallDamage false
time set noon
difficulty peaceful

# Set default world border options and orient world border around 0,0
worldborder center 0 0
worldborder warning distance 8
worldborder damage amount 1
worldborder damage buffer 1
worldborder set 4096
scoreboard players set duration uhc.border 100
scoreboard players set start uhc.border 4096
scoreboard players set finish uhc.border 256
scoreboard players set shrink uhc.border 100

# Announce
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @a {"text":"Setup Complete, use the interactive book to configure the UHC event.", "color":"#E25903"}
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}