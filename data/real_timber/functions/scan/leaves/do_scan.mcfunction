scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 5
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~ ~1 ~ if block ~ ~ ~ #real_timber:leaves unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/scan

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 6
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~ ~-1 ~ if block ~ ~ ~ #real_timber:leaves unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/scan

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 1
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~1 ~ ~ if block ~ ~ ~ #real_timber:leaves unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/scan_xpos

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 2
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~-1 ~ ~ if block ~ ~ ~ #real_timber:leaves unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/scan_xneg

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 3
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~ ~ ~1 if block ~ ~ ~ #real_timber:leaves unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/scan_zpos

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
scoreboard players set $coming_from_side rt_build_side 4
execute unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~ ~ ~-1 if block ~ ~ ~ #real_timber:leaves unless entity @e[type=minecraft:area_effect_cloud,tag=edta_real_timber,tag=block_scanned,distance=..0.5] unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/scan_zneg

#nether trees can have some blocks that are connected only diagonally downwards
execute if score $this_tree_type rt_tree_type matches 7..8 unless score $blocks_scanned rt_scan_limit = $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit run function real_timber:scan/leaves/do_scan_diag_down

execute if score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit unless score $blocks_scanned rt_scan_limit > $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit as @a if score @s rt_build_id = $id_pool rt_build_id run function real_timber:scan/leaves/harvest/harvest_all