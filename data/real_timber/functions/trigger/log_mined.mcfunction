execute if predicate real_timber:log_mined_small_tree run scoreboard players set $max_x_div rt_scan_limit 3
execute if predicate real_timber:log_mined_broad_tree run scoreboard players set $max_x_div rt_scan_limit 8
scoreboard players operation $max_z_div rt_scan_limit = $max_x_div rt_scan_limit

scoreboard players set $min_x_div rt_scan_limit 0
scoreboard players set $min_z_div rt_scan_limit 0
scoreboard players operation $min_x_div rt_scan_limit -= $max_x_div rt_scan_limit
scoreboard players operation $min_z_div rt_scan_limit -= $max_z_div rt_scan_limit


execute if score @s rt_oak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 1
execute if score @s rt_strip_oak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 1
execute if score @s rt_spruce matches 1.. run scoreboard players set $this_tree_type rt_tree_type 2
execute if score @s rt_strip_spruce matches 1.. run scoreboard players set $this_tree_type rt_tree_type 2
execute if score @s rt_acacia matches 1.. run scoreboard players set $this_tree_type rt_tree_type 3
execute if score @s rt_strip_acacia matches 1.. run scoreboard players set $this_tree_type rt_tree_type 3
execute if score @s rt_birch matches 1.. run scoreboard players set $this_tree_type rt_tree_type 4
execute if score @s rt_strip_birch matches 1.. run scoreboard players set $this_tree_type rt_tree_type 4
execute if score @s rt_jungle matches 1.. run scoreboard players set $this_tree_type rt_tree_type 5
execute if score @s rt_strip_jungle matches 1.. run scoreboard players set $this_tree_type rt_tree_type 5
execute if score @s rt_darkoak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 6
execute if score @s rt_strip_darkoak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 6


scoreboard players set @s rt_oak 0
scoreboard players set @s rt_strip_oak 0
scoreboard players set @s rt_spruce 0
scoreboard players set @s rt_strip_spruce 0
scoreboard players set @s rt_acacia 0
scoreboard players set @s rt_strip_acacia 0
scoreboard players set @s rt_birch 0
scoreboard players set @s rt_strip_birch 0
scoreboard players set @s rt_jungle 0
scoreboard players set @s rt_strip_jungle 0
scoreboard players set @s rt_darkoak 0
scoreboard players set @s rt_strip_darkoak 0

scoreboard players set $ray_scan rt_scan_limit 0
scoreboard players operation @s rt_boolean = $REQUIRE_SNEAKING rt_boolean
execute if predicate real_timber:sneaking anchored eyes positioned ^ ^ ^1 run function real_timber:scan/ray_scan