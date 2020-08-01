execute if block ~ ~ ~ #real_timber:leaves run tag @s add real_timber_leave

function real_timber:scan/set_properties

execute unless entity @s[tag=real_timber_leave] run function real_timber:scan/do_scan