    repeat (2)
    {
        with (instance_create(x, y, obj_foo_fog))
        {
            motion_set(random(360), random_range(0.25, 0.5))
            scale = 0.5
        }
    }
    instance_destroy()