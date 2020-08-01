loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air replace
scoreboard players add $blocks_scanned rt_scan_limit 1

execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:logs run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:logs run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:logs run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:logs run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:logs run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:logs run function real_timber:scan/harvest_all

execute if score $this_tree_type rt_tree_type matches 4..6 run function real_timber:scan/harvest_all_diag