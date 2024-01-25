var anim;
if (image_speed == 0)
    anim = image_index
else
    anim = obj_levelmanager.banim
draw_sprite_ext(sprite_index, anim, x, y, 1, 1, 0, c_white, 1)
