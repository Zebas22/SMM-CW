if (hardness < 2 && other.inmune == 0)
{
    event_user(15)
    cooldown = 6
    firehitpoints -= 5
    if (firehitpoints <= 0)
    {
        if (object_index == obj_bowserjr || object_index == obj_NSMBU_bowserjr)
        {
            firehitpoints = 5
            event_user(1)
        }
        else if (object_index == obj_boomboom || object_index == obj_NSMBU_boomboom)
        {
            firehitpoints = 10
            event_user(1)
        }
        else
            event_user(0)
    }
    with (other.id)
        event_user(0)
}

