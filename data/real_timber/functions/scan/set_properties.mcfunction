function real_timber:scan/set_id
scoreboard players add $blocks_scanned rt_scan_limit 1
execute as @a[distance=..200] if score @s rt_build_id = $id_pool rt_build_id run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
loot replace entity @s[tag=!center] armor.head mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:silk_touch,lvl:1}]}
data modify entity @s ArmorItems[3] merge value {tag:{CustomModelData:5420166}}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[edta_real_timber, block_scanned],Duration:2}
setblock ~ ~ ~ air replace
scoreboard players operation @s rt_parent_id = $parent_id rt_part_id
scoreboard players operation @s rt_build_side = $coming_from_side rt_build_side

