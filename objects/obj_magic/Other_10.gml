with (instance_create((x - 8), (y - 8), obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create((x - 8), (y + 8), obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create(x, y, obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create((x + 8), (y - 8), obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create((x + 8), (y + 8), obj_smoke))
    sprite_index = spr_boltspark_magic
instance_destroy()

