execute as @e[type=armor_stand,tag=edta_real_timber,tag=guardian] if score @s rt_build_id = $current_id rt_build_id run data merge entity @s {Fire:200s}

function real_timber:guardian/start_dying

playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 100
playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.01
playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.01
