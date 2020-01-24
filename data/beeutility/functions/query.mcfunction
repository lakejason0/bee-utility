execute store result score @s beeamount run data get block ~ ~ ~ Bees
execute store result score @s beeadult if data block ~ ~ ~ Bees[{EntityData:{Age:0}}]
scoreboard players operation @s beebaby = @s beeamount
scoreboard players operation @s beebaby -= @s beeadult
title @s actionbar ["",{"text":"[蜜蜂助手] ","color":"gold"},{"score":{"name":"*","objective":"beeamount"}},"只蜜蜂，成年的",{"score":{"name":"*","objective":"beeadult"}},"只，幼年的",{"score":{"name":"*","objective":"beebaby"}},"只"]
scoreboard players set @a beeamount 0
scoreboard players set @s beeadult 0
scoreboard players set @s beebaby 0