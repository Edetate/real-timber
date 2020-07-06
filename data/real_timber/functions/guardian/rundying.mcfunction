execute as @e[type=armor_stand,tag=edta_real_timber,tag=guardian,tag=center,tag=dying] at @s rotated as @s run function real_timber:guardian/dying

execute if entity @e[type=armor_stand,tag=edta_real_timber,tag=guardian,tag=center,tag=dying] run schedule function real_timber:guardian/rundying 5
