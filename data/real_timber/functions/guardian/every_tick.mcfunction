scoreboard players add @s rt_timer 1
execute if score @s rt_timer matches 5.. run function real_timber:guardian/every_5_ticks
execute unless score $DO_DEADLY_EFFECTS rt_boolean matches 2 as @a[distance=..1,nbt=!{Health:0.0f}] run function real_timber:guardian/player_step
execute unless entity @a[tag=guardian_target,distance=0..60,nbt=!{Health:0.0f}] run function real_timber:guardian/start_dying
execute at @s if predicate real_timber:deadly_magma run function real_timber:guardian/fiery_death

#setblock ~ ~-0.7 ~ white_wool