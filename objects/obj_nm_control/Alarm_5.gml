if i==5
	i=0
else
	i++
with (instance_create_depth(animx[i], animy[i],-10,obj_anim_cw)){
	image_index = irandom_range(0,3)
}
alarm[4] = 30
alarm[3] = 60
alarm[5] = 200