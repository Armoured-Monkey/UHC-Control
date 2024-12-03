# announces the minutes elapsed at each interval. Executed by timer.mcfunction when uhc.timer>marker = uhc.config>marker

tellraw @a ["",{"score":{"name":"minutes","objective": "uhc.timer"}, "color": "#e25903", "bold": true},{"text":" minutes have elapsed.", "color":"#d9b35c"}]
execute at @a run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
tellraw @a [{"text":"The World Border is at ", "color":"#d9b35c"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#e25903", "bold": true},{"text":" blocks across.", "color":"#d9b35c"}]
scoreboard players set marker uhc.timer 0
