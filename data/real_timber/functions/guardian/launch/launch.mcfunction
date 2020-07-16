execute if score @s rt_tree_type matches 1 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:oak_sapling"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}
execute if score @s rt_tree_type matches 2 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:dark_oak_sapling"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}
execute if score @s rt_tree_type matches 3 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:birch_sapling"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}
execute if score @s rt_tree_type matches 4 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:spruce_sapling"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}
execute if score @s rt_tree_type matches 5 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:acacia_sapling"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}
execute if score @s rt_tree_type matches 6 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:jungle_sapling"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}

execute if score @s rt_tree_type matches 7 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:crimson_fungus"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}
execute if score @s rt_tree_type matches 8 as @s align y run summon armor_stand ^ ^4 ^ {Invisible:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:warped_fungus"},Time:1,DropItem:0,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:5,}],Tags:[edta_real_timber,launch], Motion:[0.0,0.0,0.0]}


execute as @e[tag=launch,limit=1,sort=nearest] at @s rotated as @e[type=armor_stand,tag=edta_real_timber,tag=guardian,tag=center,limit=1,sort=nearest] run function real_timber:guardian/launch/dolaunch

schedule function real_timber:guardian/launch/sched_launch 1

