/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_set_alpha(1)

draw_set_color(c_red)
draw_rectangle(hp_draw_x,hp_draw_y,hp_draw_x + hp_draw_w*(life_disp/life_max),hp_draw_y +hp_draw_h,false)

draw_set_color(c_yellow)
draw_rectangle(hp_draw_x,hp_draw_y,hp_draw_x + hp_draw_w*(life/life_max),hp_draw_y +hp_draw_h,false)


draw_set_color(c_white)
draw_rectangle(hp_draw_x,hp_draw_y,hp_draw_x + hp_draw_w,hp_draw_y +hp_draw_h,true)