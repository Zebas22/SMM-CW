if (instance_exists(obj_mario) && obj_mario.x > (x - 184) && obj_mario.x < (x + 184))
{
        with (instance_create(x, y, obj_bowserjr))
        {
            firehitpoints = other.firehitpoints
            hitpoints = other.hitpoints
            wings = other.wings
            key = other.key
        }
        instance_destroy()
}
else
{
    charge = 1
    alarm[0] = 120
}

