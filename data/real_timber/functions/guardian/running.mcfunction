execute as @e[type=armor_stand,tag=edta_real_timber,tag=guardian,tag=center,tag=!dying] at @s rotated as @s run function real_timber:guardian/every_tick

execute as @e[type=armor_stand,tag=edta_real_timber,tag=launched] at @s unless block ~ ~-2 ~ minecraft:air run kill @s
kill @e[type=armor_stand,tag=edta_real_timber,tag=launched,nbt={Motion:[0.0,0.0,0.0]}]

execute as @a[tag=guardian_target] at @s unless entity @e[type=armor_stand,tag=edta_real_timber,tag=guardian,tag=center,tag=!dying, distance=0..60] run tag @s remove guardian_target
execute as @a[tag=guardian_target,nbt={Health:0.0f}] run tag @s remove guardian_target

execute if entity @e[type=armor_stand,tag=edta_real_timber,tag=guardian,tag=center,tag=!dying] run schedule function real_timber:guardian/running 1

