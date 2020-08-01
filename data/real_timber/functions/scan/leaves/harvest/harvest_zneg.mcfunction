scoreboard players remove $current_z_div rt_scan_limit 1
execute unless score $current_z_div rt_scan_limit < $min_z_div rt_scan_limit run function real_timber:scan/leaves/harvest/harvest_all
scoreboard players add $current_z_div rt_scan_limit 1