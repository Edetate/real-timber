execute if block ~ ~-0.2 ~ minecraft:air run tp @s ~ ~-0.2 ~

execute at @s if score @s rt_timer matches -10..30 run function real_timber:fall/fall_1_30
execute at @s if score @s rt_timer matches 31..80 run function real_timber:fall/fall_31_60

scoreboard players operation $this_id rt_build_id = @s rt_build_id
execute unless score $DO_DEADLY_EFFECTS rt_boolean matches 2 if score @s rt_timer matches 3..9 as @e[type=armor_stand,tag=edta_real_timber] if score @s rt_build_id = $this_id rt_build_id at @s run function real_timber:fall/player_squish_check