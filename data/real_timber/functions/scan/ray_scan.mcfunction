execute if predicate real_timber:choppable_tree positioned ~ ~ ~ align xyz positioned ~0.5 ~0.12 ~0.5 run function real_timber:scan/init_scan
scoreboard players add $ray_scan rt_scan_limit 1
execute unless score $ray_scan rt_scan_limit matches 16.. unless predicate real_timber:choppable_tree positioned ^ ^ ^0.33 run function real_timber:scan/ray_scan
