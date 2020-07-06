scoreboard players set @s rt_timer2 0
playsound minecraft:block.wood.step hostile @a ~ ~ ~
execute if predicate real_timber:50percentchance run function real_timber:guardian/launch/launch