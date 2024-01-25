if e==5
	e=0
else
	e++
with (instance_create_depth(animx[e], animy[e],-10,obj_anim_cw)){
	image_index = irandom_range(0,3)
}