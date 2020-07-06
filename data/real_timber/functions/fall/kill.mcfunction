scoreboard players operation $id_to_kill rt_build_id = @s rt_build_id
execute as @e[type=armor_stand,tag=edta_real_timber] if score @s rt_build_id = $id_to_kill rt_build_id run kill @s
