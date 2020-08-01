execute if block ~ ~ ~ #real_timber:leaves run tag @s add real_timber_leave

function real_timber:scan/set_properties

execute if score $this_tree_type rt_tree_type matches 4 if score $blocks_scanned rt_scan_limit matches 40 run function real_timber:scan/set_as_medium_oak
execute if score $this_tree_type rt_tree_type matches 4 if score $blocks_scanned rt_scan_limit matches 60 run function real_timber:scan/set_as_big_oak

execute unless entity @s[tag=real_timber_leave] run function real_timber:scan/do_scan