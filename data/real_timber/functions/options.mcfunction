
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   >> REAL TIMBER OPTIONS <<","color":"dark_green"}]
tellraw @s [{"text":" * [Set max blocks animated]","color":"dark_grey","bold":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit 200"}}]
tellraw @s [{"text":" * [Set max blocks harvested]","color":"dark_grey","bold":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $MAX_NUMBER_OF_BLOCKS_HARVESTED rt_scan_limit 800"}}]

execute if score $DO_DEADLY_EFFECTS rt_boolean matches 2 run tellraw @s [{"text":" * Deadly effects are OFF. Click to turn on.","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_deadly_on"}}]
execute unless score $DO_DEADLY_EFFECTS rt_boolean matches 2 run tellraw @s [{"text":" * Deadly effects are ON. Click to turn off.","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_deadly_off"}}]

execute if score $REQUIRE_SNEAKING rt_boolean matches 2 run tellraw @s [{"text":" * Sneaking is NOT required. Click to turn on.","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_sneaking_on"}}]
execute unless score $REQUIRE_SNEAKING rt_boolean matches 2 run tellraw @s [{"text":" * Sneaking is required. Click to turn off.","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_sneaking_off"}}]

execute if score $TAKE_HUNGER rt_boolean matches 2 run tellraw @s [{"text":" * Extra hunger cost is OFF. Click to turn on.","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_hunger_on"}}]
execute unless score $TAKE_HUNGER rt_boolean matches 2 run tellraw @s [{"text":" * Extra hunger cost is ON. Click to turn off.","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_hunger_off"}}]

execute if score $DO_SPIRITS rt_boolean matches 2 run tellraw @s [{"text":" * Spirits are OFF. Click to turn on.","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_spirits_on"}}]
execute unless score $DO_SPIRITS rt_boolean matches 2 run tellraw @s [{"text":" * Spirits are ON. Click to turn off.","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_spirits_off"}}]

execute if score $CLIMATE_CHANGE rt_boolean matches 2 run tellraw @s [{"text":" * Climate change is OFF. Click to turn on.","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_climate_on"}}]
execute unless score $CLIMATE_CHANGE rt_boolean matches 2 run tellraw @s [{"text":" * Climate change is ON. Click to turn off.","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:options/turn_climate_off"}}]

execute store result storage edta_rt_storage gr_cmd_fb byte 1 run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function real_timber:options/restore_gamerule 1