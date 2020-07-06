scoreboard players add @s rt_timer 1
tp @s ~ ~-3 ~
function real_timber:update/update_position

execute as @e[type=armor_stand,tag=edta_real_timber,tag=launched, distance=..75] run kill @s

scoreboard players operation $current_id rt_build_id = @s rt_build_id
execute if score @s rt_timer matches 4.. as @e[type=armor_stand,tag=edta_real_timber,tag=guardian] if score @s rt_build_id = $current_id rt_build_id run kill @s