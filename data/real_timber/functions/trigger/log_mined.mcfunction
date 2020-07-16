execute if score @s rt_oak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 1
execute if score @s rt_strip_oak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 1
execute if score @s rt_darkoak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 2
execute if score @s rt_strip_darkoak matches 1.. run scoreboard players set $this_tree_type rt_tree_type 2
execute if score @s rt_birch matches 1.. run scoreboard players set $this_tree_type rt_tree_type 3
execute if score @s rt_strip_birch matches 1.. run scoreboard players set $this_tree_type rt_tree_type 3
execute if score @s rt_spruce matches 1.. run scoreboard players set $this_tree_type rt_tree_type 4
execute if score @s rt_strip_spruce matches 1.. run scoreboard players set $this_tree_type rt_tree_type 4
execute if score @s rt_acacia matches 1.. run scoreboard players set $this_tree_type rt_tree_type 5
execute if score @s rt_strip_acacia matches 1.. run scoreboard players set $this_tree_type rt_tree_type 5
execute if score @s rt_jungle matches 1.. run scoreboard players set $this_tree_type rt_tree_type 6
execute if score @s rt_strip_jungle matches 1.. run scoreboard players set $this_tree_type rt_tree_type 6


execute if score @s rt_crim_stem matches 1.. run scoreboard players set $this_tree_type rt_tree_type 7
execute if score @s rt_strip_crim matches 1.. run scoreboard players set $this_tree_type rt_tree_type 7
execute if score @s rt_warp_stem matches 1.. run scoreboard players set $this_tree_type rt_tree_type 8
execute if score @s rt_strip_warp matches 1.. run scoreboard players set $this_tree_type rt_tree_type 8


scoreboard players set @s rt_oak 0
scoreboard players set @s rt_strip_oak 0
scoreboard players set @s rt_darkoak 0
scoreboard players set @s rt_strip_darkoak 0
scoreboard players set @s rt_birch 0
scoreboard players set @s rt_strip_birch 0
scoreboard players set @s rt_spruce 0
scoreboard players set @s rt_strip_spruce 0
scoreboard players set @s rt_acacia 0
scoreboard players set @s rt_strip_acacia 0
scoreboard players set @s rt_jungle 0
scoreboard players set @s rt_strip_jungle 0


scoreboard players set @s rt_crim_stem 0
scoreboard players set @s rt_strip_crim 0
scoreboard players set @s rt_warp_stem 0
scoreboard players set @s rt_strip_warp 0

scoreboard players set $ray_scan rt_scan_limit 0
scoreboard players operation @s rt_boolean = $REQUIRE_SNEAKING rt_boolean
execute if predicate real_timber:sneaking anchored eyes positioned ^ ^ ^1 run function real_timber:scan/ray_scan