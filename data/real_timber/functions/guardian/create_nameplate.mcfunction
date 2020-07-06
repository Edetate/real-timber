execute positioned ~ ~ ~1 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1b,Silent:1b,Invulnerable:1b,Tags:[edta_real_timber,guardian,nameplate],Invisible:1b,DisabledSlots:2039583,CustomName:"{\"text\":\"Spirit Tree\",\"color\":\"dark_green\",\"bold\":\"true\"}",CustomNameVisible:1b}

scoreboard players operation $parent_id rt_part_id = @s rt_part_id
execute as @e[type=armor_stand,tag=edta_real_timber,tag=!idgiven,limit=1] at @s run function real_timber:guardian/set_name_properties