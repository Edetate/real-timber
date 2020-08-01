loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air replace
scoreboard players add $blocks_scanned rt_scan_limit 1

execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~ ~1 if block ~ ~ ~ #real_timber:leaves unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/harvest/harvest_zpos
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~ ~-1 if block ~ ~ ~ #real_timber:leaves unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/harvest/harvest_zneg
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~1 ~ if block ~ ~ ~ #real_timber:leaves unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/harvest/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~ ~-1 ~ if block ~ ~ ~ #real_timber:leaves unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/harvest/harvest_all
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~1 ~ ~ if block ~ ~ ~ #real_timber:leaves unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/harvest/harvest_xpos
execute unless score $blocks_scanned rt_scan_limit >= $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit positioned ~-1 ~ ~ if block ~ ~ ~ #real_timber:leaves unless block ~ ~ ~ #minecraft:leaves[persistent=true] unless predicate real_timber:next_to_log run function real_timber:scan/leaves/harvest/harvest_xneg

execute if score $this_tree_type rt_tree_type matches 7..8 run function real_timber:scan/leaves/harvest/harvest_all_diag