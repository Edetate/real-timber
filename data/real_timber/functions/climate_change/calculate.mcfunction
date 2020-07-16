scoreboard players operation $rt_prev_climate_factor rt_climat_factor = $rt_climate_factor rt_climat_factor

execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_oak_sapl
execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_darkoak_sapl
execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_birch_sapl
execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_spruce_sapl
execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_acacia_sapl
execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_jungle_sapl

execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_warp_fungus
execute as @a run scoreboard players operation $rt_climate_factor rt_climat_factor -= @s rt_crim_fungus

scoreboard players set @a rt_oak_sapl 0
scoreboard players set @a rt_darkoak_sapl 0
scoreboard players set @a rt_birch_sapl 0
scoreboard players set @a rt_spruce_sapl 0
scoreboard players set @a rt_acacia_sapl 0
scoreboard players set @a rt_jungle_sapl 0

scoreboard players set @a rt_warp_fungus 0
scoreboard players set @a rt_crim_fungus 0

scoreboard players add $rt_climate_factor rt_climat_factor 1

execute if score $rt_climate_factor rt_climat_factor matches ..-1 run scoreboard players set $rt_climate_factor rt_climat_factor 0

execute if score $rt_prev_climate_factor rt_climat_factor matches 100.. if score $rt_climate_factor rt_climat_factor < $rt_prev_climate_factor rt_climat_factor if predicate real_timber:50percentchance run tellraw @s [{"text":"Those freshly planted trees already seem to improve the global warming situation!","color":"gold"},{"text":" [?]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:climate_change/get_temperature"}}]

execute if score $rt_climate_factor rt_climat_factor matches 100..250 if score $rt_climate_factor rt_climat_factor > $rt_prev_climate_factor rt_climat_factor if predicate real_timber:10percentchance run tellraw @s [{"text":"Hmmm, is it getting warmer?","color":"gold"},{"text":" [?]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:climate_change/get_temperature"}}]
execute if score $rt_climate_factor rt_climat_factor matches 251..500 if predicate real_timber:30percentchance run tellraw @s [{"text":"It really seems to be warmer than it should be, this time of the year. And where are all the trees?","color":"gold"},{"text":" [?]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:climate_change/get_temperature"}}]
execute if score $rt_climate_factor rt_climat_factor matches 501.. if predicate real_timber:30percentchance run tellraw @s [{"text":"It's so hot!! Maybe we were a bit careless and should have planted more trees.","color":"gold"},{"text":" [?]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function real_timber:climate_change/get_temperature"}}]

execute if score $rt_climate_factor rt_climat_factor matches 120..250 if predicate real_timber:10percentchance run summon minecraft:small_fireball ~ ~1 ~ {Motion:[0.0d,-1.0d,0.0d]}
execute if score $rt_climate_factor rt_climat_factor matches 251..500 if predicate real_timber:30percentchance run summon minecraft:small_fireball ~ ~1 ~ {Motion:[0.0d,-1.0d,0.0d]}
execute if score $rt_climate_factor rt_climat_factor matches 501.. if predicate real_timber:90percentchance run summon minecraft:small_fireball ~ ~1 ~ {Motion:[0.0d,-1.0d,0.0d]}
