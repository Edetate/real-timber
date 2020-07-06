scoreboard players set @s rt_timer 0
execute rotated as @s if block ~ ~-0.1 ~ minecraft:air run tp @s ~ ~-0.2 ~ ~ ~
execute rotated as @s unless block ~ ~0.2 ~ minecraft:air run tp @s ~ ~0.2 ~ ~ ~

execute at @s rotated as @s facing entity @a[tag=guardian_target,distance=..50,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ 0
execute at @s rotated as @s run tp @s ^ ^ ^0.10
function real_timber:update/update_position


scoreboard players add @s rt_timer2 1
execute if score @s rt_timer2 matches 8.. run function real_timber:guardian/every_40_ticks