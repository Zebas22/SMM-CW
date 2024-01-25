if (sprite_index == s_charginchuck_damage) && (global.apariencia != 3)
{
    sprite_index = s_charginchuck
    image_speed = 0
    alarm[10] = 60
}
else if (sprite_index == s_charginchuck_damage) && (global.apariencia == 3)
{
    sprite_index = s_charginchuck_damage_recover
	vspeed = -5
}
else if (sprite_index == s_charginchuck_damage_recover) && (global.apariencia == 3)
{
	sprite_index = s_charginchuck_walk
    alarm[10] = 25
}