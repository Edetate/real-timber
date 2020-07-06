loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air replace
scoreboard players add $blocks_scanned rt_scan_limit 1

execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~ ~1 if block ~ ~ ~ #real_timber:tree unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~ ~-1 if block ~ ~ ~ #real_timber:tree unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~1 ~ if block ~ ~ ~ #real_timber:tree unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~-1 ~ if block ~ ~ ~ #real_timber:tree unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~1 ~ ~ if block ~ ~ ~ #real_timber:tree unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~-1 ~ ~ if block ~ ~ ~ #real_timber:tree unless block ~ ~ ~ #minecraft:leaves[persistent=true] run function real_timber:scan/harvest_all

execute if score $max_x_div rt_scan_limit matches 7.. run function real_timber:scan/harvest_all_diag