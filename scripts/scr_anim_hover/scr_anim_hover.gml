
	    var xx = argument0
	    var yy = argument1
	    var anim = argument2
	    var pos = argument3
	    draw_sprite_ext(spr_nm_buttons_hover, anim, xx, yy, 1, 1, 0, c_white, 1)
	    draw_sprite_ext(spr_nm_buttons_hover, anim, (xx + sprite_width), yy, 1, 1, 270, c_white, 1)
	    draw_sprite_ext(spr_nm_buttons_hover, anim, xx, (yy + (sprite_height - pos)), 1, 1, 90, c_white, 1)
	    draw_sprite_ext(spr_nm_buttons_hover, anim, (xx + sprite_width), (yy + (sprite_height - pos)), 1, 1, 180, c_white, 1)





