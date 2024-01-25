var vobj,depht;
if (image_index == 28 || image_index == 29 || image_index == 30 || image_index == 31 || image_index == 32 || image_index == 33 || image_index == 34 || image_index == 35 || image_index == 36 || image_index == 37 || image_index == 38 || image_index == 39 || image_index == 40 || image_index == 41 || image_index == 42 || image_index == 43 || image_index == 47 || image_index == 48 || image_index == 49){
    vobj = obj_modelbgo
	depht = 280
}
else{
    vobj = obj_modelsolid
	depht = 5
}
with (instance_create_depth(x, y, depht, vobj))
{
    image_speed = 0
    sprite_index = other.sprite_index
    image_index = other.image_index
    if (object_index == obj_modelbgo)
        depth = 5
}

