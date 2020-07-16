scoreboard players set @s rt_timer2 0
playsound minecraft:block.wood.step hostile @a ~ ~ ~
execute if predicate real_timber:50percentchance run function real_timber:guardian/launch/launch

execute if predicate real_timber:50percentchance if entity @a[distance=0..4] run tellraw @a[distance=0..30] [{"text":"<Spirit Tree> Are you trying to hurt me or hug me? Your little weapons can not hurt a mighty Spirit Tree! Just a little closer for your FINAL hug!","color":"dark_green"}]
execute if predicate real_timber:50percentchance if entity @e[type=arrow,distance=0..10,nbt={inGround:0b}] run tellraw @a[distance=0..30] [{"text":"<Spirit Tree> Are you trying to hurt me with those needles? You mortals are funny!","color":"dark_green"}]
execute if predicate real_timber:50percentchance if block ~ ~-0.2 ~ minecraft:lava run tellraw @a[distance=0..30] [{"text":"<Spirit Tree> Ok, I admit, that sort of is hot. But you'll need something more solid to deal with a mighty Spirit Tree!","color":"dark_green"}]
execute if predicate real_timber:50percentchance if block ~ ~-0.2 ~ minecraft:magma_block run tellraw @a[distance=0..30] [{"text":"<Spirit Tree> AW!","color":"dark_green"}]