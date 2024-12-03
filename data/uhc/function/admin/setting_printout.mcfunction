tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @s ["",{"text": "Configuration Printout", "bold": true, "color":"#e25903"}]
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}

# Minute Markers
tellraw @s ["",{"text": "Minute Markers: ", "color": "#d9b35c"},{"score":{"name": "marker", "objective": "uhc.config"}, "color":"#e25903"},{"text": " minutes", "color": "#d9b35c"}]

# Gentleman's Rule
execute unless score GRule uhc.config matches -1 run tellraw @s ["",{"text": "Gentleman's Rule: ", "color": "#d9b35c"},{"score":{"name": "GRule", "objective": "uhc.config"}, "color":"#e25903"},{"text": " minutes", "color": "#d9b35c"}]
execute if score GRule uhc.config matches -1 run tellraw @s ["",{"text": "No Gentleman's Rule", "color": "#d9b35c"}]

# Eternal Day/Night
execute if score Eternal uhc.config matches -1 run tellraw @s ["",{"text": "No Eternal Day/Night", "color": "#d9b35c"}]
execute if score Night uhc.config matches 0 unless score Eternal uhc.config matches -1 run tellraw @s ["",{"text": "Eternal Day: ", "color": "#d9b35c"},{"score":{"name": "Eternal", "objective": "uhc.config"}, "color":"#e25903"},{"text": " minutes", "color": "#d9b35c"}]
execute if score Night uhc.config matches 1 unless score Eternal uhc.config matches -1 run tellraw @s ["",{"text": "Eternal Night: ", "color": "#d9b35c"},{"score":{"name": "Eternal", "objective": "uhc.config"}, "color":"#e25903"},{"text": " minutes", "color": "#d9b35c"}]

tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}

# World border
tellraw @s [{"text":"The world border starts at ", "color": "#d9b35c"},{"score": {"name": "start", "objective": "uhc.border"}, "color":"#e25903"}, {"text":" blocks across. After ", "color": "#d9b35c"},{"score":{"name": "shrink","objective": "uhc.border"}, "color":"#e25903"}, {"text":" minutes the border shrinks to ", "color": "#d9b35c"},{"score":{"name": "finish","objective": "uhc.border"}, "color":"#e25903"}, {"text":" blocks across over ", "color": "#d9b35c"}, {"score":{"name": "duration", "objective":"uhc.border"}, "color":"#e25903"},{"text":" minutes.", "color": "#d9b35c"}]

tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
