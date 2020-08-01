scoreboard objectives add rt_part_id dummy
scoreboard objectives add rt_parent_id dummy
scoreboard objectives add rt_build_side dummy
scoreboard objectives add rt_build_id dummy
scoreboard objectives add rt_timer dummy
scoreboard objectives add rt_timer2 dummy
scoreboard objectives add rt_scan_limit dummy
scoreboard objectives add rt_boolean dummy
scoreboard objectives add rt_constants dummy
scoreboard objectives add rt_tree_type dummy
scoreboard objectives add rt_oak minecraft.mined:minecraft.oak_log
scoreboard objectives add rt_strip_oak minecraft.mined:minecraft.stripped_oak_log
scoreboard objectives add rt_darkoak minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add rt_strip_darkoak minecraft.mined:minecraft.stripped_dark_oak_log
scoreboard objectives add rt_birch minecraft.mined:minecraft.birch_log
scoreboard objectives add rt_strip_birch minecraft.mined:minecraft.stripped_birch_log
scoreboard objectives add rt_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add rt_strip_spruce minecraft.mined:minecraft.stripped_spruce_log
scoreboard objectives add rt_acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add rt_strip_acacia minecraft.mined:minecraft.stripped_acacia_log
scoreboard objectives add rt_jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add rt_strip_jungle minecraft.mined:minecraft.stripped_jungle_log


scoreboard objectives add rt_oak_sapl minecraft.used:minecraft.oak_sapling
scoreboard objectives add rt_darkoak_sapl minecraft.used:minecraft.dark_oak_sapling
scoreboard objectives add rt_birch_sapl minecraft.used:minecraft.birch_sapling
scoreboard objectives add rt_spruce_sapl minecraft.used:minecraft.spruce_sapling
scoreboard objectives add rt_acacia_sapl minecraft.used:minecraft.acacia_sapling
scoreboard objectives add rt_jungle_sapl minecraft.used:minecraft.jungle_sapling

scoreboard objectives add rt_climat_factor dummy

function real_timber:init_1_16

scoreboard objectives add rt_x dummy
scoreboard objectives add rt_y dummy
scoreboard objectives add rt_z dummy
scoreboard objectives add rt_dx dummy
scoreboard objectives add rt_dy dummy
scoreboard objectives add rt_dz dummy
data merge storage edta_rt_storage {launchMotion:[0.0,0.0,0.0]}

tellraw @a [{"text":"EDTA's Real Timber datapack loaded. Beta v0.5. To use: hold sneak while cutting a tree.","color":"dark_green"},{"text":"  [Options]","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options"}}]

#set the maximum amount of blocks in a build below. 200 still works fluently on my computer for 1 build, but more becomes choppy
execute unless score $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit matches 1.. run scoreboard players set $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit 200
execute unless score $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit matches 1.. run scoreboard players set $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit 800

#for the booleans: 1 is true, 2 is false
execute unless score $DO_DEADLY_EFFECTS rt_boolean matches 1.. run scoreboard players set $DO_DEADLY_EFFECTS rt_boolean 1
execute unless score $REQUIRE_SNEAKING rt_boolean matches 1.. run scoreboard players set $REQUIRE_SNEAKING rt_boolean 1
execute unless score $TAKE_HUNGER rt_boolean matches 1.. run scoreboard players set $TAKE_HUNGER rt_boolean 1
execute unless score $DO_SPIRITS rt_boolean matches 1.. run scoreboard players set $DO_SPIRITS rt_boolean 1
execute unless score $CLIMATE_CHANGE rt_boolean matches 1.. run scoreboard players set $CLIMATE_CHANGE rt_boolean 1
execute unless score $SCAN_ALL_LEAVES rt_boolean matches 1.. run scoreboard players set $SCAN_ALL_LEAVES rt_boolean 1

#maxCommandChainLength should be at least $MAX_NUMBER_OF_BLOCKS_ANIMATED * 50
gamerule maxCommandChainLength 70000