# announces the status of the worldborder. Executed by timer.mcfunction when uhc.timer>border_status = uhc.config>border_status

tellraw @a [{"text":"The World Border is at ", "color":"#d9b35c"},{"score":{"name":"Current","objective":"uhc.border"}, "color":"#e25903", "bold": true},{"text":" blocks across.", "color":"#d9b35c"}]
scoreboard players set marker uhc.timer 0
