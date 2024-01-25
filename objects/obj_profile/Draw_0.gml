draw_self()
draw_set_font(global.font_google)
if (global.jugador == 0)
	draw_sprite(spr_mario_small_idle,0, x+15, y- 7)
else if (global.jugador == 1)
	draw_sprite(spr_luigi_small_idle,0, x+15, y- 7)
else if (global.jugador == 2)
	draw_sprite(spr_toad_small_idle,0, x+15, y- 7)
else if (global.jugador == 3)
	draw_sprite(spr_toadette_small_idle,0, x+15, y- 7)
draw_set_color(c_black)
draw_text(x+30, y+4, string_hash_to_newline(global.my1))
draw_set_color(c_gray)
if (global.my1 == 0 || global.my2 == 0 || global.my3 == -1 || global.my4 == -1 || global.my5 == 0 || global.my6 == -1)
{
           draw_text(x+30, y+12, "Offline")
}
        else
        {
           draw_text(x+30, y+12, "Online")
        }
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 2)
}
