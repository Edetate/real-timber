#1=left(pos-x, 2=right(neg-x), 3=front(pos-z), 4=back(neg-z), 5=up, 6=down, 7-14=diagonals
execute if score @s rt_build_side matches 1..3 run function real_timber:update/do_update1_3
execute if score @s rt_build_side matches 4..6 run function real_timber:update/do_update4_6
execute if score @s rt_build_side matches 7..14 run function real_timber:update/do_update7_14
execute if score @s rt_build_side matches 15..22 run function real_timber:update/do_update15_22
function real_timber:update/update_position
