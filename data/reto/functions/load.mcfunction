scoreboard objectives add reto.deathDetect deathCount
scoreboard objectives add reto.eterium dummy

tellraw @a [{"text": "[RETO HARDCORE] ", "color": "gold", "bold": true}, {"text": " Datapack Cargado", "color": "yellow", "bold": false}]

data merge storage reto:db {}