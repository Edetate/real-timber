#1=left(pos-x, 2=right(neg-x), 3=front(pos-z), 4=back(neg-z), 5=up, 6=down
execute if score @s rt_build_side matches 7 run tp ^1 ^1 ^
execute if score @s rt_build_side matches 8 run tp ^-1 ^1 ^
execute if score @s rt_build_side matches 9 run tp ^ ^1 ^1
execute if score @s rt_build_side matches 10 run tp ^ ^1 ^-1
execute if score @s rt_build_side matches 11 run tp ^1 ^1 ^1
execute if score @s rt_build_side matches 12 run tp ^-1 ^1 ^1
execute if score @s rt_build_side matches 13 run tp ^1 ^1 ^-1
execute if score @s rt_build_side matches 14 run tp ^-1 ^1 ^-1
