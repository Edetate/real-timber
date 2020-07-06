execute as @e[type=armor_stand,tag=edta_real_timber,tag=falling] at @s run function real_timber:fall/fall_base

scoreboard players remove @e[type=armor_stand,tag=edta_real_timber,tag=falling] rt_timer 1

execute as @e[type=armor_stand,tag=edta_real_timber,tag=falling] at @s run function real_timber:update/update_position

execute as @e[type=armor_stand,tag=edta_real_timber,tag=falling,scores={rt_timer=-30}] run function real_timber:fall/kill

execute if entity @e[type=armor_stand,tag=edta_real_timber,tag=falling] run schedule function real_timber:fall/fall 1
