summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:0b,Silent:1b,Invisible:1b,Invulnerable:1b,Tags:[edta_real_timber],ArmorItems:[{},{},{},{}],Pose:{Head:[0.01f,0.01f,0.01f]},DisabledSlots:2039583}
execute as @e[type=armor_stand,tag=edta_real_timber,tag=!idgiven,limit=1] at @s run function real_timber:scan/leaves/start_scan