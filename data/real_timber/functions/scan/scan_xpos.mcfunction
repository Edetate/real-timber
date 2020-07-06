scoreboard players add $current_x_div rt_scan_limit 1
execute unless score $current_x_div rt_scan_limit > $max_x_div rt_scan_limit run function real_timber:scan/scan
scoreboard players remove $current_x_div rt_scan_limit 1