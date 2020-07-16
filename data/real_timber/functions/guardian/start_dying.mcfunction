scoreboard players set @s rt_timer 0
tag @s add dying
scoreboard players operation $current_id rt_build_id = @s rt_build_id

playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.01
playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.01

function real_timber:guardian/rundying