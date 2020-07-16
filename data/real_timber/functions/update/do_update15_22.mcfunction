#1=left(pos-x, 2=right(neg-x), 3=front(pos-z), 4=back(neg-z), 5=up, 6=down
execute if score @s rt_build_side matches 15 run tp ^1 ^-1 ^
execute if score @s rt_build_side matches 16 run tp ^-1 ^-1 ^
execute if score @s rt_build_side matches 17 run tp ^ ^-1 ^1
execute if score @s rt_build_side matches 18 run tp ^ ^-1 ^-1
execute if score @s rt_build_side matches 19 run tp ^1 ^-1 ^1
execute if score @s rt_build_side matches 20 run tp ^-1 ^-1 ^1
execute if score @s rt_build_side matches 21 run tp ^1 ^-1 ^-1
execute if score @s rt_build_side matches 22 run tp ^-1 ^-1 ^-1
