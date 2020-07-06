scoreboard players set $blocks_scanned rt_scan_limit 0
scoreboard players add $id_pool rt_build_id 1
scoreboard players operation @s rt_build_id = $id_pool rt_build_id
scoreboard players reset $parent_id rt_part_id
scoreboard players set $current_x_div rt_scan_limit 0
scoreboard players set $current_z_div rt_scan_limit 0

summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:0b,Silent:1b,Invulnerable:1b,Tags:[edta_real_timber,center],Invisible:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.01f,0.01f,0.01f]},DisabledSlots:2039583}

data modify entity @e[type=armor_stand,tag=edta_real_timber,tag=!idgiven,tag=center,limit=1] ArmorItems[3] set from entity @e[type=minecraft:item,sort=nearest,limit=1] Item
execute as @e[type=armor_stand,tag=edta_real_timber,tag=!idgiven,tag=center,limit=1] at @s run function real_timber:scan/do_scan

execute as @e[type=armor_stand,tag=edta_real_timber,tag=center,tag=!falling] if score @s rt_build_id = $id_pool rt_build_id at @s run function real_timber:fall/start_falling

execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 2..50 run effect give @s minecraft:hunger 1 40
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 51..100 run effect give @s minecraft:hunger 1 80
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 101..160 run effect give @s minecraft:hunger 1 200
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 160..500 run effect give @s minecraft:hunger 2 200
execute unless score $TAKE_HUNGER rt_boolean matches 2 if score $blocks_scanned rt_scan_limit matches 501.. run effect give @s minecraft:hunger 5 255