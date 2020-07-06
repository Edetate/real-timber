execute store result storage edta_rt_storage gr_death_msg byte 1 run gamerule showDeathMessages
gamerule showDeathMessages false
kill @s
execute if data storage minecraft:edta_rt_storage {gr_death_msg:1b} run tellraw @a [{"selector":"@s"},{"text":" was stepped on by a tree."}]
execute if data storage minecraft:edta_rt_storage {gr_death_msg:1b} run gamerule showDeathMessages true