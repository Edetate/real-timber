### Loosely based on Cloud_Wolf Entity Launcher ###

execute store result score @s rt_x run data get entity @s Pos[0] 1000000
execute store result score @s rt_z run data get entity @s Pos[2] 1000000

scoreboard players set @s rt_dy 12


execute as @a[tag=guardian_target,distance=..50,sort=nearest,limit=1] at @s run function real_timber:guardian/launch/get_target_pos


scoreboard players operation $edta_rt_target rt_x -= @s rt_x
scoreboard players operation $edta_rt_target rt_z -= @s rt_z

execute store result storage edta_rt_storage launchMotion[0] double 0.000000095 run scoreboard players get $edta_rt_target rt_x
execute store result storage edta_rt_storage launchMotion[1] double 0.1 run scoreboard players get @s rt_dy
execute store result storage edta_rt_storage launchMotion[2] double 0.000000095 run scoreboard players get $edta_rt_target rt_z
data modify entity @s Motion set from storage edta_rt_storage launchMotion
tag @s remove launch
tag @s add launched