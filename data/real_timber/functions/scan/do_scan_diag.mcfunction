scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 7
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~1 ~1 ~ if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_xpos

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 8
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~-1 ~1 ~ if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_xneg

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 9
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~ ~1 ~1 if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_zpos

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 10
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~ ~1 ~-1 if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_zneg

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 11
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~1 ~1 ~1 if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_xposzpos

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 12
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~-1 ~1 ~1 if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_xnegzpos

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 13
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~1 ~1 ~-1 if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_xposzneg

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 14
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~-1 ~1 ~-1 if block ~ ~ ~ #real_timber:tree unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/scan_xnegzneg
