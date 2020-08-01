scoreboard players operation $max_z_div rt_scan_limit = $max_x_div rt_scan_limit

scoreboard players set $min_x_div rt_scan_limit 0
scoreboard players set $min_z_div rt_scan_limit 0
scoreboard players operation $min_x_div rt_scan_limit -= $max_x_div rt_scan_limit
scoreboard players operation $min_z_div rt_scan_limit -= $max_z_div rt_scan_limit