#default scan width is 2
execute run scoreboard players set $max_x_div rt_scan_limit 2
#acacia
execute if score $this_tree_type rt_tree_type matches 5 run scoreboard players set $max_x_div rt_scan_limit 7
#spruce
execute if score $this_tree_type rt_tree_type matches 1 run scoreboard players set $max_x_div rt_scan_limit 4
#dark oak
execute if score $this_tree_type rt_tree_type matches 3 run scoreboard players set $max_x_div rt_scan_limit 6
#nether trees and jungle trees
execute if score $this_tree_type rt_tree_type matches 6..8 run scoreboard players set $max_x_div rt_scan_limit 3
#broad jungle
execute if score $this_tree_type rt_tree_type matches 6 if predicate real_timber:broad_tree run scoreboard players set $max_x_div rt_scan_limit 8
#broad spruce
execute if score $this_tree_type rt_tree_type matches 1 if predicate real_timber:broad_tree run scoreboard players set $max_x_div rt_scan_limit 5

function real_timber:scan/set_scan_width

execute unless score $CLIMATE_CHANGE rt_boolean matches 2 at @s run function real_timber:climate_change/calculate

scoreboard players set $blocks_scanned rt_scan_limit 0
scoreboard players add $id_pool rt_build_id 1
scoreboard players operation @s rt_build_id = $id_pool rt_build_id
scoreboard players reset $parent_id rt_part_id
scoreboard players set $current_x_div rt_scan_limit 0
scoreboard players set $current_z_div rt_scan_limit 0

summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:0b,Silent:1b,Invulnerable:1b,Tags:[edta_real_timber,center],Invisible:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.01f,0.01f,0.01f]},DisabledSlots:2039583}

data modify entity @e[type=armor_stand,tag=edta_real_timber,tag=!idgiven,tag=center,limit=1] ArmorItems[3] set from entity @e[type=minecraft:item,sort=nearest,limit=1] Item
execute as @e[type=armor_stand,tag=edta_real_timber,tag=!idgiven,tag=center,limit=1] at @s run function real_timber:scan/start_scan

execute unless score $SCAN_ALL_LEAVES rt_boolean matches 2 as @e[type=armor_stand,tag=edta_real_timber,tag=real_timber_leave,sort=furthest] at @s run function real_timber:scan/leaves/do_scan
#for nether trees we always want the 'leaves' gone since they don't despawn
execute if score $SCAN_ALL_LEAVES rt_boolean matches 2 if score $this_tree_type rt_tree_type matches 7..8 as @e[type=armor_stand,tag=edta_real_timber,tag=real_timber_leave,sort=furthest] at @s run function real_timber:scan/leaves/do_scan

execute as @e[type=armor_stand,tag=edta_real_timber,tag=center,tag=!falling] if score @s rt_build_id = $id_pool rt_build_id at @s run function real_timber:fall/start_falling

execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 2..50 run effect give @s minecraft:hunger 1 40
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 51..100 run effect give @s minecraft:hunger 1 80
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 101..160 run effect give @s minecraft:hunger 1 200
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 160..500 run effect give @s minecraft:hunger 2 200
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 501.. run effect give @s minecraft:hunger 5 255

execute if data entity @s SelectedItem.tag.autoPlant run function real_timber:autoplant/init_autoplant