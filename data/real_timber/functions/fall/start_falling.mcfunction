scoreboard players set @s rt_timer 60
tag @s add falling
execute unless score $DO_SPIRITS rt_boolean matches 2 if predicate real_timber:1percentchance if score $blocks_scanned rt_scan_limit <= $MAX_NUMBER_OF_BLOCKS_ANIMATED rt_scan_limit positioned ~ ~8 ~ if entity @e[type=armor_stand,tag=edta_real_timber,distance=..1] at @s run function real_timber:guardian/init_guardian
execute if entity @s[tag=falling] run function real_timber:fall/fall

