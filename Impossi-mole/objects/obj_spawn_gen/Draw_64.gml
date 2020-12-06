draw_set_color(c_red)
draw_rectangle(x-range_inner_x, y-range_inner_y, x+range_inner_x, y+range_inner_y, true)
draw_set_color(c_blue)
draw_rectangle(x-range_outer_x, y-range_outer_y, x+range_outer_x, y+range_outer_y, true)

show_debug_message(string(x)+","+string(y))