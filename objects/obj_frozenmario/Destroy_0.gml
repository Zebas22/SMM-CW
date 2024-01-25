if ((!instance_exists(obj_mario)) && obj_levelmanager.editor == 0)
{
    mario2 = obj_mario
    with (instance_create(x, y, mario2))
    {
        direct = other.direct
        helmet = other.helmet
        event_user(0)
    }
}


