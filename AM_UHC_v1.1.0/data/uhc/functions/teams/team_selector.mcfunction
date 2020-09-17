# 0 pre-teams - dark_gray
# 1 blue
# 2 dark_aqua
# 3 dark_blue
# 4 dark_green
# 5 dark_purple
# 6 dark_red
# 7 gold
# 8 green
# 9 light_purple
# 10 red
# 11 spectators - black
# 12 solo - white

scoreboard players enable @a uhc.team

# Join players to teams based on scoreboard number that is created via team selector in book.
team join uhc.1 @a[scores={uhc.team=1}]
team join uhc.2 @a[scores={uhc.team=2}]
team join uhc.3 @a[scores={uhc.team=3}]
team join uhc.4 @a[scores={uhc.team=4}]
team join uhc.5 @a[scores={uhc.team=5}]
team join uhc.6 @a[scores={uhc.team=6}]
team join uhc.7 @a[scores={uhc.team=7}]
team join uhc.8 @a[scores={uhc.team=8}]
team join uhc.9 @a[scores={uhc.team=9}]
team join uhc.10 @a[scores={uhc.team=10}]
team join uhc.11 @a[scores={uhc.team=11}]
team join uhc.12 @a[scores={uhc.team=12}]
team join uhc.0 @a[team=uhc.12]
scoreboard players set @a[team=uhc.0] uhc.team 0

# Repeat - is canceled when start.mcfuntion happens.
schedule function uhc:teams/team_selector 1t