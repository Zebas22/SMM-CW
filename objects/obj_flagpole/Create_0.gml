    image_speed = 0
    image_index = 0
check = 0
alarm[2] = 10
ready = 0
ready2 = 0
ready3 = 0
apariencia = global.apariencia
count[0] = snd_SMB_count
count_end[0] = snd_countend
if (!instance_exists(obj_SMB_flag))
{
	if (global.apariencia == 3)
		flag = instance_create((x - 12), (y + 9), obj_SMB_flag)
	else
		flag = instance_create((x - 12), (y + 16), obj_SMB_flag)
}
if (global.apariencia == 3)
{
	mysolid = instance_create(obj_ground3.x + 4, (obj_ground3.y - 16), obj_solid)
}
else
{
	mysolid = instance_create(obj_ground3.x, (obj_ground3.y - 16), obj_solid)
}
with (mysolid)
{
    sprite_index = spr_SMB_block_rock
    image_index = 0
    image_speed = 0
    visible = true
}