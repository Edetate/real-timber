scoreboard players remove $current_x_div rt_scan_limit 1
scoreboard players add $current_z_div rt_scan_limit 1
execute unless score $current_x_div rt_scan_limit < $min_x_div rt_scan_limit unless score $current_z_div rt_scan_limit > $max_z_div rt_scan_limit run function real_timber:scan/scan
scoreboard players add $current_x_div rt_scan_limit 1
scoreboard players remove $current_z_div rt_scan_limit 1
