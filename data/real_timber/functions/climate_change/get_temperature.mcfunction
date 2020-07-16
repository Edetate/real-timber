scoreboard players operation $rt_temperature rt_climat_factor = $rt_climate_factor rt_climat_factor
scoreboard players set $100 rt_constants 100

scoreboard players operation $rt_temperature rt_climat_factor /= $100 rt_constants

tellraw @s [{"text":"Current temperature is ","color":"gold"},{"score":{"name":"$rt_temperature","objective":"rt_climat_factor"},"bold":true,"color":"gold"},{"text":"°C","bold":true,"color":"gold"},{"text":" warmer than it should be. Plant new saplings / fungi if you want to lower it.","color":"gold"}]

execute store result storage edta_rt_storage gr_cmd_fb byte 1 run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function real_timber:options/restore_gamerule 1