execute store result score @s beeamount run data get block ~ ~ ~ Bees
#region query "Bee 1"'s age 
execute store result score @s beeage if data block ~ ~ ~ Bees[0].EntityData.Age run data get block ~ ~ ~ Bees[0].EntityData.Age
execute if data block ~ ~ ~ Bees[0].EntityData.Age if score @s beeage matches 0.. run scoreboard players add @s beeadult 1
execute if data block ~ ~ ~ Bees[0].EntityData.Age if score @s beeage matches ..-1 run scoreboard players add @s beebaby 1
#endregion
#region query "Bee 2"'s age 
execute store result score @s beeage if data block ~ ~ ~ Bees[1].EntityData.Age run data get block ~ ~ ~ Bees[1].EntityData.Age
execute if data block ~ ~ ~ Bees[1].EntityData.Age if score @s beeage matches 0.. run scoreboard players add @s beeadult 1
execute if data block ~ ~ ~ Bees[1].EntityData.Age if score @s beeage matches ..-1 run scoreboard players add @s beebaby 1
#endregion
#region query "Bee 3"'s age 
execute store result score @s beeage if data block ~ ~ ~ Bees[2].EntityData.Age run data get block ~ ~ ~ Bees[2].EntityData.Age
execute if data block ~ ~ ~ Bees[2].EntityData.Age if score @s beeage matches 0.. run scoreboard players add @s beeadult 1
execute if data block ~ ~ ~ Bees[2].EntityData.Age if score @s beeage matches ..-1 run scoreboard players add @s beebaby 1
#endregion
title @s actionbar ["",{"text":"[蜜蜂助手] ","color":"gold"},{"score":{"name":"*","objective":"beeamount"}},"只蜜蜂，成年的",{"score":{"name":"*","objective":"beeadult"}},"只，幼年的",{"score":{"name":"*","objective":"beebaby"}},"只"]
#region reset scoreboards
#shouldn't use "reset" operation, which may cause a null result
scoreboard players set @s beeamount 0
scoreboard players set @s beeadult 0
scoreboard players set @s beebaby 0
scoreboard players set @s beeage 0
#endregion