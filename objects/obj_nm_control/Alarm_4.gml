if o==5
	o=0
else
	o++
with (instance_create_depth(animx[o], animy[o],-10,obj_anim_cw)){
	image_index = irandom_range(0,3)
}