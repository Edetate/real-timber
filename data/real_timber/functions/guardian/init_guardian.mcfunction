tag @s remove falling
execute as @a[distance=..20] if score @s rt_build_id = $id_pool rt_build_id run tag @s add guardian_target
scoreboard players operation $current_id rt_build_id = @s rt_build_id
scoreboard players set @s rt_timer 0
execute as @e[type=armor_stand,tag=edta_real_timber] if score @s rt_build_id = $current_id rt_build_id run tag @s add guardian
execute as @e[type=armor_stand,tag=edta_real_timber,tag=guardian,distance=2..3,limit=1] at @s run function real_timber:guardian/create_nameplate
scoreboard players operation @s rt_tree_type = $this_tree_type rt_tree_type

tellraw @a[distance=..30] [{"text":"<Spirit Tree> You have destroyed enough trees, it is time for you to die, ","color":"dark_green"},{"selector":"@a[tag=guardian_target,sort=nearest,limit=1]","color":"dark_green"},{"text":"!","color":"dark_green"}]

function real_timber:guardian/running

