scoreboard objectives add reto.value dummy

scoreboard players set #economic_value reto.value 0
scoreboard players set #amount reto.value 0
scoreboard players set #total reto.value 0
scoreboard players set #amount reto.eterium 0

execute store result score #economic_value reto.value run data get entity @s SelectedItem.tag.reto.moneyPaper.value 0.99
execute store result score #amount reto.value run data get entity @s SelectedItem.Count 0.99

execute if score #economic_value reto.value matches 1.. if score #amount reto.value matches 1.. run scoreboard players operation #amount reto.value *= #economic_value reto.value
execute if score #economic_value reto.value matches 1.. if score #amount reto.value matches 1.. run scoreboard players operation @s reto.eterium += #amount reto.value

scoreboard objectives remove reto.value