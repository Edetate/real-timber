#the line below makes up and down rotations look a bit better by tilting the head the same way as it is facing, however it is a heavy operation and is not essential
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
execute at @s as @e[tag=edta_real_timber] if score @s rt_parent_id = $parent_id rt_part_id run function real_timber:update/do_update
scoreboard players operation $parent_id rt_part_id = @s rt_parent_id