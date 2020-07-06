#1=left(pos-x, 2=right(neg-x), 3=front(pos-z), 4=back(neg-z), 5=up, 6=down
execute if score @s rt_build_side matches 1 run tp ^1 ^ ^
execute if score @s rt_build_side matches 2 run tp ^-1 ^ ^
execute if score @s rt_build_side matches 3 run tp ^ ^ ^1
